import 'package:flutter/material.dart';
import 'package:doctors_pecialist/Doctor.dart';
import 'welcomepage.dart';
void main() {
  runApp(
      const MaterialApp(
          debugShowCheckedModeBanner: false,
    home: HomePage(),
       // debugShowCheckedModeBanner: false,
  )
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FLUTTER APP',
      theme: ThemeData(
        primarySwatch: Colors.blue,




      ),
      home: const MyHomePage(title: 'DOCTOR'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, String this.title}) : super(key: key);

          final String title;                        //      String get title => null;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = "Dentist";
  List<String> doctorlist = [
    "Dentist",
    "Dentist_Senior_Consultant",
    "Oncologist",
    "Otolaryngologist",
    "Dentist",
    "Dentist_Senior_Consultant",
    "Oncologist",
    "Otolaryngologist",
    "Dentist",
    "Dentist_Senior_Consultant",
    "Oncologist",
    "Otolaryngologist",
    "Dentist",
    "Dentist_Senior_Consultant",
    "Oncologist",
    "Otolaryngologist"
  ];

  List<Doctor> doctordetail = [
    Doctor("SAROJANI", "MBBS", "8369702803", "ERA HOSPITAL",
        "assets/images/Dentist.jpg"),
    Doctor("THAKUR", "MS", "8362786973", "GEETA HOSPITAL",
        "assets/images/Dentist_Senior_Consultant.jpg"),
    Doctor("SATRUGHAN SINHA", "SKIN SPECLIST", "963824686", "MEDICAL COLLEGE",
        "assets/images/Oncologist.jpg"),
    Doctor("ABDULAHA", "MBBS", "9376457383", "POOJA NURSING",
        "assets/images/Otolaryngologist.jpg"),
    Doctor("SAROJANI", "MBBS", "8369702803", "ERA HOSPITAL",
        "assets/images/Dentist.jpg"),
    Doctor("THAKUR", "MS", "8362786973", "GEETA HOSPITAL",
        "assets/images/Dentist_Senior_Consultant.jpg"),
    Doctor("SATRUGHAN SINHA", "SKIN SPECLIST", "963824686", "MEDICAL COLLEGE",
        "assets/images/Oncologist.jpg"),
    Doctor("ABDULAHA", "MBBS", "9376457383", "POOJA NURSING",
        "assets/images/Otolaryngologist.jpg"),
    Doctor("SAROJANI", "MBBS", "8369702803", "ERA HOSPITAL",
        "assets/images/Dentist.jpg"),
    Doctor("THAKUR", "MS", "8362786973", "GEETA HOSPITAL",
        "assets/images/Dentist_Senior_Consultant.jpg"),
    Doctor("SATRUGHAN SINHA", "SKIN SPECLIST", "963824686", "MEDICAL COLLEGE",
        "assets/images/Oncologist.jpg"),
    Doctor("ABDULAHA", "MBBS", "9376457383", "POOJA NURSING",
        "assets/images/Otolaryngologist.jpg"),
    Doctor("SAROJANI", "MBBS", "8369702803", "ERA HOSPITAL",
        "assets/images/Dentist.jpg"),
    Doctor("THAKUR", "MS", "8362786973", "GEETA HOSPITAL",
        "assets/images/Dentist_Senior_Consultant.jpg"),
    Doctor("SATRUGHAN SINHA", "SKIN SPECLIST", "963824686", "MEDICAL COLLEGE",
        "assets/images/Oncologist.jpg"),
    Doctor("ABDULAHA", "MBBS", "9376457383", "POOJA NURSING",
        "assets/images/Otolaryngologist.jpg")
  ];
// ignore: avoid_init_to_null
  Doctor selectedPath = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DOCTOR'),
      ),
      body: ListView.builder(
        itemCount: doctordetail.length,
        itemBuilder: (context, position) {
          return Card(

            child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        welcomepage(doctordetail : doctordetail[position])),
                  );
                },
              leading: CircleAvatar(
                backgroundImage: AssetImage(doctordetail[position].pic),
              ),
              title: Text(doctordetail[position].name),
              subtitle: Column(
                children: [
                  Text(doctordetail[position].specification),
                  Text(doctordetail[position].mob)
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
