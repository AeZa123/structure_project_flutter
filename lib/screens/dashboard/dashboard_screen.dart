import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  DashboardScreen({super.key});

  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
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
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('ข้อมูลการใช้งาน'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.mail),
                title: Text('ติดต่อทีมงาน'),
                onTap: (){},
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('ออกจากระบบ'),
                onTap: (){},
              ),

              Divider(color: Colors.green[200], ),

              ListTile(
                leading: Icon(Icons.cancel),
                title: Text('ปิดเมนู'),
                onTap: (){},
              ),
            ],

          ),
        ),
      ),


      body: Center(
        child: Text('Dashboard Screen'),
      ),


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
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
