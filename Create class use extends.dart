// class Buyer  extends User
// class Seller extends User
class User {
  late String name;
  late String password;
  late String login;
  late String logout;

  User();
  inforUser() {
    print('name     : ${name} \n'
        'password : ${password} \n'
        'login    : ${login} \n'
        'logout   : ${logout}');
  }
}

class Seller extends User {
  canSell() {
    print('i can sell everythings');
  }
}

class Buyer extends User {
  canBuy() {
    print('i can buy everythings');
  }
}

main() {
  var userName = Seller();
  userName.name = "nguyễn ngọc dũng";
  userName.password = "không có mật khẩu";
  userName.login = "login";
  userName.logout = "logout";
  userName.inforUser();
}
/* OUTPUT :
    name     : nguyễn ngọc dũng 
    password : không có mật khẩu 
    login    : login 
    logout   : logout
 */
