import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:misiontic_template/ui/pages/Posts/posts_page.dart';
import 'package:misiontic_template/ui/pages/PrincipalPage/principalpage_page.dart';
import 'package:misiontic_template/ui/pages/States/states_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF343434),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                  style: const TextStyle(color: Color(0xFF27AE60)),
                  initialValue: '',
                  decoration: const InputDecoration(
                    labelText: 'Correo electronico',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF27AE60))),
                    labelStyle: TextStyle(
                      color: Color(0xFF27AE60),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextFormField(
                  initialValue: '',
                  style: const TextStyle(color: Color(0xFF27AE60)),
                  decoration: const InputDecoration(
                    labelText: 'Contraseña',
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF27AE60))),
                    labelStyle: TextStyle(
                      color: Color(0xFF27AE60),
                    ),
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  child: const Text("Ingresar",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainPage()),
                    );
                  },
                  style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all(Color(0xFF343434)),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xFF27AE60)),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
