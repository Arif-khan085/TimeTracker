import 'package:flutter/material.dart';

class ProjectManage extends StatefulWidget {
  const ProjectManage({super.key});

  @override
  State<ProjectManage> createState() => _ProjectManageState();
}

class _ProjectManageState extends State<ProjectManage> {
  void showDeleteDialog(BuildContext context, String projectName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Add Project'),
          //Text('Are you sure you want to Add  "$projectName"?'),
          content: TextFormField(
            decoration: InputDecoration(
              labelText: 'Project Name',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Here you can add delete logic
                print('Deleted $projectName');
                Navigator.of(context).pop(); // Close the dialog
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
        title: Text('Manage Projects', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Project Alpha'),
            trailing: InkWell(
              onTap: () => showDeleteDialog(context, 'Project Alpha'),
              child: Icon(Icons.delete, color: Colors.red),
            ),
          ),
          ListTile(
            title: Text('Project Beta'),
            trailing: InkWell(
              onTap: () => showDeleteDialog(context, 'Project Beta'),
              child: Icon(Icons.delete, color: Colors.red),
            ),
          ),
          ListTile(
            title: Text('Project Gamma'),
            trailing: InkWell(
              onTap: () => showDeleteDialog(context, 'Project Gamma'),
              child: Icon(Icons.delete, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
