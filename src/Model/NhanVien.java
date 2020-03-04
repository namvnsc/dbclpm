/* @vannamsc */

package Model;

import java.sql.Date;


public class NhanVien extends Nguoi{
    private String ma, chuVu;
    private float luong;
    private Date ngayBatDauLamViec;
    private Account account;

    public NhanVien(){
        
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getChuVu() {
        return chuVu;
    }

    public void setChuVu(String chuVu) {
        this.chuVu = chuVu;
    }

    public float getLuong() {
        return luong;
    }

    public void setLuong(float luong) {
        this.luong = luong;
    }

    public Date getNgayBatDauLamViec() {
        return ngayBatDauLamViec;
    }

    public void setNgayBatDauLamViec(Date ngayBatDauLamViec) {
        this.ngayBatDauLamViec = ngayBatDauLamViec;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }
    
    
}
