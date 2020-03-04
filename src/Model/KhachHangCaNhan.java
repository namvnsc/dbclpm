/* @vannamsc */

package Model;


public class KhachHangCaNhan extends Nguoi implements KhachHang{

    @Override
    public String getLoai() {
        return "Ca nhan";
    }

    @Override
    public String getMa() {
        return this.soCMT;
    }

}
