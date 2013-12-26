package org.makedream.controller;

import com.google.gson.Gson;
import com.google.gson.JsonParser;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

import static com.google.common.collect.Lists.newArrayList;

@RestController
public class TodoListController {

    @RequestMapping(value = "/retrieve/{key}", method = RequestMethod.GET)
    public String retrieve(@PathVariable String key) {
        List<Object> result = newArrayList();
        JsonParser parser = new JsonParser();
        result.add(parser.parse("{ text: 'study angular js', done: false, lastUpdated: Date.now()}"));
        result.add(parser.parse("{ text: 'study java', done: true, lastUpdated: Date.now()}"));

        return new Gson().toJson(result);
    }

}
