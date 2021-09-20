// tạo 1 class HocSinh
//   + có các thuộc tính :
// - họ tên
// - lớp
// - ngày sinh
// - điểm toán , điểm văn , điểm anh
//   + có các phương thức :
// - in thông tin học sinh
// - tính điểm trung bình 3 môn
// - xếp loại học lực dựa trên điểm trung bình 3 môn < 5 "yếu"; 5 <=điểm < 6.5 "trung bình"; 6.5 <=điểm < 8
//   khá; >= 8 : giỏi
class HocSinh {
  // các thuộc tính để chế độ private
  String _hoTen;
  String _lop;
  String _ngaySinh;
  double _diemToan;
  double _diemVan;
  double _diemAnh;

  // hàm khởi tạo
  HocSinh(this._hoTen, this._lop, this._ngaySinh, this._diemToan, this._diemVan,
      this._diemAnh);
  // các phương thức
  // các thông tin
  void inThongTin() {
    print("Họ tên : ${this._hoTen}" +
        "\n" +
        "Lớp : ${this._lop}" +
        "\n" +
        "Ngày sinh : ${this._ngaySinh}" +
        "\n" +
        "Điểm toán : ${this._diemToan}" +
        "\n" +
        "Điểm văn : ${this._diemVan}" +
        "\n" +
        "Điểm anh : ${this._diemAnh}" +
        "\n");
  } // đóng inThongTin

  // tinh điểm trung bình cộng
  double tinhDiemTrungBinh() =>
      (this._diemToan + this._diemVan + this._diemAnh) / 3;
  // xếp loại học sinh
  String xepLoai() {
    var diemTB = this.tinhDiemTrungBinh();
    if (diemTB < 5) {
      return "yếu";
    } else if (diemTB < 6.5) {
      return "trung bình";
    } else if (diemTB < 8) {
      return "khá";
    } else {
      return "giỏi";
    }
  } // close xepLoai

  // getter
  String get hoTen => _hoTen;
  String get lop => _lop;
  String get ngaySinh => _ngaySinh;
  double get diemToan => _diemToan;
  double get diemVan => _diemVan;
  double get diemAnh => _diemAnh;
  // setter
  void set hoTen(String hoTen) {
    this._hoTen = hoTen;
  }

  void set lop(String lop) {
    this._lop = lop;
  }

  void set ngaySinh(String ngaySinh) {
    this._ngaySinh = ngaySinh;
  }

  void set diemToan(double diemToan) {
    this._diemToan = diemToan;
  }

  void set diemVan(double diemVan) {
    this._diemVan = diemVan;
  }

  void set diemAnh(double diemAnh) {
    this._diemAnh = diemAnh;
  }
} // đóng class

void main() {
  var hocsinh = HocSinh("Nguyễn Ngọc Dũng", "12a2", "4-5-1997", 5, 5, 5);
  hocsinh.inThongTin();
  print("Điểm trung bình : ${hocsinh.tinhDiemTrungBinh()}" +
      "\n" +
      "Xếp loại : ${hocsinh.xepLoai()}");
}
