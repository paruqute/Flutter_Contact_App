import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_contact_app/model/contact_model.dart';
import 'package:flutter_contact_app/model/user_model.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List list=["Groups","My Card"];
     @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(

        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
                itemCount: list.length,
                itemBuilder:(context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(list[index]),
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 24,
                          child: list[index]==list[0]?Icon(Icons.people_outline,color: Colors.black,)
                              :list[index]==list[1]?Icon(Icons.perm_identity,color: Colors.black,):null,
                        ),
                      ),

                    ),
                  );
                },),

            ListView.builder(
              shrinkWrap: true,
              itemCount: clist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text("${clist[index].firstName[0]}${clist[index].lastName[0]}"),
                  ),
                  title: Text("${clist[index].firstName} ${clist[index].lastName}"),
                  subtitle: Text(clist[index].number.toString()),
                  trailing: Icon(Icons.star_border_purple500_outlined),
                );
              },),
          ],
        ),
      ),
    );

  }
}
