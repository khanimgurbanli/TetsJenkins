package demo.perspektiv.controller;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    public HelloController() {
    }

    @GetMapping({"/"})
    public String print() {
        return "hello khanim gurbanli";
    }
}
