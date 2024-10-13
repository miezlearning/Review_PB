import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pertemuan_3/models/TextField.dart';
import 'package:pertemuan_3/models/custom_button.dart';
import 'package:pertemuan_3/models/password_field.dart';

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({super.key});

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool obscureText = true;
  bool _setuju = false;
  String? _selectedGender;
  void _togglePasswordVisibility() {
    setState(() {
      obscureText = !obscureText; // Mengubah status visibility
    });
  }

  String _result = ''; // Variabel untuk menyimpan hasil inputan

  void _submit() {
    setState(() {
      _result = 'Username: ${username.text}\n'
                'Password: ${password.text}\n'
                'Gender: ${_selectedGender ?? "Belum memilih"}\n'
                'Setuju: ${_setuju ? "Ya" : "Tidak"}\n';
      username.clear();
      password.clear();
      _selectedGender = null;
      _setuju = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9FF97),
      body: ListView(
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              margin: const EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                color: const Color(0xFFFFD18E),
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/medical_logo.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyTextField(
              controller: username,
              hintText: 'Masukkan Username Anda...',
              labelText: 'Username',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyPassWordField(
                controller: password,
                obsecure: obscureText,
                onvisibility: _togglePasswordVisibility),
          ),
          Container(
            width: double.infinity,
            height: 80,
            margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
            padding: const EdgeInsets.only(top: 5, left: 10, right: 10),
            decoration: BoxDecoration(
              color: const Color(0xFFFFD18E),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Gender",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Radio<String>(
                          value:
                              'Cowo', // Nilai yang akan disimpan jika dipilih
                          groupValue:
                              _selectedGender, // Grup nilai radio button
                          onChanged: (value) {
                            setState(() {
                              _selectedGender =
                                  value; // Mengubah nilai yang dipilih
                            });
                          },
                        ),
                        Text(
                          'Laki-laki',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Radio<String>(
                          value:
                              'Cewe', // Nilai yang akan disimpan jika dipilih
                          groupValue:
                              _selectedGender, // Grup nilai radio button
                          onChanged: (value) {
                            setState(() {
                              _selectedGender =
                                  value; // Mengubah nilai yang dipilih
                            });
                          },
                        ),
                        Text(
                          'Cewe',
                          style: GoogleFonts.poppins(fontSize: 14),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Checkbox(
                  value: _setuju,
                  onChanged: (bool? value) {
                    setState(() {
                      _setuju = value ?? false; // Update status checkbox
                    });
                  },
                ),
                Text(
                  "Accept of aggrement",
                  style: GoogleFonts.poppins(fontSize: 16),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyCustomButton(
              onPressed: _submit,
              title: "Sign Up",
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 110,
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(
                color: const Color(0xFFFFD18E),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Hasil jawaban',
                      style: GoogleFonts.poppins(
                          fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      _result,
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
