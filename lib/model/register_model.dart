

class AddUser {
  String email;
  String password;
  String confirmPassword;
  String phone;

  AddUser({required this.email, required this.password, required this.confirmPassword,required this.phone});

  Map<String,dynamic>toMap(){
    return{
      'email': this.email,
      'password' : this.password,
      'confirmPassword' : this.confirmPassword,
      'phone': this.phone,
    };
  }
  factory AddUser.fromMap(Map<String, dynamic> map){
    return AddUser(email: map['email'], password: map['password'],confirmPassword: map['confirmPassword'], phone: map['phone'],);
  }
}  
