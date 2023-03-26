import 'package:flutter/material.dart';
import 'package:samosa_food_app/data/constants.dart';
import 'package:samosa_food_app/model/samosa_model.dart';

class SamosaCard extends StatelessWidget {
  final VoidCallback onTap;
  final SamosaModel samosa;
  const SamosaCard({super.key, required this.onTap, required this.samosa});

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 10,
        color: CustomColor.kBackground,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
            height: 455,
            width: 280,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: CustomColor.kBackground,
                borderRadius: BorderRadius.circular(20)),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Center(
                  child: Container(
                      height: 190,
                      width: 190,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(samosa.image),
                              fit: BoxFit.cover)))),
               Text(samosa.title,
                  style:const  TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600)),
              const SizedBox(height: 5),
              Text(samosa.description,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w200)),
              const Spacer(),
              ElevatedButton(
                  onPressed: onTap,
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      fixedSize: const Size(double.maxFinite, 44)),
                  child: const Text(
                    "ADD TO CART",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ))
            ])));
  }
}
