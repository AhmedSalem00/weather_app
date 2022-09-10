import 'package:flutter/material.dart';
import 'package:we1_app/colors/colors.dart';

class DrawrerScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor:Color.fromARGB(255, 122, 152, 220),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.settings,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star_rounded,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Favourite city',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.info_outline,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                        ),
                        Icon(
                          Icons.location_on_rounded,
                          size: 16,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.add_location_outlined,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Text(
                          'Other cities',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),

                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 0.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.report_outlined,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Report wrong location',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.headphones_outlined,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text(
                      'Contact us',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );



  }
}

