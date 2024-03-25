import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AbsensiPageView extends StatefulWidget {
  const AbsensiPageView({super.key});

  @override
  State<AbsensiPageView> createState() => _AbsensiPageViewState();
}

class _AbsensiPageViewState extends State<AbsensiPageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ... Widget Maps
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
            ),
          ),

          // ... Return Button
          Positioned(
            top: 10,
            left: 10,
            child: SafeArea(
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),

          // ... Widget Information Location
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, -1),
                    color: Colors.black12,
                    blurRadius: 5,
                    spreadRadius: 2,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 5,
                      width: 40,
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Activity Location",
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.location_pin,
                        color: Colors.green,
                        size: 50,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.76,
                        child: Text(
                          textAlign: TextAlign.justify,
                          maxLines: 4,
                          "Jl. Anggrek Kusuma B No.70 Karangsatria Kec. Tambun Utara, Bekasi, Jawa Barat 175, Indonesia",
                          style: GoogleFonts.outfit(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),

                  // ... Widget Button
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900,
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child: Text(
                        "Set Location",
                        style: GoogleFonts.outfit(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
