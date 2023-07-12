import 'package:flutter/material.dart';

class BankDropdown extends StatefulWidget {
  @override
  _BankDropdownState createState() => _BankDropdownState();
}

class _BankDropdownState extends State<BankDropdown> {
  late String selectedBank;

  List<String> banks = [
    'Bank A',
    'Bank B',
    'Bank C',
    'Bank D',
    'Bank E',
  ];

  @override
  void initState() {
    super.initState();
    selectedBank = banks[0]; // Assign the first bank as the default value
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButtonFormField(
          value: selectedBank,
          items: banks.map((String bank) {
            return DropdownMenuItem<String>(
              value: bank,
              child: Text(bank),
            );
          }).toList(),
          onChanged: (val) {
            setState(() {
              selectedBank = val as String;
            });
          },
          icon: const Icon(
            Icons.arrow_drop_down_circle,
          ),
          dropdownColor: Colors.deepPurple.shade50,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
      ),
    );
  }
}
