import 'dart:ui';

import 'package:flutter/material.dart';

import 'componnent.dart';
import 'model.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Pet> p = [
    Pet("Dog", "Golden", 20,
        "https://th.bing.com/th/id/OIP.875Uvd356M_upkjf-l8DlwHaE7?pid=ImgDet&rs=1"),
    Pet("Lablador", "Golden", 18,
        "https://th.bing.com/th/id/OIP.875Uvd356M_upkjf-l8DlwHaE7?pid=ImgDet&rs=1"),
    Pet("Dog", "Cardigan", 20,
        "https://th.bing.com/th/id/OIP.875Uvd356M_upkjf-l8DlwHaE7?pid=ImgDet&rs=1"),
    Pet("Cat", "Kitten", 10,
        "https://th.bing.com/th/id/OIP.7FC5YZ6Mu59zZSZSRymChwHaFj?pid=ImgDet&rs=1"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            toolbarHeight: 70,
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.grey.shade300,
            title: const Text("Pet Market ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ))),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  cursorColor: Colors.grey.shade200,
                  decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none),
                      hintText: 'Search ',
                      hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      prefixIcon: Container(
                          padding: const EdgeInsets.all(15),
                          width: 18,
                          child:
                              const Icon(Icons.search, color: Colors.black))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: p.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListItemHome(
                          pett: p[index],
                        );
                      }),
                ),
              )
            ],
          ),
        ));
  }
}
