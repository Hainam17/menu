import 'package:flutter/material.dart';
class Job extends StatefulWidget {
  const Job({Key? key}) : super(key: key);

  @override
  _JobState createState() => _JobState();
}

class _JobState extends State<Job> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Align(
          alignment: Alignment.center,
          child: Text(
            'Các công việc',
          ),
        ),
      ),
      body: ListView(
        children: [],
      ),
    );
  }
}
