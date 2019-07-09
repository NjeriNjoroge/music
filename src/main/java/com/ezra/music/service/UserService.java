package com.ezra.music.service;

import com.ezra.music.models.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
