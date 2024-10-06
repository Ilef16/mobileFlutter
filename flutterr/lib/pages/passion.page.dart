import 'package:flutter/material.dart';
import 'package:flutterr/menu/drawer.widget.dart';

class passion extends StatelessWidget {
  const passion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(title: Text("Certifications")),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SectionTitle(title: "Certifications"),
          CertificationItem(
            title: "Marketing Strategy Fundamentals",
            date: "Novembre 2023",
            organization: "SMstudy",
          ),
          CertificationItem(
            title: "Scrum Fundamentals Certified",
            date: "Novembre 2023",
            organization: "ScrumStudy",
          ),
        ],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class CertificationItem extends StatelessWidget {
  final String title;
  final String date;
  final String organization;

  const CertificationItem({
    required this.title,
    required this.date,
    required this.organization,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 18),
          ),
          subtitle: Text(
            "Date: $date\nOrganization: $organization",
            style: TextStyle(fontSize: 14),
          ),
          leading: Icon(Icons.star, color: Colors.orange),
        ),
        Divider(),
      ],
    );
  }
}