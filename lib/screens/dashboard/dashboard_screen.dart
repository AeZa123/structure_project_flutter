import 'package:flutter/material.dart';
import 'package:structure_project_flutter/screens/bottomnav/account/account_screen.dart';
import 'package:structure_project_flutter/screens/bottomnav/home/home_screen.dart';
import 'package:structure_project_flutter/screens/bottomnav/notification/notification_screen.dart';
import 'package:structure_project_flutter/screens/bottomnav/report/report_screen.dart';
import 'package:structure_project_flutter/screens/bottomnav/setting/setting_screen.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {


  @override
  void initState() {
    _title = 'หน้าหลัก';
    // TODO: implement initState
    super.initState();
  }


  // สร้างตัวแปรเก็บข้อมูลการเปลี่ยนหน้าแอพ 
  int _currentIndex = 0;
  String _title = '';

  final List _children = [
    HomeScreen(),
    ReportScreen(),
    NotificationScreen(),
    SettingScreen(),
    AccountScreen()
  ];


  // สร้างฟังก์ชั่นการสลับหน้า
  void onTapBottomNav(int index){
    setState(() {
      _currentIndex = index;

      switch (index) {
        case 0:
          { _title = 'หน้าหลัก'; }
          break;
        
        case 1:
          { _title = 'รายงาน'; }
          break;
        case 2:
          { _title = 'แจ้งเตือน'; }
          break;
        case 3:
          { _title = 'ตั้งค่า'; }
          break;
        case 4:
          { _title = 'ฉัน'; }
          break;
        
      }

    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),

      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pinimg.com/originals/8f/5d/bb/8f5dbb2588f8d04046e53f2efad0a4b1.jpg'),
                  ),
                ),
                // otherAccountsPictures: [
                //   GestureDetector(
                //     child: CircleAvatar(
                //       backgroundImage: NetworkImage('https://i.pinimg.com/564x/bb/9a/62/bb9a62b500cfc9c4b025905f62e772dd.jpg'),
                //     ),
                //   )
                // ],
                accountName: Text('Suriya Rabalert'), 
                accountEmail: Text('emailaenakup@gmail.com'),
                decoration: BoxDecoration(
                  // color: Colors.indigo
                  image: DecorationImage(
                    image: NetworkImage('https://steamuserimages-a.akamaihd.net/ugc/3316087091430834677/48BE58BAC9CCE79BC7D32A4FC65C20B6B89FC790/?imw=5000&imh=5000&ima=fit&impolicy=Letterbox&imcolor=%23000000&letterbox=false'),
                    fit: BoxFit.fill
                  )
                ),
              ),

              ListTile(
                leading: Icon(Icons.info),
                title: Text('เกี่ยวกับเรา'),
                onTap: (){
                  Navigator.pushNamed(context, '/about');
                },
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('ข้อมูลการใช้งาน'),
                onTap: (){
                  Navigator.pushNamed(context, '/term');
                },
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('ติดต่อทีมงาน'),
                onTap: (){
                  Navigator.pushNamed(context, '/contact');
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('ออกจากระบบ'),
                onTap: (){
                  Navigator.pushNamed(context, '/start');
                },
              ),

              Divider(color: Colors.green[200], ),

              ListTile(
                leading: Icon(Icons.cancel),
                title: Text('ปิดเมนู'),
                onTap: (){
                  Navigator.of(context).pop();
                },
              ),
            ],

          ),
        ),
      ),


      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapBottomNav,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าหลัก'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart), 
            label: 'รายงาน'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications), 
            label: 'แจ้งเตือน'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings), 
            label: 'ตั้งค่า'
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: 'ฉัน'
          ),
          
        ],
      )

    );
  }
}
