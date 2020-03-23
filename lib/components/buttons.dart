import 'package:flutter/material.dart';
import 'package:material_calculator/theme/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class Button extends StatelessWidget {
  final parentColor;
  final function;

  Button({this.parentColor, this.function});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: MediaQuery.of(context).size.height * 0.125,  // 16:11 ratio for width to height (80.0/55.0)
        height: MediaQuery.of(context).size.height * 0.125 * 0.6875,
        color: parentColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: otherBlue,
            onTap: () {
              //TODO: 
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                function.toString(),
                style: TextStyle(
                  color: notSoWhite,
                  fontFamily: 'Righteous',
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class IconasButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: MediaQuery.of(context).size.height * 0.125,  // 16:11 ratio for width to height (80.0/55.0)
        height: MediaQuery.of(context).size.height * 0.125 * 0.6875,
        color: placidOrange,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: otherBlue,
            onTap: () {
              //TODO : Orange button functions
            },
            child: Align(
              alignment: Alignment.center,
              child: Icon(
                MdiIcons.backspace,
                size: 20.0,
                color: notSoWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ResultButton extends StatelessWidget {
  final parentColor;
  final function;

  ResultButton({this.parentColor, this.function});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: MediaQuery.of(context).size.height * 0.125,  // 2:3 ratio for width to height (80.0/120.0)
        height: MediaQuery.of(context).size.height * 0.125 * 1.5,
        color: parentColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: otherBlue,
            onTap: () {
              //TODO: 
            },
            child: Align(
              alignment: Alignment.center,
              child: Text(
                function.toString(),
                style: TextStyle(
                  color: notSoWhite,
                  fontFamily: 'Righteous',
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}