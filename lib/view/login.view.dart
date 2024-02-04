import 'package:flutter/material.dart';
import 'package:login_project/utils/global.colors.dart';
// import 'package:login_project/view/widgets/button.global.dart';
import 'package:login_project/view/widgets/text.form.global.dart';
import 'package:login_project/view/dashboard.view.dart'; // Import dashboard_view.dart

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/pana.png',
                    width: 400,
                    height: 200,
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10), // Tambahkan padding di sini
                  child: Text(
                    'Silahkan login untuk',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: GlobalColors.textColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  'melanjutkan ke halaman berikutnya',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 35),
                Text(
                  'Username',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),

                //Email Input
                TextFormGlobal(
                  controller: emailController,
                  text: 'Masukkan username anda',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 35),
                Text(
                  'Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: GlobalColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),
                //Password Input
                TextFormGlobal(
                  controller: passwordController,
                  text: 'Masukkan password anda',
                  textInputType: TextInputType.text,
                  obscure: true,
                ),
                const SizedBox(height: 70),

                // Use ElevatedButton for navigation
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: 50), // Sesuaikan jarak ke bawah yang diinginkan
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to Dashboard screen
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Dashboard()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // Warna latar belakang tombol
                        onPrimary: Colors.white, // Warna teks pada tombol
                        padding: EdgeInsets.symmetric(
                            vertical: 15), // Padding tombol
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10.0), // Sudut yang tidak terlalu bulat
                        ),
                        minimumSize: Size(double.infinity, 50), // Lebar penuh
                        alignment: Alignment.center, // Posisi teks di tengah
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 18), // Gaya teks pada tombol
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
