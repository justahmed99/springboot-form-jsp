package id.salt.identityform.controller;

import id.salt.identityform.entity.IdentityEntity;
import id.salt.identityform.service.IdentityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class IdentityRestController {
    private final IdentityService service;

    @Autowired
    public IdentityRestController(
            IdentityService service
    ) {
        this.service = service;
    }

    @RequestMapping(value = "findall", method = RequestMethod.GET, produces = MimeTypeUtils.APPLICATION_JSON_VALUE)
    public ResponseEntity<Iterable<IdentityEntity>> findAll() {
        try {
            return new ResponseEntity<>(service.findAll(), HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(HttpStatus.BAD_REQUEST);
        }
    }
}
