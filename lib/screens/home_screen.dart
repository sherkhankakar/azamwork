import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final List<String> _locations = [
    'Pakistan',
    'India',
    'Afghanistan',
    'Bangladesh',
    'Other'
  ]; // Option 2
  String? _selectedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(174, 27, 133, 1),
              Color.fromRGBO(58, 47, 143, 1),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'SIGN UP',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 60,
            ),
            detailsField('Email'),
            const SizedBox(
              height: 20,
            ),
            detailsField('Username'),
            const SizedBox(
              height: 20,
            ),
            detailsField('Password'),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(8)),
              child: DropdownButton(
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                hint: const Text(
                    'Country                                              '),
                // Not necessary for Option 1
                value: _selectedLocation,
                onChanged: (newValue) {
                  setState(() {
                    _selectedLocation = newValue!;
                  });
                },
                items: _locations.map((location) {
                  return DropdownMenuItem(
                    value: location,
                    child: Text(location),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8)
                ),
                child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.white), onPressed: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupScreen()));
                }, child: const Text('REGISTER',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 17,color: Color.fromRGBO(122, 36, 137, 1)),)))
          ],
        ),
      ),
    );
  }

  Widget detailsField(String text) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 20),
      //width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: TextField(
        decoration: InputDecoration(hintText: text, border: InputBorder.none),
      ),
    );
  }
}
