import 'addfunds.dart';
import 'package:flutter/material.dart';
import 'account_details.dart';
import 'about_me.dart';
class Account extends StatelessWidget {

  String full_Name = "Himanshu Rathod";
  double balance = 10000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("$full_Name"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey[100],
                        ),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center ,
                              children: [

                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                                  child: Text("Himanshu Rathod",
                                    style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text("Account details",
                                    style:TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Icon(Icons.keyboard_arrow_right_outlined ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => addFunds(),
                  )) ,
            ),



            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.account_balance_wallet),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                                  child: Text("₹$balance",
                                    style:TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("Groww Balance",
                                    style:TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: (){} ,
            ),

            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.receipt),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("All Orders",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("Track orders,order details",
                                    style:TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: (){} ,
            ),

            Divider(
              color: Colors.grey[400],
            ),
            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.account_balance_sharp),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Bank details",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("Banks & AutoPay mandates",
                                    style:TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => BankDetails(),
                  )) ,
            ),
            Divider(
              color: Colors.grey[400],
            ),
            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.help),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Help & Support",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("FAQs, Contact support",
                                    style:TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => About_me(),
                  )) ,
            ),
            Divider(
              color: Colors.grey[400],
            ),

            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.notes_outlined),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Reports",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("Stocks & mutual funds reports",
                                    style:TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => About_me(),
                  )) ,
            ),

            Divider(
              color: Colors.grey[400],
            ),

            InkWell(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.pie_chart),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Looking for your SIPs?",
                                  style:TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text("Go to MF Dashboard",
                                    style:TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey,
                                    ),),
                                ),
                              ],
                            ),
                            Spacer(),

                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => About_me(),
                  )) ,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("App version: 1.0.0"),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      primary: Colors.indigo[400],
                    ),
                    onPressed: () {},
                    child: const Text('Logout'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}