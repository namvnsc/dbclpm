/* @vannamsc */

package Model;


public class TaiKhoan {
    protected String ma, loai;
    protected NhanVien nhanVienMo;
    protected KhachHang khachHang;
    private float soDu;
    
    public TaiKhoan(){
        
    }

    public String getMa() {
        return ma;
    }

    public void setMa(String ma) {
        this.ma = ma;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public NhanVien getNhanVienMo() {
        return nhanVienMo;
    }

    public void setNhanVienMo(NhanVien nhanVienMo) {
        this.nhanVienMo = nhanVienMo;
    }

    public KhachHang getKhachHang() {
        return khachHang;
    }

    public void setKhachHang(KhachHang khachHang) {
        this.khachHang = khachHang;
    }

    public float getSoDu() {
        return soDu;
    }

    public void setSoDu(float soDu) {
        this.soDu = soDu;
    }
    
    
    
}
