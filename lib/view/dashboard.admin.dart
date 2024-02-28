import 'package:flutter/material.dart';
import 'package:login_project/view/login.view.dart';
import 'package:login_project/view/widgets/text.form.global.dart';
import 'package:login_project/utils/global.colors.dart';

class Dashboard_admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    HomeScreen(),
    CardList(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(280),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
            ),
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profile.png'),
                      radius: 30,
                    ),
                    SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Halo,',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' Admin!',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 28),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kamis,',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '20 Januari 1998',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 0;
                        });
                      },
                      child: Text(
                        'Data Guru',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 1;
                        });
                      },
                      child: Text(
                        'History',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _currentIndex = 2;
                        });
                      },
                      child: Text(
                        'Setting',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: _pages[_currentIndex],
    );
  }
}

class CardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Data Absen Guru',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900),
          ),
        ),
        MyCard(
          title: 'Ilmu Pengetahuan Alam',
          nis: '54545454',
          content: 'Omar Nadiv',
          color: Colors.black,
        ),
        MyCard(
          title: 'Matematika',
          nis: '54545454',
          content: 'Nanda Bagus P',
          color: Colors.black,
        ),
        MyCard(
          title: 'Pelajaran Agama Islam',
          nis: '54545454',
          content: 'Nabella Rahmatus Sania',
          color: Colors.black,
        ),
        MyCard(
          title: 'Bahasa Indonesia',
          nis: '54545454',
          content: 'Osha Alfida',
          color: Colors.black,
        ),
        MyCard(
          title: 'PPKn',
          nis: '54545454',
          content: 'Pinka Ratna',
          color: Colors.black,
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  final String title;
  final String nis;
  final String content;
  final Color color;

  MyCard({
    required this.title,
    required this.nis,
    required this.content,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Text(
              content,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
            child: Text(
              nis,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
            ),
          ),
          ListTile(
            title: Text(
              title,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Data Data Guru',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900),
          ),
        ),
        MyCard(
          title: 'Ilmu Pengetahuan Alam',
          nis: '54545454',
          content: 'Omar Nadiv',
          color: Colors.black,
        ),
        MyCard(
          title: 'Matematika',
          nis: '54545454',
          content: 'Nanda Bagus P',
          color: Colors.black,
        ),
        MyCard(
          title: 'Pelajaran Agama Islam',
          nis: '54545454',
          content: 'Nabella Rahmatus Sania',
          color: Colors.black,
        ),
        MyCard(
          title: 'Bahasa Indonesia',
          nis: '54545454',
          content: 'Osha Alfida',
          color: Colors.black,
        ),
        MyCard(
          title: 'PPKn',
          nis: '54545454',
          content: 'Pinka Ratna',
          color: Colors.black,
        ),
      ],
    );
  }
}

class SettingScreen extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 5),
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                    radius: 30,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Admin',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Superuser',
                        style: TextStyle(
                          color: Color.fromARGB(255, 194, 194, 194),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    icon: Icon(Icons.logout),
                    onPressed: () {
                      // Navigate to Dashboard screen
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 12),
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 8),
                      Text(
                        'Username',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: GlobalColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),

                      //Email Input
                      TextFormGlobal(
                        controller: passwordController,
                        text: 'Admin',
                        obscure: false,
                        textInputType: TextInputType.emailAddress,
                      ),

                      const SizedBox(height: 8),
                      Text(
                        'Password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: GlobalColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),
                      //Password Input
                      TextFormGlobal(
                        controller: passwordController,
                        text: 'Woakwako099',
                        textInputType: TextInputType.text,
                        obscure: false,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Tipe',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: GlobalColors.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),
                      //Password Input
                      TextFormGlobal(
                        controller: passwordController,
                        text: 'Superuser',
                        textInputType: TextInputType.text,
                        obscure: false,
                      ),
                      const SizedBox(height: 20),

                      // Use ElevatedButton for navigation
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets
                              .only(), // Sesuaikan jarak ke bawah yang diinginkan
                          child: ElevatedButton(
                            onPressed: () {
                              // Navigate to Dashboard screen
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard_admin()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary:
                                  Colors.black, // Warna latar belakang tombol
                              onPrimary: Colors.white, // Warna teks pada tombol
                              padding: EdgeInsets.symmetric(
                                  vertical: 15), // Padding tombol
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              minimumSize: Size(double.infinity, 50),
                              alignment: Alignment.center,
                            ),
                            child: Text(
                              'Ubah',
                              style: TextStyle(
                                  fontSize: 18), // Gaya teks pada tombol
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Text(content),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.grey,
      height: 16,
    );
  }
}
