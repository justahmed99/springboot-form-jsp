package id.salt.identityform.utils.converter;

import id.salt.identityform.dto.Identity;
import id.salt.identityform.entity.IdentityEntity;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.text.SimpleDateFormat;

@Component
public class IdentityConverter {
    public IdentityEntity convertIdentityDTOtoIdentityEntity(Identity dto) {
        try {
            IdentityEntity entity = new IdentityEntity();

            entity.setNama(dto.getName());
            entity.setAlamat(dto.getAddress());
            entity.setKota(dto.getCity());
            entity.setProvinsi(dto.getProvince());
            SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
            entity.setTglRegistrasi(sdf.parse(dto.getRegisterDate()));
            entity.setStatus(dto.getStatus());
            return entity;
        } catch (ParseException e) {
            throw new RuntimeException(e);
        }
    }
}
