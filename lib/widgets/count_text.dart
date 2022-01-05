import 'package:flutter/material.dart';

import 'package:state/home/home_controller.dart';

class CountText extends StatefulWidget {
  const CountText({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  State<CountText> createState() => _CountTextState();
}

class _CountTextState extends State<CountText> {
  @override
  void initState() {
    widget.homeController.listen((state) {
      setState(() {});
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.homeController.state}',
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
