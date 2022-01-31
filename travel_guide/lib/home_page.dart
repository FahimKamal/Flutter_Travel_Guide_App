import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List items = [
    ["বাংলাদেশ ভ্রমণ", Icons.my_location_sharp],
    ["বিদেশ ভ্রমণ", Icons.language],
    ["ভ্রমণ ব্লগ", Icons.paste],
    ["জনপ্রিয় স্থান", Icons.stars],
    ["ভিডিও", Icons.ondemand_video],
    ["সংরক্ষিত তথ্য", Icons.save]

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search, color: Colors.white,)
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          // color: bgColor,
          child: ListView(
            children: [
              Container(
                height: 120,
                color: Colors.green,
                alignment: Alignment.center,
                child: Text("ভ্রমণ গাইড", style: TextStyle(fontSize: 40, color: Colors.white),),
              ),
              SizedBox(height: 5,),
              drawerTile("হোম", Icons.home),
              SizedBox(height: 5,),
              drawerTile("বাংলাদেশ ভ্রমণ", Icons.location_searching),
              SizedBox(height: 5,),
              drawerTile("বিদেশ ভ্রমণ", Icons.language),
              SizedBox(height: 5,),
              drawerTile("ভ্রমণ ব্লগ", Icons.paste),
              SizedBox(height: 5,),
              drawerTile("ট্যুর প্ল্যান", Icons.wallet_giftcard),
              SizedBox(height: 5,),
              drawerTile("গোটেল ও রিসোর্ট", Icons.location_city),
              SizedBox(height: 5,),
              drawerTile("ভিডিও", Icons.ondemand_video),
              SizedBox(height: 5,),
              drawerTile("সংরক্ষিত তথ্য", Icons.save),
              SizedBox(height: 5,),
              drawerTile("ভ্রমণ গাইড সম্পর্কত", Icons.info),
              SizedBox(height: 5,),
              drawerTile("অ্যাপটি শেয়ার করুন", Icons.share),
              SizedBox(height: 5,),
              drawerTile("সেটিংস", Icons.settings),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.green,
              padding: EdgeInsets.all(10),
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add_location_alt_outlined, color: Colors.white, size: 50,),
                  Column(
                    children: [
                      Text("ভ্রমণ গাইড", style: TextStyle(fontSize: 40, color: Colors.white),),
                      Text("দেশ-বিদেশ ভ্রমণের সকল তথ্য ও পরামর্শ", style: TextStyle(fontSize: 10, color: Colors.white),),
                    ],
                  ),
                ],
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 200),
                itemCount: items.length,
                itemBuilder: (context, index){
                  return CustomCard(items[index][0], items[index][1]);
                }
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star),
                    SizedBox(width: 20,),
                    Icon(Icons.star),
                    SizedBox(width: 20,),
                    Icon(Icons.star),
                    SizedBox(width: 20,),
                    Icon(Icons.star),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomCard(String _title, IconData icon){
    return InkWell(
      onTap: (){},
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.green, size: 50,),
            Text(_title, style: TextStyle(color: Colors.green),)
          ],
        ),
      ),
    );
  }

  Widget drawerTile(String title, IconData icon){
    return ListTile(
      leading: Icon(icon, color: Colors.green,),
      title: Text(title, style: TextStyle(fontSize: 18),),
    );
  }
}
