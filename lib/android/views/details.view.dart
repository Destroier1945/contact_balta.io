import 'package:contact/android/views/address.view.dart';
import 'package:contact/android/views/editor-contact.view.dart';
import 'package:contact/models/contact.model.dart';
import 'package:flutter/material.dart';
class DetailsView extends StatelessWidget {
  const DetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contato'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
            width: double.infinity,
          ),
          Container(
            width: 200,
            height: 200,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(200),
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: const DecorationImage(
                  image: NetworkImage('https://avatars.githubusercontent.com/u/5552327?v=4')
                )
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text('Juliano Kluge',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),),
          const Text('41 99531-5981',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),),
          const Text('kluge23@gmail.com',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: (){}, child: Icon(Icons.phone, color:Theme.of(context).primaryColor,),),
              TextButton(onPressed: (){}, child: Icon(Icons.message, color: Theme.of(context).primaryColor,),),
              TextButton(onPressed: (){}, child: Icon(Icons.email, color: Theme.of(context).primaryColor,),),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            title: const Text('Endereco', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Rua Padre Joao Wislinski',style: TextStyle(fontSize: 12),),
                Text('Curitiba PR', style: TextStyle(fontSize: 12),)
              ],
            ),
            isThreeLine: true,
            trailing: TextButton(onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddressView(),
                ),
              );
            },
              child: Icon(Icons.pin_drop, color: Theme.of(context).primaryColor,),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => EditorContactView(
              model: ContactModel(
                id: "1",
                nome: "juliano kluge",
                email:  "kluge23@gmail.com",
                phone: "41 999531-5981",
              ),
            ),
            ),
          );
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.edit),
      ),
    );
  }
}
