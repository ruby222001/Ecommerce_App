import 'package:app/pages/login_page.dart';
import 'package:app/pages/register_page.dart';
import 'package:flutter/material.dart';
class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  //initially show login page
  bool showLoginPage =true;
  //toggle between login and register
void togglePages(){
  setState(() {
    showLoginPage = !showLoginPage;
  });
}
  @override
  Widget build(BuildContext context) {
  if(showLoginPage){
    return LoginPage(onTap: togglePages);
  }else{
    return RegisterPage(onTap: togglePages);
  }
  }
}