import 'package:flutter/material.dart';
import 'package:covid_status/widgets/mini_container.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StatusScreen extends StatefulWidget {
  @override
  _StatusScreenState createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {

  int total;
  int discharged;
  int deaths;

  void data() async{
    http.Response response = await http.get('https://api.rootnet.in/covid19-in/stats/latest');
    if(response.statusCode == 200){
      var data = jsonDecode(response.body);
      setState(() {
        total = data['data']['summary']['total'];
        discharged = data['data']['summary']['discharged'];
        deaths = data['data']['summary']['deaths'];
      });
    }
    else{
      print(response.statusCode);
    }
  }

  @override
  void initState() {
    data();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('COVID STATUS')),
      ),
      body: Column(
        children: [
          MiniContainer(
            color: Colors.purpleAccent,
            label: 'Total',
            count: '$total',
          ),
          MiniContainer(
            color: Colors.redAccent,
            label: 'Deaths',
            count: '$deaths',
          ),
          MiniContainer(
            color: Colors.lightGreenAccent,
            label: 'Discharged Patients',
            count: '$discharged',
          ),
        ],
      ),
    );
  }
}


