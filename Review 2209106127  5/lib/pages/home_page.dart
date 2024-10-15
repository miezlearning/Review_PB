import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Kalian'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Headline Large',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20),
            Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
            Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
            Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final mySnackBar = SnackBar(
                  content: Text("Berhasil membuat SnackBar"),
                  duration: Duration(seconds: 3),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Colors.amberAccent,
                );
                ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
              },
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Konfirmasi',
                      ),
                      content: Text(
                        'Apakah Anda yakin ingin mendaftar dengan username?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Tutup dialog
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Cancel'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          },
                          child: Text(
                            'Cancel',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('Selamat datang, !'),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                          child: Text(
                            'Confirm',
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
