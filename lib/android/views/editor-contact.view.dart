
  import 'package:flutter/material.dart';

  import '../../models/contact.model.dart';

  class EditorContactView extends StatelessWidget {
    final ContactModel? model;
    const EditorContactView({Key? key, this.model}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar: AppBar(
            title: model == null?
            Text('Novo Contato', style: TextStyle(color: Theme.of(context).primaryColor),) :
            Text('Editar Contato', style: TextStyle(color: Theme.of(context).primaryColor),),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  initialValue: model?.nome,
                  onSaved: (val){
                    model?.nome = val;
                  },
                ),
                TextFormField(
                  initialValue: model?.phone,
                  onSaved: (val){
                    model?.phone = val;
                  },
                ),
                TextFormField(
                  initialValue: model?.email,
                  onSaved: (val){
                    model?.email = val;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: TextButton.icon(onPressed: (){},
                    icon: Icon(Icons.save),
                      label: Text("SALVAR",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor
                      ),),),
                ),
              ],
            ),
          )
        ),
      );
    }
  }

