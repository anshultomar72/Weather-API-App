import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.cyan,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration:kInputDecoration,
                  onChanged: (value){
                    cityName=value;
                  }
              ),),
              SizedBox(height: 70,),
              TextButton(
                child: Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
                onPressed: () {
                  Navigator.pop(context,cityName);
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.cyan, disabledForegroundColor: Colors.red.withOpacity(0.38),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(2)),

                  ),



              ),),
            ],
          ),
        ),
      ),
    );
  }
}
