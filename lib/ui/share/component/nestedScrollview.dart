import 'package:flutter/material.dart';

class NestedScrollView extends StatefulWidget {
  const NestedScrollView(
      {super.key,
      required List<SliverAppBar> Function(
              dynamic context, dynamic innerBoxIsScrolled)
          headerSliverBuilder,
      required AlwaysScrollableScrollPhysics physics,
      required Column body});

  @override
  State<NestedScrollView> createState() => _NestedScrollViewState();
}

class _NestedScrollViewState extends State<NestedScrollView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 220,
                stretch: true,
                elevation: 0,
                backgroundColor:Colors.transparent,
                onStretchTrigger: () async {
                  debugPrint('stretch');
                },
                flexibleSpace: const FlexibleSpaceBar(
                  stretchModes: [StretchMode.zoomBackground],
                  background: Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 22),
                  ),
                ),
              )
            ];
          },
          body: Column(
            children: const [Text('Hello')],
          )),
    );
  }
}
