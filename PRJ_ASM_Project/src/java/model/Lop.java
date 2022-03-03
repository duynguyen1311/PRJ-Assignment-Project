package model;

import model.Khoa;
import model.KhoaHoc;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author admin
 */
public class Lop {

    private String maLop;
    private String tenLop;
    private Khoa khoa;
    private String maHDT;
    private KhoaHoc khoahoc;

    public Lop() {
    }

    public Lop(String maLop, String tenLop, String maHDT, Khoa khoa, KhoaHoc khoahoc) {
        this.maLop = maLop;
        this.tenLop = tenLop;
        this.khoa = khoa;
        this.maHDT = maHDT;
        this.khoahoc = khoahoc;
    }

    public String getMaLop() {
        return maLop;
    }

    public void setMaLop(String maLop) {
        this.maLop = maLop;
    }

    public String getTenLop() {
        return tenLop;
    }

    public void setTenLop(String tenLop) {
        this.tenLop = tenLop;
    }

    public Khoa getKhoa() {
        return khoa;
    }

    public void setKhoa(Khoa khoa) {
        this.khoa = khoa;
    }

    public String getMaHDT() {
        return maHDT;
    }

    public void setMaHDT(String maHDT) {
        this.maHDT = maHDT;
    }

    public KhoaHoc getKhoahoc() {
        return khoahoc;
    }

    public void setKhoahoc(KhoaHoc khoahoc) {
        this.khoahoc = khoahoc;
    }

    @Override
    public String toString() {
        return "Lop{" + "maLop=" + maLop + ", tenLop=" + tenLop + ", khoa=" + khoa + ", maHDT=" + maHDT + ", khoahoc=" + khoahoc + '}';
    }

}
