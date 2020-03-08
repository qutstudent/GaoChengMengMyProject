package com.qst.crm.po;

import java.math.BigDecimal;
import java.util.Date;

public class Employee {
    private int eid;
    private String name;
    private int age;
    private String sex;
    private BigDecimal salary;
    private Date birthday;
    public Employee() {
    }
    public Employee(int eid, String name, int age, String sex,
                    BigDecimal salary, Date birthday) {
        this.eid = eid;
        this.name = name;
        this.age = age;
        this.sex = sex;
        this.salary = salary;
        this.birthday = birthday;
    }

    public int getEid() {
        return eid;
    }
    public void setEid(int eid) {
        this.eid = eid;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }
    public BigDecimal getSalary() {
        return salary;
    }
    public void setSalary(BigDecimal salary) {
        this.salary = salary;
    }
    public Date getBirthday() {
        return birthday;
    }
    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }
}
