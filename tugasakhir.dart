import 'package:flutter/material.dart';
 
void main() {
  runApp(MaterialApp(title: 'Interest Calculator', home: SIForm()));
}
 
class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SIFormState();
  }
}
 
class _SIFormState extends State<SIForm> {
  var _currencies = ['Rupiah', 'Dollar', 'Pound'];
  final _minimumPadding = 5.0;
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Interest Calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 2),
        child: Column(
          children: <Widget>[
            getImageAsset(),
            Padding(
              padding: EdgeInsets.only(
                  top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Principal',
                    hintText: 'Entry Principal e.g 1000000',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: _minimumPadding, bottom: _minimumPadding),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Rate of Interest',
                    hintText: 'In Percent',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0)
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
 
  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/money.png');
    Image image = Image(image: assetImage, width: 125.0, height: 125.0,);
 
    return Container(
      child: image, margin: EdgeInsets.all(_minimumPadding * 10),)
  }
}
