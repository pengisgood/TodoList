package org.makedream.controller;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TodoListController {

    @RequestMapping(value = "/retrieve", method = RequestMethod.GET)
    public String retrieve(@RequestBody String key) {
        return "[{ text: 'study angular js', done: false, lastUpdated: Date.now()}]";
    }

}
