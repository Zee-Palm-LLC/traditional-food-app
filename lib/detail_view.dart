// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:samosa_food_app/model/samosa_model.dart';

class DetailView extends StatelessWidget {
  final SamosaModel samosa;
  const DetailView({
    Key? key,
    required this.samosa,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back, color: Colors.white)),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.model_training_outlined,
                    color: Colors.white)),
          ],
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/background.jpg'),
                    fit: BoxFit.cover)),
            child: SafeArea(
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Positioned(
                      top: 20,
                      right: -40,
                      left: -10,
                      child: Image.asset(
                        samosa.image,
                        height: 600,
                        width: 700,
                        fit: BoxFit.cover,
                      )),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 24,left: 24,bottom: 30),
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                        child: Container(
                            width: double.infinity,
                            padding: const EdgeInsets.all(13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.shade100.withOpacity(0.1)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Spicy",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w100)),
                                const SizedBox(height: 5),
                                Text(samosa.title,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 34,
                                        fontWeight: FontWeight.w600)),
                                const SizedBox(height: 10),
                                Text(samosa.description,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300)),
                                const SizedBox(height: 10),
                                const Text('\$ 180',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600)),
                                const SizedBox(height: 50),
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        fixedSize:
                                            const Size(double.maxFinite, 44)),
                                    child: const Text(
                                      "ADD TO CART",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ))
                              ],
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
