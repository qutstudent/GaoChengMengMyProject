package com.qst.crm.po;
import lombok.Data;

import java.math.BigDecimal;
@Data
public class Client {
    private int cid;
    private String name;
    private String tel;
    private Vehicle vehicle;
    private Employee emp;
    private BigDecimal budget;
    private String comments;
    public Client() {
    }

    public Client(int cid, String name, String tel, Vehicle vehicle, Employee emp, BigDecimal budget, String comments) {
        this.cid = cid;
        this.name = name;
        this.tel = tel;
        this.vehicle = vehicle;
        this.emp = emp;
        this.budget = budget;
        this.comments = comments;
    }

    public Client(String name, String tel, Vehicle vehicle, Employee emp, BigDecimal budget, String comments) {
        this.name = name;
        this.tel = tel;
        this.vehicle = vehicle;
        this.emp = emp;
        this.budget = budget;
        this.comments = comments;
    }
}
