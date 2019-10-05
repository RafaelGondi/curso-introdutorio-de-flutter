import 'package:flutter/material.dart';

class Discipline {
	String _name;
	String _instructor;
	String _schedule;

	Discipline(this._name, this._instructor, this._schedule);

  String get name {
    return this._name;
  }

  String get instructor {
    return this._instructor;
  }

  String get schedule {
    return this._schedule;
  }
}

class Courses extends StatefulWidget {
	static String tag = 'disciplines';
	@override
	_CoursesState createState() => _CoursesState();
}

class _CoursesState extends State<Courses> {

	List<Discipline> coursesList = List();

	@override
	void initState() {
		super.initState();
		coursesList.add(Discipline("As tendências para a gestão em empresas: profissionais, projetos, processos e qualidade no mundo 4.0", "Marcos Borges", "08h às 12h"));
    coursesList.add(Discipline("Funcionalidades do Mikrotik (RouterOS)", "Hugo Carvalho", "08h às 12h"));
    coursesList.add(Discipline("Monitoramento e Controle IoT através de MQTT", "Max Farias", "08h às 12h"));
    coursesList.add(Discipline("Funcionalidades do Mikrotik (RouterOS)", "Marcos Borges", "08h-12h e 14h-18h"));
    coursesList.add(Discipline("Gerenciamento de banco de dados com PHP", "Raphael Vidal", "08h-12h e 14h-18h"));
    coursesList.add(Discipline("HTML5", "Emanuella Bezerra", "08h-12h e 14h-18h"));
    coursesList.add(Discipline("Introdução ao flutter", "Rafael Dias", "14h-18h"));
    coursesList.add(Discipline("Introdução ao Vue.js", "Tássio Caique", "14h-18h"));
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Cursos'),
			),
			body: Container(
				child: Scrollbar(
					child: Padding(
						padding: const EdgeInsets.only(top: 20),
						child: ListView.builder(
							shrinkWrap: true,
							itemCount: coursesList.length,
							itemBuilder: (context, index) {
								return Padding(
									padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
									child: Card(
										child: Column(
											mainAxisSize: MainAxisSize.min,
											children: <Widget>[
												ListTile(
													leading: Icon(Icons.assignment),
													title: Padding(
													  padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
													  child: Text(
													  	'${coursesList[index].name}',
                            overflow: TextOverflow.ellipsis,
													  ),
													),
													subtitle: Padding(
													  padding: const EdgeInsets.only(bottom: 10),
													  child: Text(
													  	'Facilitador: ${coursesList[index].instructor}\n' +
													  	'Horário: ${coursesList[index].schedule}',
													  ),
													),
												),
											],
										),
									),
								);
							},
						),
					),
				),
			),
		);
	}
}
