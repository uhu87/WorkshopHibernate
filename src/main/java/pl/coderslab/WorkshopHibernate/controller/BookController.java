package pl.coderslab.WorkshopHibernate.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.WorkshopHibernate.dao.BookDao;
import pl.coderslab.WorkshopHibernate.entity.Book;

import javax.validation.Valid;

@Controller
@RequestMapping("/book")
public class BookController {

    private final BookDao bookDao;

    public BookController(BookDao bookDao) {
        this.bookDao = bookDao;
    }

    //_____________________________________________________________________________ALL
    @GetMapping("/all")
    public String showAll(Model model){
        model.addAttribute("books", bookDao.findAll());

        return "book/allBooks";

    }

    //_____________________________________________________________________________ADD
    @GetMapping("/add")
    public String addArticle(Model model){
        model.addAttribute("book", new Book());
        return "book/addBook";

    }
    @PostMapping("/add")
    public String saveBook(@ModelAttribute("book") @Valid Book book, BindingResult result){
        if(result.hasErrors()){
            return "book/addBook";
        }
        bookDao.persist(book);
        return "redirect:/book/all";
    }

    //_____________________________________________________________________________EDYCJA
    @GetMapping("/edit")
    public String editBook(@RequestParam Long id,  Model model){
        model.addAttribute("book", bookDao.findById(id));
        return "book/addBook";
    }
    @PostMapping("/edit")
    public String saveBookChanges(@ModelAttribute("book") @Valid Book book, BindingResult result){
        if(result.hasErrors()){
              return "book/addBook";
        }

        bookDao.update(book);
        return "redirect:/book/all";
    }

    //_____________________________________________________________________________DETAILS

    @GetMapping("/details")
    public String details(@RequestParam Long id,  Model model){
        model.addAttribute("book", bookDao.findById(id));
        return "book/bookDetails";
    }

    //_____________________________________________________________________________DELETE

    @GetMapping("/delete")
    public String confirmDelete(@RequestParam Long id,  Model model){
        model.addAttribute("book", bookDao.findById(id));
        return "book/delete";
    }
    @PostMapping("/delete")
    public String confirmDeletePost(@ModelAttribute("book") Book book, @RequestParam String confirmed){
        if(confirmed.equals("yes")){
            bookDao.delete(book);
        }
        return "redirect:/book/all";
    }
}


