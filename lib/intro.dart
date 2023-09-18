import 'package:flutter/material.dart';
import 'package:flutterista_two/homepage.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //first container
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: 
                      (context) => const HomePage()));
                },
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height * 0.22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.darken),
                      image: AssetImage(
                        "images/forestbg.jpg",
                      ),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Basic Widgets",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
