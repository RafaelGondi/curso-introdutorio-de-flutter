import 'package:flutter/material.dart';

class AccInfo extends StatefulWidget {
	final String email;

	AccInfo({Key key, this.email}) : super(key: key); 
  _AccInfoState createState() => _AccInfoState();
}

class _AccInfoState extends State<AccInfo> {
  @override
  Widget build(BuildContext context) {
	return Scaffold(
		appBar: AppBar(
			title: Text("Home"),
		),
		body: Container(
			child: Padding(
				padding: EdgeInsets.all(20),
				child: Card(
					child: Padding(
						padding: EdgeInsets.all(10),
						child: Text("Olá "  + "!"),
					),
				),
			)
		),
	);
  }
}
