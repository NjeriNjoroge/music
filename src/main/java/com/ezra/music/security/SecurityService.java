package com.ezra.music.security;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
