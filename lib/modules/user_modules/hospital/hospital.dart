import 'package:flutter/material.dart';
import 'package:h_care/shared/componant/componant.dart';
import 'package:h_care/shared/style/color.dart';

class Hospital extends StatelessWidget {
  const Hospital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hospital name",
                style: TextStyle(
                  color: mainColor,
                  fontSize: 30.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Address of Hospital",
                style: TextStyle(
                  color: secondColor,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                padding: const EdgeInsetsDirectional.all(8.0),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadiusDirectional.circular(15.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Intensive Care",
                      style: TextStyle(
                        color: mainColor,
                        fontSize: 25.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      children: [
                        Text(
                          "Number of Bed : 7",
                          style: TextStyle(
                            color: secondColor,
                            fontSize: 18.0,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.attach_money_outlined,
                          size: 22,
                          color: secondColor,
                        ),
                        const SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          "price : 100",
                          style: TextStyle(
                            color: secondColor,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 15.0,),
                    defaultButton(text: "booking bed", function: () {}),
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Specialties",
                style: TextStyle(
                  color: mainColor,
                  fontSize: 25.0,
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                childAspectRatio: 1 / 1,
                children: List.generate(
                  6,
                  (index) => buildGradItem(context),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}