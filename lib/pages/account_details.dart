import 'package:flutter/material.dart';

class BankDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:(Text("Bank Account Details"
            ,style: TextStyle(color: Colors.black))),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          InkWell(
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Icon(Icons.account_balance_sharp),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Kotak Mahindra Bank Limited ",
                                style:TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("(Primary Bank)",
                                  style:TextStyle(
                                    fontSize: 14,
                                    color: Colors.greenAccent,
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("XXXX2095",
                                  style:TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.verified,color: Colors.greenAccent,),
                                    Text(
                                      "Verified",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded),
                              onPressed: () {}),
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
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Icon(Icons.account_balance_sharp),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("SBI LTD",
                                style:TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("XXXX2095",
                                  style:TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.verified,color: Colors.greenAccent,),
                                    Text(
                                      "Verified",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded),
                              onPressed: () {}),
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
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Icon(Icons.account_balance_sharp),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Union Bank of India ",
                                style:TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("XXXX2095",
                                  style:TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.verified,color: Colors.greenAccent,),
                                    Text(
                                      "Verified",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded),
                              onPressed: () {}),
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
                      height: 110,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
                            child: Icon(Icons.account_balance_sharp),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Airtel Payments Bank Limited",
                                style:TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                child: Text("XXXX2095",
                                  style:TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                                child: Row(
                                  children: [
                                    Icon(Icons.verified,color: Colors.greenAccent,),
                                    Text(
                                      "Verified",
                                      style: TextStyle(color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                              icon: const Icon(Icons.more_vert_rounded),
                              onPressed: () {}),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            onTap: (){} ,
          ),
          Divider(height: 10,),
          SizedBox(height: 40,),
          ButtonTheme(
            minWidth: 300.0,
            height: 50.0,
            child:   OutlineButton(
              child: Text('Add Another Bank', style: TextStyle(color: Colors.greenAccent,fontSize: 20)),
              borderSide: BorderSide(
                color: Colors.greenAccent,
                style: BorderStyle.solid,
                width: 1.8,
              ),
              onPressed: () {},
            ),
          ),
        ],
      )
    );
  }
}