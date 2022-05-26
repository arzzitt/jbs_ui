import 'package:flutter/material.dart';
import 'package:jbs_ui/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: login(),
    );
  }
}

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage('lib/images/logo.jpg'),
                  height: 250,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Phone/email",
                      fillColor: Colors.grey.shade100),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Password",
                      fillColor: Colors.grey.shade100),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  'Register / forgot password',
                  style: TextStyle(
                      color: Colors.blue.shade900,
                      decoration: TextDecoration.underline),
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return welcome();
                    }));
                  },
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(Colors.orange),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.orange)),
                  child: Text(
                    'Enter',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
