import 'package:flutter/material.dart';
import 'package:jbs_ui/visitorflow3.dart';

class welcome extends StatelessWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange.shade700,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                      Icons.calendar_month,
                      size: 35,
                      color: Colors.white,
                    ),
                    Text(
                      'Attendance',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.w700),
                    )
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
          SizedBox(
            height: 70,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: Colors.orange.shade700,
              size: 100,
            ),
            radius: 70,
          ),
          SizedBox(
            height: 25,
          ),
          Text('Welcome !',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50)),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Visitorflow3();
              }));
            },
            child: Text(
              'Login',
              style: TextStyle(color: Colors.orange.shade700, fontSize: 15),
            ),
            style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
                backgroundColor: MaterialStateProperty.all(Colors.white)),
          ),
          SizedBox(height: 150),
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
