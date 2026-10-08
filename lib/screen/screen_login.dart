import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScreenLogin extends StatefulWidget {

  ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final List usuarios = [
    {"nombre": "Rafael", "apellido": "Flórez", "edad": 18, "correo": "rafaelflorez@gmail.com", "telefono": "3146613993", "ciudad": "La Guajira", "contrasena": "1234567890"}
  ];

  @override
  Widget build(BuildContext context) {
    final ancho = MediaQuery.of(context).size;
    final TextEditingController _correoController = TextEditingController();
    final TextEditingController _contrasenaController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            SizedBox(
              width: ancho.width * 0.9,
              child: TextField(
                controller: _correoController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: "Ingrese su correo electronico",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.black38,
                ),
              ),
            ),
            SizedBox(height: 20,),
            SizedBox(
              width: ancho.width * 0.9,
              child: TextField(
                controller: _contrasenaController,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.black38,
                  border: OutlineInputBorder(),
                  hintText: "Ingrese su contraseña",
                  hintStyle: TextStyle(color: Colors.white)
                ),
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: () {
              for(var usuario in usuarios){
                if(usuario["correo"] == _correoController.text && usuario["contrasena"] == _contrasenaController.text){
                  Navigator.pushNamed(context, "/admin");
                }
              }
            }, child: Text("Iniciar Sesion"),)
          ],
        ),
      ),
    );
  }
}