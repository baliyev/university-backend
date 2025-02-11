package az.edu.asoiu.service;

import az.edu.asoiu.dto.dto.FacultyResp;
import az.edu.asoiu.dto.req.CreateFacultyReq;
import az.edu.asoiu.entity.FacultyEntity;
import az.edu.asoiu.exception.classes.RecordNotFoundException;
import az.edu.asoiu.mapper.SourceDestinationMapper;
import az.edu.asoiu.repository.FacultyRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

import static az.edu.asoiu.util.Constants.RECORD_NOT_FOUND_MSG;

@Service
@RequiredArgsConstructor
public class FacultyService {
    private final FacultyRepository repository;
    private final SourceDestinationMapper mapper;

    public FacultyEntity getById(Long id) {
        return repository.findById(id).orElseThrow(() -> new RecordNotFoundException(RECORD_NOT_FOUND_MSG));
    }

    public List<FacultyResp> findAll() {
        return repository.findAll().stream().map(mapper::mapFacultyEntity2Dto).toList();
    }

    public FacultyResp create(CreateFacultyReq request) {
        var entity = repository.save(mapper.mapCreateFacultyReq2Entity(request));
        return mapper.mapFacultyEntity2Dto(entity);
    }

    public FacultyResp deactivate(Long id) {
        var entity = getById(id);
        entity.setStatus(0);
        return mapper.mapFacultyEntity2Dto(repository.save(entity));
    }
}
