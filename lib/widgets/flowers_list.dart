import 'package:flowers_app_ui/models/flower.dart';
import 'package:flowers_app_ui/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class FlowersList extends StatelessWidget {
  const FlowersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List flowersList = Flower.getAllFlowers();
    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: 40),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: flowersList.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 10,
          );
        },
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(flower: flowersList[index]);
              }));
            },
            child: Container(
              height: 200,
              decoration: BoxDecoration(color: Colors.grey.shade300),
              child: Column(
                children: [
                  Row(
                    children: [
                      RotatedBox(
                          quarterTurns: 135,
                          child: Text(flowersList[index].name)),
                      Image.asset(
                        flowersList[index].image,
                        width: 80,
                        height: 150,
                        fit: BoxFit.cover,
                      ),
                      Text(flowersList[index].price.toString())
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text("Add to Cart"),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.favorite_border_outlined,
                          color: Colors.white,
                          size: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
