package org.makedream.service;

import org.springframework.stereotype.Service;

@Service
public interface MongoService {
    String find(String key);

    String insertOrUpdate(String email, String todos);
}
