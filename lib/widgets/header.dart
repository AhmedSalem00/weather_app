

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:we1_app/icons/icons.dart';
import 'package:we1_app/services/weahter_services.dart';

class Header extends StatefulWidget {
  Header(
      {super.key,
      required this.backgroundColor,
      required this.CityName,
      required this.description,
      required this.descriptionIMG,
      required this.StateName,
      required this.temp});

  String CityName;
  String StateName;
  double temp;
  String descriptionIMG;
  String description;
  Color backgroundColor;

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  WeatherService weatherService = WeatherService();
  IconData textfieldClearIcon = Icons.clear;
  var textfieldController = TextEditingController();
  bool _isLoading = false;
  bool notFound = false;

  loadingFunc() async {
    await weatherService.getWeatherData();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: MediaQuery.of(context).size.height / 3,
      backgroundColor: widget.backgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: Column(
          children: [
            _isLoading
                ? Lottie.network(rainyIcon, height: 50)
                : Container(
                    width: 700,
                    height: 50,
                    child: TextField(
                      controller: textfieldController,
                      onSubmitted: (value) {
                        setState(() {
                          _isLoading = true;
                          city = value;
                          Future.delayed(Duration(seconds: 1), () {
                            loadingFunc();
                            textfieldController.clear();
                          });
                        });
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                            onPressed: () {
                              textfieldController.clear();
                              FocusScope.of(context).unfocus();
                            },
                            icon: Icon(textfieldClearIcon)),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                        hintText: 'Search for  cities',
                        hintStyle: TextStyle(
                            color: Color.fromARGB(133, 255, 255, 255)),
                        filled: true,
                        fillColor: Color.fromARGB(18, 255, 255, 255),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                        disabledBorder: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ),
            SizedBox(height: 25),
            notFound
                ? Text('not found')
                : SingleChildScrollView(

                  child: Row(
                          children: [
                            Column(
                              children: [

                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    widget.temp.toString() + '°',
                                    style: const TextStyle(
                                        fontSize: 60, fontWeight: FontWeight.w200),
                                  ),
                                ),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    widget.CityName,
                                    style: TextStyle(fontSize: 25),
                                  ),
                                ),

                                const SizedBox(height: 5),
                                SizedBox(
                                  width: 200,
                                  child: Text(
                                    widget.StateName,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ),

                              ],
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15),
                              child: Container(
                                width: 120,
                                height: 150,
                                child: Column(
                                  children: [
                                    Lottie.network(widget.descriptionIMG.toString(),
                                        fit: BoxFit.cover),
                                    Text(
                                      widget.description,
                                      textAlign: TextAlign.center,
                                    ),

                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                )
          ],
        ),
      ),
    );
  }
}
