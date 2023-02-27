import 'package:flutter/material.dart';

class Togglebutton extends StatefulWidget {
  const Togglebutton({super.key, this.lefttext, this.righttext});
  final String? lefttext;
  final String? righttext;

  @override
  State<Togglebutton> createState() => _TogglebuttonState();
}

class _TogglebuttonState extends State<Togglebutton>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.5),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      width: double.infinity,
      height: 38,
      child: TabBar(
        padding: const EdgeInsets.all(2),
        indicator: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        controller: tabController,
        // indicatorColor: Colors.blue,
        unselectedLabelColor: Colors.black.withOpacity(0.7),
        labelColor: Colors.black,
        tabs: [
          Tab(
            text: widget.lefttext,
          ),
          Tab(
            text: widget.righttext,
          ),
          // Tab(
          //   text: 'Expanse',
          // ),
        ],
      ),
    );
  }
}
