// ignore: unused_import
import 'package:covid19project/Models/alldata.dart';
import 'package:covid19project/Services/fetchapis.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'countriesinfo.dart';

class CountriesScreenInfo extends StatefulWidget {
  const CountriesScreenInfo({super.key});

  @override
  State<CountriesScreenInfo> createState() => _CountriesScreenInfoState();
}

class _CountriesScreenInfoState extends State<CountriesScreenInfo> {
  TextEditingController searchcontroller = TextEditingController();
  fetchapiall countries = fetchapiall();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 3,
          //backgroundColor: const Color.fromARGB(255, 165, 163, 163),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Column(
                children: [
                  //search box

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      onChanged: (value) {
                        setState(() {});
                      },
                      controller: searchcontroller,
                      decoration: InputDecoration(
                          hintText: 'Search with countries name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  )
                ],
              ),

              //list builder
              Expanded(
                child: FutureBuilder(
                  future: countries.countriesdata(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<dynamic>> snapshot) {
                    if (!snapshot.hasData) {
                      return ListView.builder(
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int index) {
                          return Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            child: ListTile(
                              leading: Container(
                                height: 50,
                                width: 50,
                                color: Colors.white,
                              ),
                              title: Container(
                                height: 10,
                                width: 10,
                                color: Colors.white,
                              ),
                              subtitle: Container(
                                height: 5,
                                width: 5,
                                color: Colors.white,
                              ),
                            ),
                          );
                        },
                      );
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          String name = snapshot.data![index]['country'];

                          if (searchcontroller.text.isEmpty) {
                            return InkWell(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CountriesDetails(
                                              name: snapshot.data![index]
                                                  ['country'],
                                              image: snapshot.data![index]
                                                  ['countryInfo']['flag'],
                                              totalcases: snapshot.data![index]
                                                  ['cases'],
                                              totalrecovered: snapshot
                                                  .data![index]['recovered'],
                                              totaldeaths: snapshot.data![index]
                                                  ['deaths'],
                                              active: snapshot.data![index]
                                                  ['active'],
                                              critical: snapshot.data![index]
                                                  ['critical'],
                                            )))
                              },
                              child: ListTile(
                                leading: Image(
                                    height: 50,
                                    width: 50,
                                    image: NetworkImage(
                                      snapshot.data![index]['countryInfo']
                                          ['flag'],
                                    )),
                                title: Text(snapshot.data![index]['country']),
                                subtitle: Text(
                                    snapshot.data![index]['cases'].toString()),
                              ),
                            );
                          } else if (name
                              .toLowerCase()
                              .contains(searchcontroller.text.toLowerCase())) {
                            return InkWell(
                              onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => CountriesDetails(
                                              name: snapshot.data![index]
                                                  ['country'],
                                              image: snapshot.data![index]
                                                  ['countryInfo']['flag'],
                                              totalcases: snapshot.data![index]
                                                  ['cases'],
                                              totalrecovered: snapshot
                                                  .data![index]['recovered'],
                                              totaldeaths: snapshot.data![index]
                                                  ['deaths'],
                                              active: snapshot.data![index]
                                                  ['active'],
                                              critical: snapshot.data![index]
                                                  ['critical'],
                                            )))
                              },
                              child: ListTile(
                                leading: Image(
                                    height: 50,
                                    width: 50,
                                    image: NetworkImage(
                                      snapshot.data![index]['countryInfo']
                                          ['flag'],
                                    )),
                                title: Text(snapshot.data![index]['country']),
                                subtitle: Text(
                                    snapshot.data![index]['cases'].toString()),
                              ),
                            );
                          } else {
                            return Container();
                          }
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),

          // ignore: dead_code
        ));
  }
}
