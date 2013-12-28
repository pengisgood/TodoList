package org.makedream.service;

import org.springframework.stereotype.Service;

@Service
public interface MongoService {
    String find(String key);

    void insert(String email, String todos);

    void update(String email, String todos);
}
