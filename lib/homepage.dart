import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Adventure",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        child: ListView(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/forestbg.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Forest Trail",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Text(
                        "Shanzu, Mombasa",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.red,
                  size: 18,
                ),
                Text("41"),
              ],
            ),
          ),
          SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "CALL",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.directions,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "ROUTE",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.share,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "SHARE",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
                "A verdant cool forest with open grasslands and fitness trails transformed from a Bamburi quarried barren landscape.Bamburi Forest Trails, located to the north of the cement plant, form a rare facility designed specifically for outdoor recreation.There are 4 designed trails meandering through the developing landscape of formerly restored quarry and reserve land."),
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        mini: true,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}