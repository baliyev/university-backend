package az.edu.asoiu.mapper;

import az.edu.asoiu.dto.dto.FacultyResp;
import az.edu.asoiu.dto.req.CreateFacultyReq;
import az.edu.asoiu.dto.req.CreateUserReq;
import az.edu.asoiu.dto.req.UpdateUserReq;
import az.edu.asoiu.entity.FacultyEntity;
import az.edu.asoiu.entity.UserEntity;
import org.mapstruct.Mapper;
import org.mapstruct.MappingTarget;
import org.mapstruct.ReportingPolicy;

import static org.mapstruct.InjectionStrategy.CONSTRUCTOR;
import static org.mapstruct.NullValuePropertyMappingStrategy.IGNORE;

@Mapper(componentModel = "spring",
        injectionStrategy = CONSTRUCTOR,
        unmappedTargetPolicy = ReportingPolicy.IGNORE,
        nullValuePropertyMappingStrategy = IGNORE,
        uses = MapperHelper.class)
public interface SourceDestinationMapper {

    UserEntity mapCreateUserReq2Entity(CreateUserReq request);

    void updateUserReq2Entity(UpdateUserReq request, @MappingTarget UserEntity user);

    FacultyResp mapFacultyEntity2Dto(FacultyEntity facultyEntity);

    FacultyEntity mapCreateFacultyReq2Entity(CreateFacultyReq req);
}