import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.only(left: 23),
          child: Icon(Icons.menu),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 23),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ],
        title: Image.asset(
          "assets/images/logo_app.png",
          width: 47,
          height: 47,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Text(
                        "Our way of loving\nyou back",
                        style: GoogleFonts.inter(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 23),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF2F2F2),
                          borderRadius: BorderRadius.circular(26.5),
                        ),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.search,
                              color: Color(0xff868A91),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Search",
                              style: GoogleFonts.inter(
                                  color: const Color(0xff161B28)
                                      .withOpacity(0.58)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              width: 92,
                              decoration: BoxDecoration(
                                color: const Color(0xff00623B),
                                borderRadius: BorderRadius.circular(24.5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 3),
                              child: Text(
                                "All",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              width: 92,
                              margin: const EdgeInsets.only(right: 15),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(24.5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 3),
                              child: Text(
                                "Watch",
                                style: GoogleFonts.inter(
                                  color: const Color(0xff868A91),
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              width: 92,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(24.5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 3),
                              child: Text(
                                "Shirt",
                                style: GoogleFonts.inter(
                                  color: const Color(0xff868A91),
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 15),
                              width: 92,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(24.5),
                              ),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 3),
                              child: Text(
                                "Shope",
                                style: GoogleFonts.inter(
                                  color: const Color(0xff868A91),
                                  fontSize: 20,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Text(
                        "New Arrivals",
                        style: GoogleFonts.inter(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(23),
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: 5,
                                mainAxisSpacing: 5,
                                mainAxisExtent: 251),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),

                        // Jumlah item di grid
                        children: [
                          Container(
                              // margin: const EdgeInsets.only(right: 15),
                              width: 177,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(24.5),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "assets/images/band.png",
                                    width: double.infinity,
                                    // height: 187,
                                    // fit: BoxFit.cover,
                                  ),
                                ],
                              )),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    height: 187,

                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    "assets/images/t-shirt.png",

                                    // height: 187,
                                    // fit: BoxFit.cover,
                                  ),
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
