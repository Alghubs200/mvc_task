import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mvc_task/view/widgets/glith_effect.dart';

import '../../widgets/text_input.dart';

class LogininScreen extends StatelessWidget {
  LogininScreen({super.key});
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GlithEffect(
              child: const Text(
                'WELCOME',
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 27),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: TextInput(
                controller: _emailController,
                myLabelText: 'Email',
                myIcon: Icons.email,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 22),
              child: TextInput(
                controller: _passwordController,
                myLabelText: 'Password',
                myIcon: Icons.lock,
                toHide: true,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      onPrimary: Colors.black,
                      backgroundColor: Colors.green[400]),
                  onPressed: () {},
                  child: Container(
                      child: Text(
                    'Login',
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
