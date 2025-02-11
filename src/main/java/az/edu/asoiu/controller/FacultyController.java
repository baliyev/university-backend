package az.edu.asoiu.controller;

import az.edu.asoiu.dto.dto.FacultyResp;
import az.edu.asoiu.dto.req.CreateFacultyReq;
import az.edu.asoiu.dto.shared.RestResponse;
import az.edu.asoiu.service.FacultyService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static org.springframework.http.HttpStatus.CREATED;
import static org.springframework.util.MimeTypeUtils.APPLICATION_JSON_VALUE;

@Validated
@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/api/v1/faculties", produces = APPLICATION_JSON_VALUE)
@Tag(name = "FACULTY", description = "Faculty management APIs")
public class FacultyController {
    private final FacultyService service;

    @GetMapping
    @PreAuthorize("hasAnyRole('USER')")
    @Operation(
            method = "GET",
            summary = "Get all faculties.",
            description = "Retrieve faculties information."
    )
    public ResponseEntity<RestResponse<List<FacultyResp>>> getAll() {
        return ResponseEntity.ok(RestResponse.of(service.findAll()));
    }

    @PreAuthorize("hasAnyRole('ADMIN','MODERATOR')")
    @PostMapping(consumes = APPLICATION_JSON_VALUE)
    @Operation(
            method = "POST",
            summary = "Create a faculty",
            description = "Register a new faculty with the provided details."
    )
    public ResponseEntity<RestResponse<FacultyResp>> createUser(@RequestBody @Valid CreateFacultyReq request) {
        return ResponseEntity.status(CREATED).body(RestResponse.of(service.create(request), CREATED));
    }


    @PreAuthorize("hasAnyRole('ADMIN')")
    @DeleteMapping( value = "/{faculty-id}", consumes = APPLICATION_JSON_VALUE)
    @Operation(
            method = "DELETE",
            summary = "Delete a faculty",
            description = "Deactivate a faculty with the provided details."
    )
    public ResponseEntity<RestResponse<FacultyResp>> createUser(@PathVariable("faculty-id") Long id) {
        return ResponseEntity.status(CREATED).body(RestResponse.of(service.deactivate(id), CREATED));
    }
}
