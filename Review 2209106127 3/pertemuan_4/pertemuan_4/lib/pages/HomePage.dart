import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pertemuan_3/models/categories.dart';
import 'package:pertemuan_3/models/doctor_list_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE9FF97),
      body: ListView(
        children: [
          SizedBox(
            width: 100,
            height: 77,
            // color: Colors.yellow,
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 5, 10, 0),
                      child: Text(
                        'Hello, ',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(12, 0, 10, 7),
                      child: Text(
                        'Jerome Bell',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 112),
                Container(
                  width: 58,
                  height: 57,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(50),
                    image: const DecorationImage(
                      image: AssetImage("assets/dandadan.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 170,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color(0xFFFFD18E),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Container(
                  width: 110,
                  height: 170,
                  margin: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage("assets/dokter.jpeg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: 165,
                  height: 170,
                  // color: Colors.red,
                  margin: const EdgeInsets.fromLTRB(5, 5, 10, 5),
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        "How do you fell?",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          "Fill out your medical\ncard right now",
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 11,
                          ),
                        ),
                      ),
                      Container(
                        width: 165,
                        height: 40,
                        margin: const EdgeInsets.only(top: 15),
                        decoration: BoxDecoration(
                          color: const Color(0xFFFF7EE2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Get Started",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 70,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
            decoration: BoxDecoration(
              color: const Color(0xFFFFD18E),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.search,
                  size: 40,
                  color: Colors.black,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "How can we help you?",
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Categories',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 160),
                  child: Text(
                    'see All',
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 85,
            margin: const EdgeInsets.only(bottom: 10),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Center(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (context, index){
                  return Categories(
                    onTap: (){}, 
                    kategori: 'Dentist', 
                    icon: FontAwesomeIcons.tooth
                  );
                }
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Doctor list',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: Text(
                  'see All',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.infinity,
            height: 400,
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: GridView.builder(
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10, // Jarak vertikal antar item
              ), 
              itemBuilder: (BuildContext context,int index){
                return DoctorListCard(
                  onTap: (){}, 
                  imagePath: 'assets/dokter_cowo.jpeg', 
                  name: 'Joko tingkir', 
                  rating: 3.5, 
                  address: 'Mulawarman', 
                  age: 20
                );
              }
            )
          ),
        ],
      ),
    );
  }
}