package koreatech.cse.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
@RequestMapping("/")
public class HomeController {

    @RequestMapping
    public String home() { return "hello"; }

    @RequestMapping("/about")
    public String about() {
        return "about";
    }

}
