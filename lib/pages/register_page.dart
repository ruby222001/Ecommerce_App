import 'package:app/components/my_button.dart';
import 'package:app/components/my_textfield.dart';
import 'package:app/helper/helper_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
   const  RegisterPage({super.key, this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //text controller
  TextEditingController userController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  //register method
  void registeruser() async{
    //show loading circle
    showDialog(context: context, 
    builder: (context) => const Center(
      child: CircularProgressIndicator(),
    ),
    );

    //make password match
    if(passwordController.text != confirmpasswordController.text){
      //pop loading circle
Navigator.pop(context);
      //show error message to
displayMessageToUser("passwords don't match",context);
    }
    //try creating user
try{
  //creating user
  UserCredential? userCredential= await FirebaseAuth.instance.createUserWithEmailAndPassword(
    email: emailController.text, 
    password: passwordController.text,
    );
    //pop loading circle
    Navigator.pop(context);
}on FirebaseAuthException catch(e){
  //pop loading circle
  Navigator.pop(context);
  //display error message to error
 displayMessageToUser(e.code, context) ;
 

}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.person,
                size: 50,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(height: 10),
              //title
                      const Text('S H O P E E',

                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 15),
              //username
              MyTextField(
                hintText: 'Username',
                obscureText: false,
                controller: userController,
              ),
              const SizedBox(
                height: 10,
              ),

              //email textfield
              MyTextField(
                hintText: 'Email',
                obscureText: false,
                controller: emailController,
              ),
              const SizedBox(height: 10),

              //pasword
              MyTextField(
                hintText: 'Password',
                obscureText: true,
                controller: passwordController,
              ),
             const  SizedBox(
                height: 10,
              ),
              MyTextField(
                hintText: 'Confirm Password',
                obscureText: true,
                controller: confirmpasswordController,
              ),
            const  SizedBox(
                height: 10,
              ),

              //forgot password
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              MyButton(
                onTap: registeruser,
                child: const Text("Register"),
              ),
              const SizedBox(height: 10),
              //don't have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Already have an account? "),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Login Here",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
