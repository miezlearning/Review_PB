import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DoctorListCard extends StatefulWidget {
  final Function()? onTap;
  final String imagePath;
  final String name;
  final double rating;
  final String address;
  final int age;
  const DoctorListCard(
    {
      super.key,
      required this.onTap,
      required this.imagePath,
      required this.name,
      required this.rating,
      required this.address,
      required this.age,
    }
  );

  @override
  State<DoctorListCard> createState() => _DoctorListCardState();
}

class _DoctorListCardState extends State<DoctorListCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 10, left: 15, right: 15),
        padding: const EdgeInsets.only(top: 23, bottom: 15),
        width: 140,
        height: 170,
        decoration: BoxDecoration(
          color: const Color(0xFFFFD18E),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                const SizedBox(
                  width: 85,
                  height: 85,
                ),
                Positioned(
                  left: 8,
                  child: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFA38F),
                      borderRadius: BorderRadius.circular(50),
                      image: DecorationImage(
                        image: AssetImage(widget.imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 19.5,
                  child: Center(
                    child: Container(
                      width: 45,
                      height: 25,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF7EE2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const FaIcon(
                            FontAwesomeIcons
                                .solidStar, // Ikon bintang dari FontAwesome
                            color: Color(0xFFE9FF97),
                            size: 10,
                          ),
                          Text(
                            '${widget.rating}', // Rating
                            style: GoogleFonts.poppins(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Text(
              widget.name,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('${widget.address}, ${widget.age} y.e.',
                style: GoogleFonts.poppins(
                  fontSize: 10,
                  fontWeight: FontWeight.normal,
                ))
          ],
        ),
      ),
    );
  }
}
