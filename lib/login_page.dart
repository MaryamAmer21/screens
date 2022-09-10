import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Text(
              'Welcome!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Image.asset('assets/welcome.jpg', height: 350),
            const SizedBox(height: 15),
            CustomElevatedButtonWidget(
              onTap: () {},
              color: Colors.black,
              title: 'Sign up with Apple',
              widget: const Icon(
                Icons.apple,
              ),
            ),
            const SizedBox(height: 15),
            CustomElevatedButtonWidget(
              onTap: () {},
              color: Colors.white,
              surfaceColor: Colors.black,
              title: 'Sign up with Google',
              //! add google image path her
              widget: Image.asset('assets/google.jpg',height: 25,),
            ),
            const SizedBox(height: 15),
            CustomElevatedButtonWidget(
              onTap: () {},
              color: Colors.blue,
              title: 'Sign up with Facebook',
              widget: const Icon(
                Icons.facebook,
              ),
            ),
            const SizedBox(height: 20),
            const Text('or'),
            const SizedBox(height: 20),
            CustomElevatedButtonWidget(
              onTap: () {},
              color: Colors.grey,
              title: 'Sign up with E-mail',
            ),
          ],
        ),
      ),
    );
  }
}

//! Button Used
class CustomElevatedButtonWidget extends StatelessWidget {
  const CustomElevatedButtonWidget({
    Key? key,
    this.widget,
    required this.onTap,
    required this.title,
    this.color,
    this.surfaceColor,
  }) : super(key: key);
  final Widget? widget;
  final VoidCallback onTap;
  final String title;
  final Color? color;
  final Color? surfaceColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: surfaceColor,
        minimumSize:
        Size(double.infinity, MediaQuery.of(context).size.height / 14),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          widget ?? const SizedBox.shrink(),
          const VerticalDivider(color: Colors.transparent),
          Text(title),
        ],
      ),
    );
  }
}
