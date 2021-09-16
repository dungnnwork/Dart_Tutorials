phepCong(a, b) {
  return a + b;
}

phepTru(c, d) {
  return c - d;
}

phepNhan(m, n) {
  return m * n;
}

phepChiaLayNguyen(e, f) {
  if(e != 0){
  return e ~/ f;
  }
}

phepChiaLayDu(g, h) {
  if( g != 0)
  return g % h;
     }
}

main() {
  var cong = phepCong(2, 3);
  var tru = phepTru(5, 4);
  var nhan = phepNhan(1, 3);
  var chiaLayNguyen = phepChiaLayNguyen(9, 6);
  var chiaLayDu = phepChiaLayDu(5, 4);
  var lists = [cong, tru, nhan, chiaLayNguyen, chiaLayDu];
  print('${lists}');
}
