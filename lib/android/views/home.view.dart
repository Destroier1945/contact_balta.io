import 'package:contact/android/views/details.view.dart';
import 'package:contact/android/views/editor-contact.view.dart';
import 'package:contact/models/contact.model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Meus Contatos', style: TextStyle(color: Theme.of(context).primaryColor),),
        centerTitle: true,
        leading: TextButton(
          onPressed: () {  },
          child: Icon(Icons.search, color: Theme.of(context).primaryColor,),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(48),
                image: const DecorationImage(
                  image: NetworkImage('https://avatars.githubusercontent.com/u/5552327?v=4'),
                ),
              ),
            ),
            title: const Text("Juliano Kluge"),
            subtitle: const Text("(41) 99531-5981"),
            trailing: TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (builder) => const DetailsView(),), );
              },
              child: const Icon(Icons.chat),
            ),

          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => EditorContactView(),),);
      },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.add, color: Theme.of(context).colorScheme.secondary,),
      ),
    );
  }
}
