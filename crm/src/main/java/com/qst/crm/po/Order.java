package com.qst.crm.po;
public class Order{
    private int oid;
    private Client client;
    private String tel;
    private  Vehicle vehicle;
    private String pay_type;
    private Employee emp;

    public Order() {
    }

    public Order(Client client, String tel, Vehicle vehicle, String pay_type, Employee emp) {
        this.client = client;
        this.tel = tel;
        this.vehicle = vehicle;
        this.pay_type = pay_type;
        this.emp = emp;
    }

    public Order(int oid, Client client, String tel, Vehicle vehicle, String pay_type, Employee emp) {
        this.oid = oid;
        this.client = client;
        this.tel = tel;
        this.vehicle = vehicle;
        this.pay_type = pay_type;
        this.emp = emp;
    }

    public int getOid() {
        return oid;
    }
    public void setOid(int oid) {
        this.oid = oid;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Vehicle getVehicle() {
        return vehicle;
    }

    public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
    }

    public String getPay_type() {
        return pay_type;
    }

    public void setPay_type(String pay_type) {
        this.pay_type = pay_type;
    }

    public Employee getEmp() {
        return emp;
    }

    public void setEmp(Employee emp) {
        this.emp = emp;
    }
}
