import 'package:flowers_app_ui/widgets/discount.dart';
import 'package:flowers_app_ui/widgets/flowers_list.dart';
import 'package:flowers_app_ui/widgets/home_search.dart';
import 'package:flowers_app_ui/widgets/tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
            child: Column(
              children: const [
                HomeSearch(),
                // discount widget
                Discount(),
                // tabs widget
                TabWidget(),
                // flowers separated list view
                FlowersList(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              selectedItemIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedFontSize: 20,
          currentIndex: selectedItemIndex,
          selectedItemColor: const Color.fromARGB(255, 44, 134, 101),
          unselectedItemColor: Colors.grey.shade500,
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag_outlined,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: selectedItemIndex == 2 ? Colors.green : Colors.red,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border_outlined,
              ),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}
