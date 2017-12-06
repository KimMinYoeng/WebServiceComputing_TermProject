package koreatech.cse.controller;

import koreatech.cse.domain.Library;
import koreatech.cse.service.LibraryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.inject.Inject;
import java.util.ArrayList;

@Controller
@RequestMapping("/service")
public class ServiceController {
    @Inject
    LibraryService libraryService;

    @RequestMapping("/library")
    //@ResponseBody
    public String library(Model model) {
        ArrayList<Library> list = libraryService.parseTest();

        for(Library entity : list){
            System.out.println(entity);
        }

        model.addAttribute("library", list);

        return "library";
    }

}
