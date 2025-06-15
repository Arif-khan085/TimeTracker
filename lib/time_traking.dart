import 'package:flutter/material.dart';
import 'package:ibmproject/project_manage.dart';
import 'package:ibmproject/task_manage.dart';

import 'add_time_entry.dart';
import 'all_entry.dart';

class TimeTraking extends StatefulWidget {
  const TimeTraking({super.key});

  @override
  State<TimeTraking> createState() => _TimeTrakingState();
}

class _TimeTrakingState extends State<TimeTraking> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text('Time Tracking'),
          bottom: TabBar(
              tabs: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AllEntry()));
                  },
                  child: Tab(
                    child: Text('All Entries',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AddTimeEntry()));
                  },
                  child: Tab(
                    child: Text('Group by Projects',style: TextStyle(fontSize: 20,color: Colors.white),),
                  ),
                ),
              ]
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(color: Colors.teal),
                  child: Center(child: Text('MENU',style: TextStyle(fontSize: 25, color: Colors.white,),)
                  )
              ),
              ListTile(
                leading: Icon(Icons.memory),
                title: Text('Project'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProjectManage()));
                },
              ),
              ListTile(
                leading: Icon(Icons.task),
                title: Text('Task'),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>TaskManage()));
                },
              ),
            ],
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('No time entries yet!',style: TextStyle(fontSize: 25),)),
            Center(child: Text("Tap the + button to add your first entry.",style: TextStyle(fontSize: 20,color: Colors.black26),)),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
      
        },
      
          backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      
      
        ),
      ),
    );
  }
}
