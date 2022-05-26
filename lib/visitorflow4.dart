import 'package:flutter/material.dart';
import 'package:jbs_ui/main2.dart';

class Visitorflow4 extends StatelessWidget {
  const Visitorflow4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange.shade700,
        body:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 150,
              ),
              Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.all(Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.admin_panel_settings,
                      size: 35,
                      color: Colors.white,
                    ),
                    Text(
                      'Admin',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(children: [
            Text(
              'Details:-',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "Name",
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
                    hintText: "Phone",
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
                    hintText: "Email",
                    fillColor: Colors.grey.shade100),
              ),
            )
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Add more',
                  style: TextStyle(color: Colors.orange.shade700),
                ),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(2),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Visitorflow6();
                  }));
                },
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.orange.shade700),
                ),
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(2),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('OR?', style: TextStyle(color: Colors.white, fontSize: 20)),
              SizedBox(
                width: 100,
              ),
              CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  child: Text('LOGO'))
            ],
          )
        ]),
      ),
    );
  }
}
