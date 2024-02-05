import 'package:flutter/material.dart';
import 'package:flutter_06_login/models/user.dart';
import 'package:flutter_06_login/pages/intro_page.dart';

class Welcome extends StatelessWidget {
  final User user;

  Welcome({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Seja bem-vindo(a), ${user.name}!',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Suas informações',
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'E-mail: ${user.email}',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Senha: ${user.password}',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            // Use Expanded to make the GestureDetector take remaining space
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => IntroPage()));
                  },
                  child: Container(
                    width: 120,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: Icon(
                              Icons.exit_to_app_sharp,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                          Text(
                            'Sair',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
