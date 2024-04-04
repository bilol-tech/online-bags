import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../../../constant/style_colors.dart';

class YangiSumkalarBarchasi extends StatelessWidget {
  const YangiSumkalarBarchasi({super.key});

  @override

  String _formatCurrency(int amount) {
    final formatter = NumberFormat.currency(locale: 'uz_UZ', symbol: '');
    return formatter.format(amount);
  }

  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var width = mediaQuery.size.width;

    // double screenWidth = MediaQuery.of(context).size.width;
    // int crossAxisCount = (screenWidth / 200).floor();
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            }
            ,child: Icon(Icons.arrow_back_ios, color: AppColors.appMainColorGreen, size: height * 0.022)),
        actions: [
          Icon(Icons.search, size: height * 0.030,),
          const SizedBox(width: 11,),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: SafeArea(
          child: Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 10.0, // Spacing between columns
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.80
              ),
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Stack(
                  children: [
                    Container(
                      // width: width * 0.434,
                      // height: height * 0.260,
                      decoration: const BoxDecoration(
                          color: Color(0xffEDF3F4),
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: height * 0.13,
                            // width: height * 0.16,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/home_page/womanBag.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10))),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: SizedBox(
                              width: height * 0.13,
                              child: Text(
                                "Exotic Multicolor Women latest Fashion Handbags",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontSize: height * 0.012),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "${_formatCurrency(295000)}",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontSize: height * 0.014,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "so\'m",
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.poppins(
                                    fontSize: height * 0.012),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "${_formatCurrency(420000)}so\'m",
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.poppins(
                                  fontSize: height * 0.011,
                                  color: Colors.grey,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.grey),
                            ),
                          ),
                          const SizedBox(
                            height: 3.5,
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                      width: height * 0.10,
                                      child: Text(
                                        "Prado new Fashion",
                                        overflow: TextOverflow.ellipsis,
                                        style: GoogleFonts.poppins(
                                            fontSize: height * 0.011),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 5.0),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: height * 0.012,
                                          width: height * 0.012,
                                          decoration: const BoxDecoration(
                                              color: Color(0xffC4A60C),
                                              shape: BoxShape.circle),
                                          child: Center(
                                            child: Icon(
                                              Icons.star_outlined,
                                              color: Colors.white,
                                              size: height * 0.008,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "4.0",
                                          style: GoogleFonts.poppins(
                                              fontSize: height * 0.012),
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Icon(
                                          Icons.message,
                                          color: const Color(0xffC4A60C),
                                          size: height * 0.014,
                                        ),
                                        const SizedBox(
                                          width: 4,
                                        ),
                                        Text(
                                          "10",
                                          style: GoogleFonts.poppins(
                                              fontSize: height * 0.012),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  height: height * 0.040,
                                  width: height * 0.040,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(0xff138862)),
                                  child: Center(
                                    child: Icon(
                                      Icons.shopping_cart,
                                      color: const Color(0xffFFFFFF),
                                      size: height * 0.020,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      left: height * 0.004,
                      top: height * 0.004,
                      child: Container(
                        height: height * 0.022,
                        width: height * 0.033,
                        decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4)),
                            color: Color(0xffFACD32)),
                        child: Icon(
                          Icons.delivery_dining,
                          size: height * 0.018,
                        ),
                      ),
                    ),
                    Positioned(
                      left: height * 0.041,
                      top: height * 0.004,
                      child: Container(
                        height: height * 0.022,
                        width: height * 0.041,
                        decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4)),
                            color: Color(0xffE3003A)),
                        child: Center(
                            child: Text(
                              "-30%",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height * 0.012,
                                  color: const Color(0xffFFFFFF)),
                            )),
                      ),
                    ),
                    Positioned(
                      left: height * 0.0860,
                      top: height * 0.004,
                      child: Container(
                        height: height * 0.022,
                        width: height * 0.053,
                        decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(4)),
                            color: Color(0xffF65A18)),
                        child: Center(
                            child: Text(
                              "Yangilik",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w700,
                                  fontSize: height * 0.011,
                                  color: const Color(0xffFFFFFF)),
                            )),
                      ),
                    ),
                    Positioned(
                      top: height * 0.122,
                      left: height * 0.016,
                      child: Container(
                        height: height * 0.015,
                        width: height * 0.095,
                        decoration: const BoxDecoration(
                            borderRadius:
                            BorderRadius.all(Radius.circular(20)),
                            color: Color(0xff178663)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: height * 0.020, top: height * 0.002),
                          child: Text(
                            "Bugun, 18:23 dan",
                            style: GoogleFonts.poppins(
                                fontSize: height * 0.008,
                                color: const Color(0xffFFFFFF)),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.119,
                      left: height * 0.013,
                      child: Container(
                        height: height * 0.020,
                        width: height * 0.020,
                        decoration: BoxDecoration(
                            color: const Color(0xffF9D031),
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: const Color(0xffFFFFFF), width: 1.6)),
                        child: Center(
                          child: Icon(
                            Icons.delivery_dining,
                            size: height * 0.013,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: height * 0.118,
                      left: height * 0.123,
                      child: Container(
                        height: height * 0.025,
                        width: height * 0.025,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xffFFFFFF)),
                        child: Center(
                          child: Icon(
                            Icons.favorite,
                            color: const Color(0xffD1DCD7),
                            size: height * 0.017,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          ),
      ),
      );
  }
}
