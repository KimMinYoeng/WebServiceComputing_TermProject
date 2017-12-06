package koreatech.cse.controller.rest;

import koreatech.cse.domain.rest.Book;
import koreatech.cse.domain.rest.Education;
import koreatech.cse.service.EducationService;
import koreatech.cse.service.EventService;
import koreatech.cse.service.LibraryService;
import koreatech.cse.service.NaverBookService;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import javax.inject.Inject;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ServiceController {
    @Inject
    EducationService educationService;
    @Inject
    EventService eventService;
    @Inject
    LibraryService libraryService;
    @Inject
    NaverBookService naverBookService;

    @RequestMapping(value = "/xml/book/{keyword}", method = RequestMethod.GET, produces = "application/xml")
    public ResponseEntity<List<Book>> bookSearchXml(@PathVariable("keyword") String keyword) {
        List<Book> bookList = naverBookService.searchBook(keyword,10, 1);
        if (bookList.size() == 0) {
            System.out.println("Book" + keyword + " is not found");
            return new ResponseEntity<List<Book>>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<List<Book>>(bookList, HttpStatus.OK);
    }
}
