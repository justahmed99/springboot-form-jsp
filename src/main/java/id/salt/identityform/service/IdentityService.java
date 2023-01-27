package id.salt.identityform.service;

import id.salt.identityform.dto.Identity;
import id.salt.identityform.entity.IdentityEntity;
import id.salt.identityform.repository.IdentityRepository;
import id.salt.identityform.utils.converter.IdentityConverter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IdentityService {
    private final IdentityRepository identityRepository;
    private final IdentityConverter converter;

    @Autowired
    public IdentityService(
            IdentityRepository identityRepository,
            IdentityConverter converter
    ) {
        this.identityRepository = identityRepository;
        this.converter = converter;
    }

    public void saveIdentity(Identity request) {
        IdentityEntity entity = converter.convertIdentityDTOtoIdentityEntity(request);
        identityRepository.save(entity);
    }

    public List<IdentityEntity> findAll() {
        return identityRepository.findAll();
    }
}
