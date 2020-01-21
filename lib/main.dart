import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
	@override 
	Widget build(BuildContext buildContext) {
		Widget titleSection = new Container(
			padding: const EdgeInsets.all(10.0),
			child: new Row(
				children: <Widget>[
					new Expanded(
						child: new Column(
							crossAxisAlignment: CrossAxisAlignment.start,
							children: <Widget>[
								new Container(
									padding: const EdgeInsets.only(bottom: 10.0),
									child: new Text(
										"I'm super junior developer",
										style: new TextStyle(
											fontWeight: FontWeight.bold,
											fontSize: 18.0
										),
									),
								),
								new Text(
									"I'm will upgrade my salary to 12.000.000",
									style: new TextStyle(
										color: Colors.grey[600],
										fontSize: 18.0
									),
								)
							],
						),
					),
					new Icon(
						Icons.favorite, 
						color: Colors.red
					),
					new Text(
						" 100",
						style: new TextStyle(
							fontSize: 16.0
						),
					)
				],
			),
		);
		Widget buildButton(IconData icon, String buttonTitle) {
			final Color tintColor = Colors.blue;
			return new Column(
				children: <Widget>[
					new Icon(icon, color: tintColor),
					new Container(
						margin: const EdgeInsets.only(top: 5.0),
						child: new Text(
							buttonTitle,
							style: new TextStyle(
								fontSize: 16.0,
								fontWeight: FontWeight.w600,
								color: tintColor
							),
						),
					)
				],
			);
		}
		Widget fourButtonsSection = new Container(
			child: new Row(
				mainAxisAlignment: MainAxisAlignment.spaceEvenly,
				children: <Widget>[
					buildButton(Icons.home, "Home"),
					buildButton(Icons.arrow_back, "Back"),
					buildButton(Icons.arrow_forward, "Next"),
					buildButton(Icons.share, "Share"),
				],
			),
		);
		final bottomTextSection = new Container(
			padding: const EdgeInsets.all(20.0),
			child: new Text('''Hello everyone. I'm super junior developer.''',
				style: new TextStyle(
					fontSize: 16.0,
					color: Colors.grey[850]
				),
			),
		);
		return new MaterialApp(
			title: "My App",
			home: new Scaffold(
				appBar: new AppBar(
					title: new Text("Layout"),
				),
				body: new ListView(
					children: <Widget>[
						new Image.asset(
							'images/1.jpg',
							fit: BoxFit.cover,
						),
						titleSection,
						fourButtonsSection,
						bottomTextSection
					],
				)
			),
		);
	}
}