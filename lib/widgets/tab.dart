import 'package:flutter/material.dart';

class TabWidget extends StatefulWidget {
  const TabWidget({Key? key}) : super(key: key);

  @override
  State<TabWidget> createState() => _TabWidgetState();
}

class _TabWidgetState extends State<TabWidget> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    List tabsList = ["all", "indoor", "autdoor", "popular"];
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 40),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: tabsList.length,
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 15,
            );
          },
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 1,
                    color: selectedIndex == index
                        ? Colors.grey.shade600
                        : Colors.grey.shade200,
                  ),
                ),
                child: Text(
                  tabsList[index],
                  style: TextStyle(
                    fontWeight: index == selectedIndex
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: index == 1
                        ? Colors.grey.shade700
                        : Colors.grey.shade600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            );
          }),
    );
  }
}
