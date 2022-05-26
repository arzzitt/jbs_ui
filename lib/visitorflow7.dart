import 'package:flutter/material.dart';

class Visitorflow7 extends StatelessWidget {
  const Visitorflow7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.orange.shade700,
            body: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      'All Set !',
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    Container(
                      height: 200,
                      width: 200,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(children: [
                        const Text(
                          'Details',
                          style: TextStyle(color: Colors.orange, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Name: ',
                              style: TextStyle(fontSize: 20),
                            ),
                            const Text('XYZ',
                                style: const TextStyle(fontSize: 20))
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Email: ',
                              style: const TextStyle(fontSize: 20),
                            ),
                            const Text('XYZ@gmail.com',
                                style: const TextStyle(fontSize: 20))
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Phone no. : ',
                              style: const TextStyle(fontSize: 20),
                            ),
                            const Text('888999555',
                                style: const TextStyle(fontSize: 20))
                          ],
                        )
                      ]),
                    ),
                    const Image(
                      image: AssetImage('lib/images/id.jpg'),
                      height: 300,
                      width: 300,
                    ),
                    const Text(
                      'We have notified XYZ that you are waiting',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Done',style: TextStyle(color: Colors.orange)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.only(top: 15,bottom: 15,left: 20,right: 20)),
                          backgroundColor:

                          MaterialStateProperty.all(Colors.white)),
                    )
                  ]),
            )));
  }
}
