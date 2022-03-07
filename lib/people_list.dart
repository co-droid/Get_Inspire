import 'package:flutter/material.dart';
import 'people.dart';
import 'details.dart';


class PeopleListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(

          centerTitle: true, title: Image.network('https://t3.ftcdn.net/jpg/01/27/79/44/240_F_127794496_lCWvM9853lMjwL0Q0EwekLQxiuMo0zmb.jpg',width: 1500,),


        ),
        body:

        ListView.builder(
            itemCount: peopleList.length,
            itemBuilder: (context, index) {
              People people = peopleList[index];
              return Container(
                  decoration: BoxDecoration(
                    image:DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaFfs-pqP1qnusr-iKNfUYWbcE5yO17YK5hg&usqp=CAU'),
                      fit:BoxFit.cover,


                    ),
                  ),


                child: ListTile(
                  title: Text(people.title),
                  subtitle: Text(people.year.toString()),
                  leading: Image.network(people.imageUrl),
                  trailing: Icon(Icons.arrow_forward_rounded),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PeopleDetailsScreen(people)));
                  },
                ),
              );
            })
    );
  }
}