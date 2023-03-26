import 'package:carousel_slider/carousel_slider.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samosa_food_app/detail_view.dart';
import 'package:samosa_food_app/model/samosa_model.dart';

import 'components/custom_indicators.dart';
import 'components/samosa_card.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  CarouselController? carouselController = CarouselController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.local_pizza, color: Colors.white)),
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
                image: AssetImage('assets/background.jpg'), fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Text("Types of Samosa",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 34,
                          fontWeight: FontWeight.w600))),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text("Select your favorite Samosa Dish",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300)),
              ),
              const SizedBox(height: 30),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    children: samosaList.map((urlOfItem) {
                      int index = samosaList.indexOf(urlOfItem);
                      return CustomIndicator(
                        currentIndex: _currentIndex,
                        index: index,
                      );
                    }).toList(),
                  )),
              const SizedBox(height: 50),
              CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                    viewportFraction: 0.73,
                    enlargeCenterPage: true,
                    autoPlay: false,
                    height: 455,
                    onPageChanged: (index, reason) {
                      _currentIndex = index;
                      setState(() {});
                    }),
                items: samosaList.map((i) {
                  return SamosaCard(
                    onTap: () {
                      Get.to(() => DetailView(samosa: i));
                    },
                    samosa: i,
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        onTap: (int val) {},
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        selectedBackgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.white.withOpacity(0.1),
        currentIndex: 0,
        items: [
          FloatingNavbarItem(icon: Icons.home, title: 'Home'),
          FloatingNavbarItem(icon: Icons.search, title: 'Search'),
          FloatingNavbarItem(icon: Icons.person_outline, title: 'Profile'),
        ],
      ),
    );
  }
}
