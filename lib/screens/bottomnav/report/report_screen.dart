import 'package:flutter/material.dart';
import 'package:http/http.dart' as http; 
import 'package:structure_project_flutter/models/covid_model.dart';

import 'components/bar_chart_page.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {

  CovidModel? _dataCovidAPI;

  // สร้าง function ทดสอบโหลดข้อมูลจาก api
  Future<void> getData()async{
    // var url = 'https://covid19.th-stat.com/api/open/today';
    var url = Uri.https('covid19.th-stat.com', '/api/open/today');
    try{
      var response = await http.get(url);
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');


      setState(() {
        _dataCovidAPI = covidModelFromJson(response.body);
      });


    }catch(error){
      print(error);
    }
  }


  @override
  void initState() {
    getData();
    // TODO: implement initState
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'ติดเชื้อสะสม',
                              style: TextStyle(fontSize: 20.0, color: Colors.white),
                            ),
                            Text( 
                              '${_dataCovidAPI?.confirmed ?? "loading"}',
                              style: TextStyle(fontSize: 40.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10.0)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'เสียชีวิต',
                              style: TextStyle(fontSize: 20.0, color: Colors.white),
                            ),
                            Text( 
                               '${_dataCovidAPI?.deaths ?? "loading"}',
                              style: TextStyle(fontSize: 40.0, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:24.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, right: 16.0, left: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'หายแล้ว',
                                style: TextStyle(fontSize: 20.0, color: Colors.white),
                              ),
                              Text(
                                '${_dataCovidAPI?.recovered ?? "loading"}',
                                style: TextStyle(fontSize: 30.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'รักษาอยู่',
                                style: TextStyle(fontSize: 20.0, color: Colors.white),
                              ),
                              Text(
                                '${_dataCovidAPI?.hospitalized ?? "loading"}',
                                style: TextStyle(fontSize: 30.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16.0, right: 16.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: <Widget>[
                              Text(
                                'รายใหม่',
                                style: TextStyle(fontSize: 20.0, color: Colors.white),
                              ),
                              Text(
                                 '${_dataCovidAPI?.newConfirmed ?? "loading"}',
                                style: TextStyle(fontSize: 30.0, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),
            Expanded(
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.only(
                      topLeft: const Radius.circular(40.0),
                      topRight: const Radius.circular(40.0),
                  )
                ),
                child: Column(
                children: <Widget>[
                   BarChartPage(),
                  // Text('BarChartPage')
                ],
                  ),
              ),
            )
          ],
        ),
    );
  }
}
