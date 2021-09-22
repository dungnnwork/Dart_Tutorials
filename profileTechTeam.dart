// xây dụng thông tin thành viên techTeam gồm có DŨNG,LONG,HOÀN
class TechTeam {
  List<String> hoTen;
  List<String> tinhTrang;
  List<int> tuoi;
  TechTeam(this.hoTen, this.tinhTrang, this.tuoi);
  TechTeam.dien() // khởi tạo hàm
      : hoTen = ["Nguyễn Ngọc Dung", "Nguyễn Hữu Hoàn", "Đặng Thanh Long"],
        tinhTrang = ["chưa có bồ", "sắp có vợ", "chưa có bồ"],
        tuoi = [23, 24, 24];
} // close class TECHTEAM

main() {
  var inThongTin = TechTeam.dien();

  print("tên thành viên : ${inThongTin.hoTen}" +
      "\n" "tình trang : ${inThongTin.tinhTrang}" +
      "\n" +
      "tuổi : ${inThongTin.tuoi}");
}
/* OUTPUT:
tên thành viên : [Nguyễn Ngọc Dung, Nguyễn Hữu Hoàn, Đặng Thanh Long]
tình trang : [chưa có bồ, sắp có vợ, chưa có bồ]
tuổi : [23, 24, 24]
 */