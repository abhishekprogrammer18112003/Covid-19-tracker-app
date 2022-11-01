import 'package:covid19project/screens/homescreen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CountriesDetails extends StatefulWidget {
  String image, name;
  int totalcases, totaldeaths, totalrecovered, active, critical;
  CountriesDetails({
    super.key,
    required this.name,
    required this.image,
    required this.totalcases,
    required this.totaldeaths,
    required this.totalrecovered,
    required this.active,
    required this.critical,
  });

  @override
  State<CountriesDetails> createState() => _CountriesDetailsState();
}

class _CountriesDetailsState extends State<CountriesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: const Color.fromARGB(255, 165, 163, 163),
        centerTitle: true,
        title: Text(widget.name),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 80,
                ),
                child: Card(
                  color: const Color.fromARGB(186, 227, 222, 222),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        ReusableRow(
                            title: 'Total Cases',
                            value: widget.totalcases.toString()),
                        ReusableRow(
                            title: 'Total Recovered',
                            value: widget.totalrecovered.toString()),
                        ReusableRow(
                            title: 'Total Deaths',
                            value: widget.totaldeaths.toString()),
                        ReusableRow(
                            title: 'Active Cases',
                            value: widget.active.toString()),
                        ReusableRow(
                            title: 'Critical',
                            value: widget.critical.toString()),
                      ],
                    ),
                  ),
                ),
              ),
              CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(widget.image),
              ),
            ],
          )
        ],
      )),
    );
  }
}
