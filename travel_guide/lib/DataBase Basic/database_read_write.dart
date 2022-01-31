import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DatabaseBasic extends StatefulWidget {
  const DatabaseBasic({Key? key}) : super(key: key);

  @override
  _DatabaseBasicState createState() => _DatabaseBasicState();
}

class _DatabaseBasicState extends State<DatabaseBasic> {

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  create() async {
    try{
      await FirebaseFirestore.instance.collection('user').doc(email.text).set(
        {
          'name': name.text,
          'email': email.text
        }
      );
      name.clear();
      email.clear();
    } catch(e){
      print(e);
    }
  }

  update() async {
    try{
      await FirebaseFirestore.instance.collection('user').doc(email.text).update({
        'name': name.text
      });
      name.clear();
      email.clear();
    } catch(e){
      print(e);
    }
  }

  delete() async {
    try{
      await FirebaseFirestore.instance.collection('user').doc(email.text).delete();
      name.clear();
      email.clear();
    } catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Database Basic"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: name,
              decoration: InputDecoration(
                label: Text("Name"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: email,
              decoration: InputDecoration(
                label: Text("Email"),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(15)
                ),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                    borderRadius: BorderRadius.circular(15)
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: create,
                  child: Text("Create"),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: update,
                  child: Text("Update"),
                ),
                SizedBox(width: 20,),
                ElevatedButton(
                  onPressed: delete,
                  child: Text("Delete"),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
                child: StreamBuilder(
                  stream: FirebaseFirestore.instance.collection('user').snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                    if(snapshot.hasData){
                      return ListView.builder(
                        shrinkWrap: true,
                        physics: BouncingScrollPhysics(),
                        primary: true,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index){
                          QueryDocumentSnapshot networkData = snapshot.data!.docs[index];
                          return Card(
                            child: ListTile(
                              onLongPress: (){
                                setState(() {
                                  name.text = networkData['name'];
                                  email.text = networkData['email'];
                                });
                              },
                              title: Text(networkData['name']),
                              subtitle: Text(networkData['email']),
                              // trailing: Text(networkData['test2']),
                              // leading: Text(networkData['test']),
                            ),
                          );
                        }
                      );
                    }
                    return const Center(child: CircularProgressIndicator());
                  }
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
