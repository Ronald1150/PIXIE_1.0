import 'package:flutter/material.dart';

void main() {
  // ignore: prefer_const_constructors
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iniciar Sesión'),
      ),
      body: Center(
        child: Container(
          title: const Text('Iniciar Sesión'),
          width: 350.0, // Ancho del contenedor
          height: 500.0, // Alto del contenedor
          padding: const EdgeInsets.all(20.0), // Padding del contenedor
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 173, 217, 212),
            borderRadius: BorderRadius.circular(12.0), // Bordes redondeados
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(31, 58, 52, 149),
                blurRadius: 8.0,
                offset: Offset(2, 2),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes añadir la lógica de autenticación
                  final username = _usernameController.text;
                  final password = _passwordController.text;
                  print('Username: $username, Password: $password');
                },
                child: const Text('Ingresar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
