import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  late double _deviceHight, _deviceWidth;
  Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    _deviceHight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      body: Container(
          // color: Colors.red,
          height: _deviceHight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [Center(child: _pageTitle()), _destinationDropDown()],
          )),
    ));
  }

  Widget _pageTitle() {
    return Text(
      "#GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w700),
    );
  }

  Widget _destinationDropDown() {
    List<DropdownMenuItem<String>> _items =
        ['Abraka Staion', 'Azikwe Station'].map(
      (e) {
        return DropdownMenuItem(
          child: Text(e),
          value: e,
        );
      },
    ).toList();
    return Container(
      child: DropdownButton(onChanged: (_) {}, items: _items),
    );
  }

  Widget _imageContainer() {
    return Container(
      height: _deviceHight,
      width: _deviceWidth,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage("assets/images/astro_moon.png"))),
    );
  }
}
