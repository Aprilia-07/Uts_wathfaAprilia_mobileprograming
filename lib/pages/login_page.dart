import "package:awesome_dialog/awesome_dialog.dart";
import 'package:flutter/material.dart';
import 'package:resep_app/main.dart';
// ignore: unused_import
import 'package:resep_app/resepbar_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  // ignore: unused_field
  final TextEditingController _controlerLastName = TextEditingController();
  // ignore: unused_field
  final TextEditingController _controlerFirstName = TextEditingController();

  String? name;

  void onSubmit() {
    formKey.currentState!.save();
    if (formKey.currentState!.validate() || formKey.currentState != null) {
      setState(() {
        name = _controlerFirstName.text;
      });

      Navigator.of(context).push(
        MaterialPageRoute(builder: (builder) => const ResepApp()),
      );

      _controlerFirstName.clear();
      _controlerLastName.clear();
    }
  }

  @override
  void dispose() {
    _controlerFirstName.dispose();
    _controlerLastName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "MyRecipe",
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextFormField(
                  controller: _controlerFirstName,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    label: Text("First Name"),
                    hintText: 'first name',
                  ),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        !value.contains('')) {
                      return 'Masukan Nama Dengan Benar';
                    }
                    if (value != 'wathfa aprilia') {
                      return 'nama Salah';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  controller: _controlerLastName,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text("Last Name"),
                    hintText: 'Masukkan nama belakang',
                    icon: Icon(Icons.password),
                  ),
                  validator: (value) {
                    if (value == null ) {
                      return 'Nama anda Salah';
                    }

                    if (value != 'watfa') {
                      return 'Password Salah';
                    }

                    return null;
                  },
                ),
                const SizedBox(height: 16),
                ElevatedButton.icon(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      onSubmit();
                    } else {
                      AwesomeDialog(
                        context: context,
                        dialogType: DialogType.error,
                        animType: AnimType.scale,
                        showCloseIcon: true,
                        title: 'Warning',
                        desc: 'Invalid first / last name  ',
                        btnOkOnPress: () {},
                      ).show();
                    }
                  },
                  icon: const Icon(Icons.login_sharp),
                  label: const Text("Login"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AwesomeDialog {
}