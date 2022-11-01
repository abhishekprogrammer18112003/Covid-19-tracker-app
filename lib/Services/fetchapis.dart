import 'dart:convert';

import 'package:covid19project/Models/alldata.dart';
import 'package:covid19project/Services/Utilities/apiscollection.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class fetchapiall {
  Future<alldata> getalldata() async {
    final response = await http.get(Uri.parse(Apiurls.all));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body.toString());
      return alldata.fromJson(data);
    } else {
      throw Exception("Error");
    }
  }

  Future<List<dynamic>> countriesdata() async {
    // ignore: non_constant_identifier_names
    final Response = await http.get(Uri.parse(Apiurls.countries));
    // ignore: prefer_typing_uninitialized_variables
    var data;
    if (Response.statusCode == 200) {
      data = jsonDecode(Response.body);
      return data;
    } else {
      throw Exception('Error');
    }
  }
}
