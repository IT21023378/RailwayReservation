package com.project.railwayreservation.model;

import java.sql.Time;
import java.util.Date;

public class TrainSchedule {
    private String tName;
    private String fromStation;
    private String toStation;
    private Date date;
    private Time time;
    private int fromId;
    private int toId;

    public TrainSchedule(String tName, String fromStation, String toStation, Date date, Time time, int fromId, int toId) {
        this.tName = tName;
        this.fromStation = fromStation;
        this.toStation = toStation;
        this.date = date;
        this.time = time;
        this.fromId = fromId;
        this.toId = toId;
    }

    public TrainSchedule(String tName, String fromStation, String toStation, Date date, Time time) {
        this.tName = tName;
        this.fromStation = fromStation;
        this.toStation = toStation;
        this.date = date;
        this.time = time;
    }

    public int getFromId() {
        return fromId;
    }

    public void setFromId(int fromId) {
        this.fromId = fromId;
    }

    public int getToId() {
        return toId;
    }

    public void setToId(int toId) {
        this.toId = toId;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public String getFromStation() {
        return fromStation;
    }

    public void setFromStation(String fromStation) {
        this.fromStation = fromStation;
    }

    public String getToStation() {
        return toStation;
    }

    public void setToStation(String toStation) {
        this.toStation = toStation;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Time getTime() {
        return time;
    }

    public void setTime(Time time) {
        this.time = time;
    }
}
