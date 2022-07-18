import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(
            width: double.infinity,
          ),
          Text('hoo'),
          Text('hooaa'),
          Text(
            'Acessar Contatos',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          Icon(
            Icons.fingerprint,
            size: 72,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
