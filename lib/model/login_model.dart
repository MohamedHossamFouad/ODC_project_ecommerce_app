

class LoginUser {
  String email;
  String password;

  LoginUser({required this.email, required this.password});

  Map<String,dynamic>toMap(){
    return{
      'email': this.email,
      'password' : this.password,
    };
  }
  factory LoginUser.fromMap(Map<String, dynamic> map){
    return LoginUser(email: map['email'], password: map['password'],);
  }
}  
