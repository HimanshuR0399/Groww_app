import 'package:flutter/material.dart';
import 'package:groww_app/home pages/card.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:groww_app/home pages/index_card.dart';
import 'package:groww_app/pages/ipo_page.dart';
import 'package:groww_app/pages/market_news.dart';
import 'package:groww_app/pages/account.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("Groww"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.person_outline_rounded),
            onPressed: () => Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => Account(),
        )) ,
            tooltip: "accounts",
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchField(),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Adcard(2000),
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Text(
                "Market Indices",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5.0,),

            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  Indexcard(name: "NIFTY 50", symbol: "NIFTY 50", imageurl: "", price: 16245, change: 252.7, changePercentage:-1.53),
                  SizedBox(width: 12,),
                  Indexcard(name: "NIFTY BANK", symbol: "NIFTY BANK", imageurl: "", price: 34546.0, change: 70, changePercentage: 0.2),
                  SizedBox(width: 12,),
                  Indexcard(name: "SENSEX", symbol: "SENSEX", imageurl: "", price: 55550.30, change: 85.91, changePercentage: 0.15),
                  SizedBox(width: 12,),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(height: 25.0,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Text(
                    "Top Gainers",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: (){},
                      child: Text("See More",
                      style: TextStyle(
                        color: Colors.greenAccent,
                      ),),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  stock(name: "ICICI", symbol: "ICICI", imageurl: "assets/ICICI.webp", price: 700, change: 7, changePercentage: 1),
                  SizedBox(width: 12,),
                  stock(name: "Paytm", symbol: "PAYTM", imageurl: "assets/paytm.webp", price: 775.05, change: -0.55, changePercentage: -0.07),
                  SizedBox(width: 12,),
                  stock(name: "Reliance industries", symbol: "RELIANCE", imageurl: "assets/reliance.jpg", price: 2399.15, change: 6.90, changePercentage: 0.29),
                ],
              ),
            ),
            SizedBox(height: 40.0,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  InkWell(
                    child: Container(
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.analytics),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("F&O",
                              style: TextStyle(
                                fontSize: 18,
                              ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => IpoPage(),
                        )) ,
                  ),
                  SizedBox(width: 12,),
                  InkWell(
                    child: Container(
                      width: 140,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.moving),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                              child: Text("IPO",
                                style: TextStyle(
                                  fontSize: 18,
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => IpoPage(),
                        )) ,
                  ),
                  SizedBox(width: 12,),
                  Container(
                    width: 140,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.health_and_safety),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Text("SGB",
                              style: TextStyle(
                                fontSize: 18,
                              ),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Text(
                    "Stocks In news",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => marketnews(),
                        )) ,
                    child: Text("Market News",
                      style: TextStyle(
                        color: Colors.greenAccent,
                      ),),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  stock(name: "ICICI", symbol: "ICICI", imageurl: "assets/ICICI.webp", price: 700, change: 7, changePercentage: 1),
                  SizedBox(width: 12,),
                  stock(name: "Paytm", symbol: "PAYTM", imageurl: "assets/paytm.webp", price: 775.05, change: -0.55, changePercentage: -0.07),
                  SizedBox(width: 12,),
                  stock(name: "Reliance industries", symbol: "RELIANCE", imageurl: "assets/reliance.jpg", price: 2399.15, change: 6.90, changePercentage: 0.29),
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Text(
                    "Top Losers",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: (){},
                    child: Text("See More",
                      style: TextStyle(
                        color: Colors.greenAccent,
                      ),),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 12,),
                  stock(name: "ICICI", symbol: "ICICI", imageurl: "assets/ICICI.webp", price: 700, change: 7, changePercentage: 1),
                  SizedBox(width: 12,),
                  stock(name: "Paytm", symbol: "PAYTM", imageurl: "assets/paytm.webp", price: 775.05, change: -0.55, changePercentage: -0.07),
                  SizedBox(width: 12,),
                  stock(name: "Reliance industries", symbol: "RELIANCE", imageurl: "assets/reliance.jpg", price: 2399.15, change: 6.90, changePercentage: 0.29),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ],
              ),
            ),
          ],
        ),
      ),
    );


  }
}




class SecureCard {
  String text;
  SecureCard({required this.text});
}



class SecutiryCards extends StatelessWidget {
  final SecureCard sec_card;
  SecutiryCards({required this.sec_card});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.tealAccent[400],
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 5.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.security_rounded,color: Colors.white,),
            SizedBox(height: 10,),
            Text(
              sec_card.text,
              style: TextStyle(
                fontSize: 18.0, color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class Adcard extends StatelessWidget {
  double funds;
  Adcard(this.funds);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 360,
        height: 80,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          color: Colors.grey[100],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 15, 0, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Balance Available for Stocks"),
                  SizedBox(height: 7,),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text("₹ $funds",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){}, child: Text("ADD MONEY"),
                style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent[400],
                    textStyle: TextStyle(fontSize: 15,

                        fontWeight: FontWeight.bold)),),
            )
          ],
        )
        ,
      ),

      onTap: () {

      },
    );
  }
}




class LearnCard extends StatelessWidget {
  String imagel;
  String lurl;
  LearnCard(this.imagel,this.lurl);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Container(
          width: 200,
          height: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage("assets/$imagel"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        onTap: () async{
          final url = lurl;
          if (await canLaunch(url)){
            await launch(url,
                forceWebView: true,
                forceSafariVC: true,
                enableJavaScript: true);
          }
        }
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey,width: 1.0),
        borderRadius: BorderRadius.circular(2),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8.0,),
          Icon(Icons.search,color: Colors.grey,),
          const SizedBox(width: 8.0,),
          Expanded(
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Search Groww",
                hintStyle: TextStyle(color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
