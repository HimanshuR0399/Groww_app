import 'package:flutter/material.dart';
import 'package:groww_app/pages/ipo_page.dart';
class ipocard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
          width: 120,
          height: 30,
          decoration: BoxDecoration(
            color: Colors.grey[50],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
      ),
    ),
    );
  }
}
