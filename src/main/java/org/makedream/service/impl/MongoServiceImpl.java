package org.makedream.service.impl;

import org.makedream.service.MongoService;
import org.springframework.stereotype.Service;

@Service
public class MongoServiceImpl implements MongoService {
    private final static String BASE_URL = "https://api.mongolab.com/api/1/databases/";
    private final static String DB_NAME = "todolistdb";
    private final static String API_KEY = "7lOuCyzkW57WlJLk9Zsu0VFCNpDi_1-J";

    @Override
    public String find(String key) {
        return null;
    }
}
