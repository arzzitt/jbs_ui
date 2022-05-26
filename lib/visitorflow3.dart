import 'package:flutter/material.dart';
import 'package:jbs_ui/contractor2.dart';
import 'package:jbs_ui/visitorflow5.dart';

class Visitorflow3 extends StatelessWidget {
  const Visitorflow3({Key? key}) : super(key: key);

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
          Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          top: 30, bottom: 30, left: 20, right: 20)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Visitorflow5();
                    }));
                  },
                  child: Text(
                    '    Meet\nsomeone',
                    style:
                        TextStyle(color: Colors.orange.shade700, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          top: 40, bottom: 40, left: 20, right: 20)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Visitorflow5();
                    }));
                  },
                  child: Text(
                    'Delivery',
                    style:
                        TextStyle(color: Colors.orange.shade700, fontSize: 20),
                  ),
                ),
              ]),
              SizedBox(
                height: 10,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          top: 40, bottom: 40, left: 15, right: 15)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return contractor2();
                    }));
                  },
                  child: Text(
                    'Contractor',
                    style:
                        TextStyle(color: Colors.orange.shade700, fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all(EdgeInsets.only(
                          top: 40, bottom: 40, left: 20, right: 20)),
                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Visitorflow5();
                    }));
                  },
                  child: Text(
                    'Sign out',
                    style:
                        TextStyle(color: Colors.orange.shade700, fontSize: 20),
                  ),
                ),
              ]),
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
