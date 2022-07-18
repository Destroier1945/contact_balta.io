  import 'package:flutter/material.dart';

  class AddressView extends StatelessWidget {
    const AddressView({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Endereco do contato'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            SizedBox(height: 80,
            child: ListTile(
              title: const Text("Endereco atual",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Rua Padre Joao Wislinski, 400',
                  style: TextStyle(
                    fontSize: 12
                  ),),
                  Text('Curitiba PR',
                  style: TextStyle(
                    fontSize: 12
                  ),
                  ),
                ],
              ),
                isThreeLine: true
            ),
            ),
            SizedBox(
                height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: "Pesquisar..."
                ),
              ),
            )),
            Expanded(child: Container(color: Colors.blue.withOpacity(0.2),),),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.my_location, color: Theme.of(context).primaryColor),
        ),
      );
    }
  }
