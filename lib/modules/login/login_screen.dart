import 'package:flutter/material.dart';
import 'package:untitled2/modules/users/user_screen.dart';
import 'package:untitled2/shared/components/components.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailcontroler = TextEditingController();

  var passwordcontroler = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  defultFormFailed(
                      prefix: Icons.email,
                      label: "Email",
                      keybordTypeInput: TextInputType.emailAddress,
                      controller: TextEditingController(),
                      validate: (String value) {
                        if (value.isEmpty) {
                          return "email must be empty";
                        }
                        return null;
                      }),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: passwordcontroler,
                    onChanged: (value) {
                      print(value);
                    },
                    onFieldSubmitted: (value) {
                      print(value);
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return "passeord must not be empty";
                      }
                      return null;
                    },
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                      ),
                      labelText: "Password",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                    text: "Login",
                    function: () {
                      if (formkey.currentState.validate()) {
                        print(emailcontroler.text);
                        print(passwordcontroler.text);
                      }
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  defaultButton(
                    text: "ReGister",
                    function: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Dont\'t have an account?"),
                      SizedBox(
                        width: 5.0,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          "Register Now",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
