import 'package:flowers_app_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class DetailBar extends StatelessWidget {
  const DetailBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade500),
            shape: BoxShape.circle,
          ),
          child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HomeScreen();
                }));
              },
              child: const Icon(Icons.arrow_back)),
        ),
        const Text("Details"),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey.shade500),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.favorite_border_outlined),
        ),
      ],
    );
  }
}
