import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var logo = Container(
      color: Theme.of(context).primaryColor,
      height: MediaQuery.of(context).size.height / 2,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'images/logo.png',
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
            const Text(
              'TeamTrics',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );

    var titles = Container(
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            'LOG IN',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
          Text(
            'SIGN UP',
            style: TextStyle(
              color: Colors.white24,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            logo,
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  titles,
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 32, bottom: 8, left: 32, right: 32),
                          child: TextFormField(
                            decoration: const InputDecoration(
                                border: UnderlineInputBorder(),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    color: Color.fromARGB(66, 70, 68, 68))),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 8),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: Color.fromARGB(66, 70, 68, 68)),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(32),
                          child: Text(
                            'Forgot your password?',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16),
                          child: Container(
                            color: Theme.of(context).primaryColor,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 128, vertical: 16),
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
