import 'package:flutter/material.dart';
import 'package:tugas01_layout_widget/widget/filter_button_widget.dart';
import 'package:tugas01_layout_widget/widget/grid_widget.dart';
import 'package:tugas01_layout_widget/widget/search_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, right: 20, left: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, size: 28),
                Icon(Icons.notifications_none_rounded, size: 28),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Text(
                    "Perfect Clothes",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  "For your day",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: SearchWidget()),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  margin: EdgeInsets.only(left: 10),
                  child: FilterWidget(),
                ),
              ],
            ),
            Expanded(child: Padding(padding: EdgeInsets.only(top: 0), child: GridWidget())),
          ],
        ),
      ),
    );
  }
}
