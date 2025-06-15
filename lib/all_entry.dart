import 'package:flutter/material.dart';

class AllEntry extends StatefulWidget {
  const AllEntry({super.key});

  @override
  State<AllEntry> createState() => _AllEntryState();
}

class _AllEntryState extends State<AllEntry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'All Time Entries',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 11,
              itemBuilder: (BuildContext context, int index) { // ✅ Index required here
                return Card(
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    title: const Text('Project Gamma - Task A',style: TextStyle(color: Colors.teal),),
                    subtitle: const Padding(
                      padding: EdgeInsets.only(right: 200),
                      child: Column(
                        children: [
                          Text('Total Time - 1 hour '),
                          Text('Date : 14-06-2025'),
                          Text('Note : New work '),
                        ],
                      ),
                    ),

                    trailing: InkWell(
                      onTap: (){

                      },
                      child: const InkWell(
                        child: Icon(
                          Icons.delete,color: Colors.red,),
                      ),
                    ),
                  ),
                );
              },
            ),
          )


        ],
      ),
    );
  }
}
