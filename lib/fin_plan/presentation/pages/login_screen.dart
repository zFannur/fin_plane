import 'package:fin_plan/fin_plan/presentation/pages/sing_up_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "lib/images/login.png",
              width: double.infinity,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x0063ffd1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter UserName",
                      prefixIcon: Icon(
                        Icons.person,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0x0063ffd1).withOpacity(0.7),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: TextFormField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter Password",
                      prefixIcon: Icon(
                        Icons.lock,
                        color: Colors.black.withOpacity(0.5),
                      ),
                      suffixIcon: Icon(Icons.remove_red_eye_outlined,
                          color: Colors.black.withOpacity(0.5)),
                    ),
                  ),
                )),
            const SizedBox(
              height: 50,
            ),
            InkWell(
              child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0x0063ffd1).withOpacity(1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text(
                      'Log In',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          wordSpacing: 2,
                          color: Colors.black54),
                    ),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Do not have an account? ',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                const SizedBox(width: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SingUpScreen()));
                  },
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: const Color(0x0063ffd1).withOpacity(1)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
