package org.makedream.controller;

import org.makedream.service.MongoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TodoListController {

    private MongoService mongoService;

    @Autowired
    public TodoListController(MongoService mongoService) {
        this.mongoService = mongoService;
    }

    @RequestMapping(value = "/retrieve/{email:.+}", method = RequestMethod.GET)
    public String retrieve(@PathVariable String email) {
        String result = mongoService.find(email);
        if (result == "") {
            System.out.println("The result is null, cannot find the documents by this email address in database.");
        }
        return result;
    }

    @RequestMapping(value = "/save/{email:.+}", method = RequestMethod.PUT)
    public String save(@PathVariable String email, @RequestBody String todos) {
        mongoService.insertOrUpdate(email, todos);
        return "";
    }

}
