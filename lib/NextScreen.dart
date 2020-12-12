import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  DateTime current;
  Future<bool> popped() {
    DateTime presstime = DateTime.now();
    if (current == null ||
        presstime.difference(current) > Duration(seconds: 2)) {
      current = presstime;
      //TODO Show Flutter Toast
      Fluttertoast.showToast(
        msg: "Press back again to exit!",
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0,
      );
      return Future.value(false);
    } else {
      Fluttertoast.cancel();
      return Future.value(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => popped(),
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Center(
          child: Text(
            'Next\nScreen',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 50.0,
              fontFamily: 'Times New Roman',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

/* onWillPop: () {
        return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Warning!'),
            content: Text('Are you sure to exit?'),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(true);
                },
                child: Text('Yes'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop(false);
                },
                child: Text('No'),
              ),
            ],
          ),
        );
      },*/
