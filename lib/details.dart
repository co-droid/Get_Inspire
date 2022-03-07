import 'package:flutter/material.dart';
import 'people.dart';
class PeopleDetailsScreen extends StatelessWidget {
  final People people;

  PeopleDetailsScreen(this.people);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(people.title),
      ),
      body:

      Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                people.imageUrl,
                height: 400,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  people.year.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.0, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  people.description,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}