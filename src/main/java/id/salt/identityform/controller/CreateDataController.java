package id.salt.identityform.controller;

import id.salt.identityform.dto.Identity;
import id.salt.identityform.service.IdentityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class CreateDataController {

    private final IdentityService service;

    @Autowired
    public CreateDataController(
            IdentityService service
    ) {
        this.service = service;
    }

    @GetMapping(value = "/")
    public String homepage(ModelMap model) {
        Identity identity = new Identity();
        model.addAttribute("identity", identity);
        return "create-data";
    }

    @PostMapping(value = "register")
    public String registerIdentity(@ModelAttribute("identity") Identity identity) {
        System.out.println(identity);
        service.saveIdentity(identity);
        return "create-data";
    }

    @GetMapping(value = "list-identity")
    public String listIdentity(ModelMap modelMap) {
        return "list-identity";
    }
}
