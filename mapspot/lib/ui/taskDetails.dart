import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mapspot/functions/drawer.dart';
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class TaskDetails extends StatefulWidget{
  @override
  _TaskDetails createState() => _TaskDetails();

}


class _TaskDetails extends State<TaskDetails>{

final GlobalKey<AnimatedCircularChartState> _chartKey = GlobalKey<AnimatedCircularChartState>();
  

  List<CircularStackEntry> data = <CircularStackEntry>[
     CircularStackEntry(
      <CircularSegmentEntry>[
        CircularSegmentEntry(500.0,Colors.red[200],rankKey: 'Q1'),
        CircularSegmentEntry(1000.0,Colors.green[200],rankKey: 'Q2'),

      ],
      rankKey: 'Partes'
    ),
  ];

  int _counter =0;
  void _incremetCounter(){
    List<CircularStackEntry> nextdata = <CircularStackEntry>[
     CircularStackEntry(
      <CircularSegmentEntry>[
        CircularSegmentEntry(1500.0,Colors.red,rankKey: 'Q1'),
        CircularSegmentEntry(750.0,Colors.green,rankKey: 'Q2'),

      ],
      rankKey: 'Quarterly Profits'
    ),
  ];
  setState(() {
    _chartKey.currentState.updateData(nextdata);
  });
  }

  
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      drawer: DrawerPage(),
      appBar: AppBar(
        title: Image.asset('assets/logo.png', fit: BoxFit.cover),
         centerTitle: true,
        actions: [
        
        ],
        backgroundColor: Color.fromRGBO(234, 4, 4, 1),
        elevation: 20.0,
      ),
      
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
            Container(width: 50,
            height: 20,
            color: Colors.green,
            ),
            Text("Tamamlanan", style:TextStyle(fontSize: 16),),
            Container(width: 50,
            height: 20,
            color: Colors.red,
            ),
            Text("Devam Eden", style:TextStyle(fontSize: 16),),
          ],
          ),
          Expanded(
            child: AnimatedCircularChart(
            key: _chartKey,
            size: const Size(300.0,300.0),
            initialChartData: data,
            chartType: CircularChartType.Pie,
          ),
          ),
          
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  color: Colors.orange,
                  onPressed: (){
                    Navigator.pushNamed(context, "/c");
                  },
                  child: Text(
                    'Devam Eden Görevler', 
                    style: TextStyle(fontSize: 20,color: Colors.white)
                  ),
                ),
                RaisedButton(
                  color: Colors.green,
                  onPressed: (){
                    //Navigator.pushNamed(context, "/tasks");
                  },
                  child: Text(
                    'Tamamlanan Görevler',
                    style: TextStyle(fontSize: 20,color: Colors.white)
                  ),
                ),
              ],
            ),
          ),
        ],
        ),
      ),
    );
  }

}