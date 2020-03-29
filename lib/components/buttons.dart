import 'package:flutter/material.dart';
import 'package:material_calculator/services/computations.dart';
import 'package:material_calculator/theme/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

class Operation extends StatelessWidget {
  final parentColor;
  final function;

  Operation({this.parentColor, this.function});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: MediaQuery.of(context).size.height *
            0.125, // 16:11 ratio for width to height (80.0/55.0)
        height: MediaQuery.of(context).size.height * 0.125 * 0.6875,
        color: parentColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: otherBlue,
            onTap: () {
              //

              if (function == 'C') {
                Provider.of<Compute>(context, listen: false).clearPrimary();
              } else if (function == 'x^y') {
                //TODO : x to power y function
              } else
                Provider.of<Compute>(context, listen: false)
                    .appendCalCur(function);
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
        width: MediaQuery.of(context).size.height *
            0.125, // 16:11 ratio for width to height (80.0/55.0)
        height: MediaQuery.of(context).size.height * 0.125 * 0.6875,
        color: placidOrange,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: otherBlue,
            onTap: () {
              Provider.of<Compute>(context, listen: false).backspace();
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
        width: MediaQuery.of(context).size.height *
            0.125, // 2:3 ratio for width to height (80.0/120.0)
        height: MediaQuery.of(context).size.height * 0.125 * 1.5,
        color: parentColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: otherBlue,
            onTap: () {
              print('Result button pressed');
              var counter = Provider.of<Compute>(context, listen: false);
              if (counter.returnCounter() == 0) {
                counter.pointRunner();
                 counter.changeCounter();
                 print('counter called from resultbutton when its 0 -> 1');
              } else{
                counter.transferToHistory();
                counter.changeCounter();
                print('counter called from numberbutton when its 1 -> 0');
              }
                
              
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

class NumberButton extends StatelessWidget {
  final parentColor;
  final function;

  NumberButton({this.parentColor, this.function});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        width: MediaQuery.of(context).size.height *
            0.125, // 16:11 ratio for width to height (80.0/55.0)
        height: MediaQuery.of(context).size.height * 0.125 * 0.6875,
        color: parentColor,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: otherBlue,
            onTap: () {
              var counter = Provider.of<Compute>(context, listen: false);

              if (counter.returnCounter() == 0) {
                Provider.of<Compute>(context, listen: false)
                    .appendCalCur(function.toString());
              } else {
                counter.transferToHistory();
                counter.changeCounter();
                print('counter called from numberbutton');
                counter.appendCalCur(function.toString());
              }
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
