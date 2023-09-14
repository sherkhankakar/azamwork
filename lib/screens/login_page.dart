import 'package:flash_light/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/image.png',
              height: 150,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Welcome Back !',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 242, 242, 1),
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: TextStyle(),
                    border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 50,
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(242, 242, 242, 1),
                  borderRadius: BorderRadius.circular(8)),
              child: const TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Password', border: InputBorder.none),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Remember password and Auto align',
              style: TextStyle(fontSize: 15, color: Colors.black87),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(174, 27, 133, 1),
                      Color.fromRGBO(58, 47, 143, 1),
                    ],
                  )),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Your Password ?',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,decoration: TextDecoration.underline,color: Color.fromRGBO(144, 80, 128, 1)),
                )),
            const SizedBox(height: 80),
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8)
                ),
                child: OutlinedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupScreen()));
                }, child: const Text('SIGN UP HERE')))
          ],
        ),
      ),
    );
  }
}
