/* @vannamsc */

package Model;


public class KhachHangDoanhNghiep implements KhachHang{
    private String ma, ten, diaChi, email, soDienThoai, soGiayPhepKinhDoanh, maSoThue;
    private Nguoi nguoiDaiDien;
    
    public KhachHangDoanhNghiep(){
        
    }

    public KhachHangDoanhNghiep(String ma, String ten, String diaChi, String email, String soDienThoai, String soGiayPhepKinhDoanh, String maSoThue, Nguoi nguoiDaiDien) {
        this.ma = ma;
        this.ten = ten;
        this.diaChi = diaChi;
        this.email = email;
        this.soDienThoai = soDienThoai;
        this.soGiayPhepKinhDoanh = soGiayPhepKinhDoanh;
        this.maSoThue = maSoThue;
        this.nguoiDaiDien = nguoiDaiDien;
    }

    @Override
    public String getLoai() {
        return "Doanh nghiep";
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getSoGiayPhepKinhDoanh() {
        return soGiayPhepKinhDoanh;
    }

    public void setSoGiayPhepKinhDoanh(String soGiayPhepKinhDoanh) {
        this.soGiayPhepKinhDoanh = soGiayPhepKinhDoanh;
    }

    public String getMaSoThue() {
        return maSoThue;
    }

    public void setMaSoThue(String maSoThue) {
        this.maSoThue = maSoThue;
    }

    public Nguoi getNguoiDaiDien() {
        return nguoiDaiDien;
    }

    public void setNguoiDaiDien(Nguoi nguoiDaiDien) {
        this.nguoiDaiDien = nguoiDaiDien;
    }

    @Override
    public String getMa() {
        return this.ma;
    }
}
