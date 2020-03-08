package com.qst.crm.po;
public class User {
    private int USER_ID;
    private String USER_LOGNAME;
    private String USER_PWD;
    private String USER_REALNAME;
    private String USER_EMAIL;
    private String USER_ROLE;
    private String USER_TEL;
    private String USER_HOPPY;
    private String USER_IMAGE;
    private String USER_SEX;
    public User(){
    }

    public User(int USER_ID, String USER_LOGNAME,
                String USER_PWD, String USER_REALNAME,
                String USER_EMAIL, String USER_ROLE,
                String USER_TEL, String USER_HOPPY,
                String USER_IMAGE, String USER_SEX) {
        this.USER_ID = USER_ID;
        this.USER_LOGNAME = USER_LOGNAME;
        this.USER_PWD = USER_PWD;
        this.USER_REALNAME = USER_REALNAME;
        this.USER_EMAIL = USER_EMAIL;
        this.USER_ROLE = USER_ROLE;
        this.USER_TEL = USER_TEL;
        this.USER_HOPPY = USER_HOPPY;
        this.USER_IMAGE = USER_IMAGE;
        this.USER_SEX = USER_SEX;
    }
    public User(String USER_LOGNAME,
                String USER_PWD, String USER_REALNAME,
                String USER_EMAIL, String USER_ROLE,
                String USER_TEL, String USER_HOPPY,
                String USER_IMAGE, String USER_SEX) {
        this.USER_LOGNAME = USER_LOGNAME;
        this.USER_PWD = USER_PWD;
        this.USER_REALNAME = USER_REALNAME;
        this.USER_EMAIL = USER_EMAIL;
        this.USER_ROLE = USER_ROLE;
        this.USER_TEL = USER_TEL;
        this.USER_HOPPY = USER_HOPPY;
        this.USER_IMAGE = USER_IMAGE;
        this.USER_SEX = USER_SEX;
    }

    public int getUSER_ID() {
        return USER_ID;
    }

    public void setUSER_ID(int USER_ID) {
        this.USER_ID = USER_ID;
    }

    public String getUSER_LOGNAME() {
        return USER_LOGNAME;
    }

    public void setUSER_LOGNAME(String USER_LOGNAME) {
        this.USER_LOGNAME = USER_LOGNAME;
    }

    public String getUSER_PWD() {
        return USER_PWD;
    }

    public void setUSER_PWD(String USER_PWD) {
        this.USER_PWD = USER_PWD;
    }

    public String getUSER_REALNAME() {
        return USER_REALNAME;
    }

    public void setUSER_REALNAME(String USER_REALNAME) {
        this.USER_REALNAME = USER_REALNAME;
    }

    public String getUSER_EMAIL() {
        return USER_EMAIL;
    }

    public void setUSER_EMAIL(String USER_EMAIL) {
        this.USER_EMAIL = USER_EMAIL;
    }

    public String getUSER_ROLE() {
        return USER_ROLE;
    }

    public void setUSER_ROLE(String USER_ROLE) {
        this.USER_ROLE = USER_ROLE;
    }

    public String getUSER_TEL() {
        return USER_TEL;
    }

    public void setUSER_TEL(String USER_TEL) {
        this.USER_TEL = USER_TEL;
    }

    public String getUSER_HOPPY() {
        return USER_HOPPY;
    }

    public void setUSER_HOPPY(String USER_HOPPY) {
        this.USER_HOPPY = USER_HOPPY;
    }

    public String getUSER_IMAGE() {
        return USER_IMAGE;
    }

    public void setUSER_IMAGE(String USER_IMAGE) {
        this.USER_IMAGE = USER_IMAGE;
    }

    public String getUSER_SEX() {
        return USER_SEX;
    }

    public void setUSER_SEX(String USER_SEX) {
        this.USER_SEX = USER_SEX;
    }
}
