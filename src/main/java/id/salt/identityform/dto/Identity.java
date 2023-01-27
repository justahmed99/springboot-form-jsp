package id.salt.identityform.dto;

import lombok.Data;

@Data
public class Identity {
    private String name;
    private String address;
    private String city;
    private String province;
    private String registerDate;
    private String status;
}
