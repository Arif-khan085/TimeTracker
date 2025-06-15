import 'package:flutter/material.dart';

class TaskManage extends StatefulWidget {
  const TaskManage({super.key});

  @override
  State<TaskManage> createState() => _TaskManageState();
}

class _TaskManageState extends State<TaskManage> {
  void showDeleteDialog(BuildContext context, String taskName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Task'),
          //Text('Are you sure you want to Add "$taskName"?'),
          content: TextFormField(
            decoration: InputDecoration(
              labelText: 'Task Name',

            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close dialog
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add delete logic here
                print('Deleted $taskName');
                Navigator.of(context).pop(); // Close dialog
              },
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        title: Text('Manage Tasks', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Task A'),
            trailing: InkWell(
              onTap: () => showDeleteDialog(context, 'Task A'),
              child: Icon(Icons.delete, color: Colors.red),
            ),
          ),
          ListTile(
            title: Text('Task B'),
            trailing: InkWell(
              onTap: () => showDeleteDialog(context, 'Task B'),
              child: Icon(Icons.delete, color: Colors.red),
            ),
          ),
          ListTile(
            title: Text('Task C'),
            trailing: InkWell(
              onTap: () => showDeleteDialog(context, 'Task C'),
              child: Icon(Icons.delete, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
