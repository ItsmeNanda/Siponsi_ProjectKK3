import 'package:flutter/material.dart';
import 'package:login_project/view/widgets/text.form.global.dart';
import 'package:login_project/utils/global.colors.dart';

class Dashboard extends StatelessWidget {
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
                          'Omar Nadiv!',
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
                        'Home',
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
            'History Absen',
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900),
          ),
        ),
        MyCard(
          title: '08 Januari 1998',
          content: 'Selasa',
          color: Colors.green,
        ),
        MyCard(
          title: '07 Januari 1998',
          content: 'Senin',
          color: Colors.green,
        ),
        MyCard(
          title: '04 Januari 1998',
          content: 'Jumat',
          color: Colors.green,
        ),
        MyCard(
          title: '03 Januari 1998',
          content: 'Kamis',
          color: Colors.red,
        ),
        MyCard(
          title: '02 Januari 1998',
          content: 'Rabu',
          color: Colors.yellow,
        ),
      ],
    );
  }
}

class MyCard extends StatelessWidget {
  final String title;
  final String content;
  final Color color;

  MyCard({
    required this.title,
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
                color: Colors.white,
              ),
            ),
          ),
          ListTile(
            title: Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
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
                  controller: passwordController,
                  text: 'Omar Nadiv',
                  obscure: false,
                  textInputType: TextInputType.emailAddress,
                ),

                const SizedBox(height: 35),
                Text(
                  'Absen',
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
                  text: 'Absen',
                  textInputType: TextInputType.text,
                  obscure: false,
                ),
                const SizedBox(height: 35),
                Text(
                  'Keterangan',
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
                  text: 'Keterangan',
                  textInputType: TextInputType.text,
                  obscure: false,
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
                        'Kirim',
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

  Widget _buildFormGroup(
      {required String labelText, required TextEditingController controller}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}

Widget _buildFormGroup(
    {required String labelText, required TextEditingController controller}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        labelText,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(height: 8.0),
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
      ),
    ],
  );
}

class SettingScreen extends StatelessWidget {
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
                            'Omar Nadiv',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Guru',
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
                      // Tambahkan logika logout di sini
                    },
                  ),
                ],
              ),
              SizedBox(height: 40),
              Card(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildInfoRow('NIP', '123456789'),
                      _buildDivider(),
                      _buildInfoRow('TTL', 'Banyumas, 30 Juli 1970'),
                      _buildDivider(),
                      _buildInfoRow(
                          'Alamat', 'Jl.Imam Bonjol, Sokaraja Lor, Sokaraja'),
                      _buildDivider(),
                      _buildInfoRow('Mapel', 'Ilmu Pengetahuan Alam (IPA)'),
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
