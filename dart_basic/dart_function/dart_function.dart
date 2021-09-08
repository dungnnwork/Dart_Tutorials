/* Functions as first class object
. Can pass a function as a parameters to another function
Example
 */
void techTeam(int dung) {
  print(dung);
}

main() {
  var list = [2, 3, 4];
  return list.forEach(techTeam);
}
