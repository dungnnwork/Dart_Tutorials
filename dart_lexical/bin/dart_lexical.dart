// abstract and override
abstract class TechTeam {
  double ageOfDung = 24.0;
  double ageOfHoan = 25.0;
  double ageOfLong = 24.0;
  inFor();
  totalAgeTechTeam() => ageOfDung + ageOfHoan + ageOfLong;
}

class inFormation extends TechTeam {
  @override
  inFor() {
    print('age of Hoan : ${ageOfHoan} \n'
        'age of Long : ${ageOfLong} \n'
        'age of Dung : ${ageOfDung} \n');
  }

  @override
  totalAgeTechTeam() => (ageOfHoan + ageOfDung + ageOfLong) * 2;
}

main() {
  var techTeam = inFormation();
  techTeam.inFor();
  var totalAgex2 = techTeam.totalAgeTechTeam();
  print(totalAgex2);
}
