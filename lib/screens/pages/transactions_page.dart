import 'package:flutter/material.dart';
import 'package:leorio/screens/pages/reciepts/credit_reciepts.dart';
import 'package:leorio/screens/pages/reciepts/debit_reciepts.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Transactions",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DebitReciept()));
              },
              child: Container(
                width: 400,
                height: 64,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        spreadRadius: 4,
                        offset: Offset(0, 2)),
                  ],
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.arrow_circle_up_outlined,
                    color: Colors.red,
                  ),
                  title: Text(
                    'Money Sent',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  subtitle: Text(
                    'DANIEL MOSES',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  trailing: Column(
                    children: [
                      SizedBox(
                        height: 7,
                      ),
                      Text(
                        '-\$500.00',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        '12/08/2023',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.red,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreditReciept()));
            },
            child: Container(
              width: 400,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      spreadRadius: 4,
                      offset: Offset(0, 2)),
                ],
              ),
              child: ListTile(
                leading: Icon(
                  Icons.arrow_circle_down_outlined,
                  color: Colors.green,
                ),
                title: Text(
                  'Money Recieved',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(
                  'DANIEL MOSES',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                trailing: Column(
                  children: [
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      '+\$500.00',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '02/08/2023',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
