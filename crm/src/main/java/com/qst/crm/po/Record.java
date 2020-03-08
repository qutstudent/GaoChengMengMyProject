package com.qst.crm.po;
import com.alibaba.fastjson.annotation.JSONField;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
import java.util.Date;
public class Record implements Serializable {
    private int rid;
    private Client client;
    private Employee emp;
    private String visit_type;
    @DateTimeFormat(pattern="yyyy-MM-dd")//页面写入数据库时格式化
    @JSONField(format="yyyy-MM-dd")//数据库导出页面时json格式化
    private Date time;
    private State state;
    private Vehicle vehicle;
    public Record() {
    }
    public Record(Client client, Employee emp, String visit_type, Date time, State state, Vehicle vehicle) {
        this.client = client;
        this.emp = emp;
        this.visit_type = visit_type;
        this.time = time;
        this.state = state;
        this.vehicle = vehicle;
    }

    public Record(int rid, Client client, Employee emp, String visit_type, Date time, State state, Vehicle vehicle) {
        this.rid = rid;
        this.client = client;
        this.emp = emp;
        this.visit_type = visit_type;
        this.time = time;
        this.state = state;
        this.vehicle = vehicle;
    }

    public int getRid() {
        return rid;
    }

    public void setRid(int rid) {
        this.rid = rid;
    }

    public Client getClient() {
        return client;
    }

    public void setClient(Client client) {
        this.client = client;
    }

    public Employee getEmp() {
        return emp;
    }

    public void setEmp(Employee emp) {
        this.emp = emp;
    }

    public String getVisit_type() {
        return visit_type;
    }

    public void setVisit_type(String visit_type) {
        this.visit_type = visit_type;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public Vehicle getVehicle() {
        return vehicle;
    }

    public void setVehicle(Vehicle vehicle) {
        this.vehicle = vehicle;
    }
}
