import 'package:covid19project/Services/fetchapis.dart';
import 'package:covid19project/screens/countriessinformation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pie_chart/pie_chart.dart';

import '../Models/alldata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(
        seconds: 3,
      ),
      vsync: this)
    ..repeat();

  fetchapiall alldataapi = fetchapiall();

  List<Color> colors = [
    Colors.blue,
    const Color.fromARGB(255, 124, 33, 86),
    Colors.red
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Track Cases'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              const PopupMenuItem(value: '1', child: Text('Light Theme')),
              const PopupMenuItem(value: '2', child: Text('Dark Theme')),
            ],
          ),
        ],
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: alldataapi.getalldata(),
          builder: (BuildContext context, AsyncSnapshot<alldata> snapshot) {
            if (!snapshot.hasData) {
              return Expanded(
                flex: 1,
                child: SpinKitFadingCircle(
                  controller: _controller,
                  color: Colors.grey,
                  size: 55,
                ),
              );
            } else {
              return Column(
                children: [
                  //space between above barrel and piechart
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),

                  //piechart data
                  PieChart(
                    dataMap: {
                      'Total cases':
                          double.parse(snapshot.data!.cases.toString()),
                      'Recovered':
                          double.parse(snapshot.data!.recovered.toString()),
                      'Deaths': double.parse(snapshot.data!.deaths.toString()),
                    },
                    chartValuesOptions: const ChartValuesOptions(
                        showChartValuesInPercentage: true),
                    animationDuration: const Duration(milliseconds: 500),
                    legendOptions: const LegendOptions(
                        legendPosition: LegendPosition.left),
                    chartType: ChartType.ring,
                    chartRadius: 120,
                    colorList: colors,
                  ),

                  //space between piechart and data
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .06,
                  ),

                  //card for storing cases numbers
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 20, bottom: 40),
                    child: Card(
                      color: const Color.fromARGB(186, 227, 222, 222),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            //data
                            ReusableRow(
                                title: "Total cases",
                                value: snapshot.data!.cases.toString()),
                            ReusableRow(
                                title: "Total Recovered",
                                value: snapshot.data!.recovered.toString()),
                            ReusableRow(
                                title: "Total Deaths",
                                value: snapshot.data!.deaths.toString()),
                            ReusableRow(
                                title: "Today's cases",
                                value: snapshot.data!.todayCases.toString()),
                            ReusableRow(
                                title: "Today's Recovered",
                                value:
                                    snapshot.data!.todayRecovered.toString()),
                            ReusableRow(
                                title: "Today's Deaths",
                                value: snapshot.data!.todayDeaths.toString()),
                            ReusableRow(
                                title: "Active Cases",
                                value: snapshot.data!.active.toString()),
                            ReusableRow(
                                title: "Affected Countries",
                                value: snapshot.data!.affectedCountries
                                    .toString()),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //btn to check for all countries
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const CountriesScreenInfo()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * .06,
                      width: MediaQuery.of(context).size.width * .82,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Search for other countries',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              );
            }
          },
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 13, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(value),
        ],
      ),
    );
  }
}
