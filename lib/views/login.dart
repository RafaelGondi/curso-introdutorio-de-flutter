import 'package:flutter/material.dart';
import 'package:curso1/views/courses_page.dart';

class Login extends StatelessWidget {
	final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

	TextEditingController emailController = TextEditingController();
	TextEditingController passwordController = TextEditingController();

	String _validateEmail(String email) {
		RegExp emailPattern = RegExp(
			r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?"
		);

		if (email.isEmpty) {
			return "Insira um email";
		} else if (!emailPattern.hasMatch(email)) {
			return "Insira um email válido";
		}
	}

	String _validatePassword(String password) {
		if (password.isEmpty) {
			return "Insira uma senha";
		}
	}

  @override
  Widget build(BuildContext context) {
	return Scaffold(
		backgroundColor: Colors.white,
		body: Center(
			child: Container(
				color: Colors.white,
				child: SingleChildScrollView(
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						children: <Widget>[
							Image.asset(
								'assets/logo_einfo2.png',
                width: 300,
							),
							Form(
								key: _formKey,
								child: Column(
									crossAxisAlignment: CrossAxisAlignment.stretch,
									children: <Widget>[
										Padding(
											padding: EdgeInsets.all(20),
											child: TextFormField(
												controller: emailController,
												validator: _validateEmail,
												keyboardType: TextInputType.emailAddress,
												decoration: InputDecoration(
													labelText: "Email"
												),
											),
										),
										Padding(
											padding: EdgeInsets.all(20),
											child: TextFormField(
												controller: passwordController,
												validator: _validatePassword,
												obscureText: true,
												keyboardType: TextInputType.emailAddress,
												decoration: InputDecoration(
													labelText: "Senha"
												),
											),
										),
										Padding(
											padding: EdgeInsets.all(10),
											child: RaisedButton(
												onPressed: () {
													if (_formKey.currentState.validate()) {
														var route = MaterialPageRoute(
															builder: (BuildContext context) =>  Courses(),
														);

														Navigator.of(context).push(route);

														Navigator.of(context).pushNamed('/courses_page');
													}
												},
												color: Colors.blue,
												textColor: Colors.white,
												child: Padding(
													padding: EdgeInsets.all(10),
													child: Text(
														'Login',
														style: TextStyle(fontSize: 20),
													),
												),
											),
										),
									],
								),
							),
						],
					),
				),
			),
		),
	);
  }
}
