import 'package:flowers_app_ui/models/flower.dart';
import 'package:flowers_app_ui/widgets/detail_add_to_cart.dart';
import 'package:flowers_app_ui/widgets/detail_bar.dart';
import 'package:flowers_app_ui/widgets/item_details.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final Flower flower;
  const DetailScreen({required this.flower, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: Column(
            children: [
              const DetailBar(),
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * .45,
                child: Image.asset(
                  flower.image,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // flower detail
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    flower.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        size: 20,
                        color: Color.fromARGB(255, 77, 191, 149),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(flower.rating.toString()),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "(${flower.reviewCount} Reviews)",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              // description text
              Text(
                "this is the description text here and there and where this is the description text here and there and where this is the description text here and there and where this is the description text here and there and where",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  height: 1.5,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemDetails(
                    label: "Size",
                    text: flower.size,
                  ),
                  ItemDetails(
                    label: "Plant",
                    text: flower.plant,
                  ),
                  ItemDetails(
                    label: "Height",
                    text: flower.height.toString(),
                  ),
                  ItemDetails(
                    label: "Humidnity",
                    text: "${flower.humidnity.toString()} %",
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const DetailAddToCart(),
            ],
          ),
        ),
      ),
    );
  }
}
