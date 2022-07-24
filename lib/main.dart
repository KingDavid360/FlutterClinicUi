import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medical_clinic/Specialist.dart';

void main() {
  runApp(const Clinic());
}

class Clinic extends StatelessWidget {
  const Clinic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: Doctors(),
      )),
    );
  }
}

class Doctors extends StatefulWidget {
  const Doctors({Key? key}) : super(key: key);

  @override
  State<Doctors> createState() => _DoctorsState();
}

class _DoctorsState extends State<Doctors> {
  List<String> profilePhoto = ['female_doctor.jpg', 'male_doctor.jpg'];
  List<String> names = ['Dr. Natasha Kaila', 'Dr. Micheal Corks'];
  List<String> specialty = ['Cardiologist', 'Dentist'];
  List<String> date = ['Thur, June at 10am', 'Fri, June at 10am'];
  List<String> topDoctorsSpecialty = [
    'Cardiologist',
    'Dermatologist',
    'Neurologists',
    'Pediatrician'
  ];
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month_outlined),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Settings',
          ),
        ],
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Colors.blue),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Hello',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Favour parzival',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  trailing: Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage('images/bitmoji.jpg'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 10, top: 0, right: 0, bottom: 0),
                  height: 40,
                  width: 370,
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        Text('Search doctors, appointments, Health issues',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: Text(
                    'Upcoming appointments',
                    style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  trailing: Text(
                    'see all',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 160,
                  // width: 600,
                  child: ListView.builder(
                    itemCount: specialty.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 15, top: 0, right: 0, bottom: 0),
                        height: 130,
                        width: 260,
                        decoration: BoxDecoration(
                          color: (index % 2 == 0)
                              ? Color(0xFFe3f2fd)
                              : Color(0xFFf3e5f5),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/${profilePhoto[index]}'),
                              ),
                              title: Text(
                                '${names[index]}',
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xFF5c6bc0)),
                              ),
                              subtitle: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Text('${specialty[index]}',
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 140,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Icon(
                                            size: 18,
                                            Icons.schedule,
                                            color: Colors.grey[400],
                                          ),
                                        ),
                                        Text('${date[index]}',
                                            style: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey[400])),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 55,
                                  ),
                                  Container(
                                    height: 25,
                                    width: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.blue[100],
                                      borderRadius: BorderRadius.circular(12.5),
                                    ),
                                    child: Icon(
                                      Icons.videocam_outlined,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    '  Top Doctors',
                    style: TextStyle(
                        color: Color(0xFF5c6bc0),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ListView.builder(
                    itemCount: topDoctorsSpecialty.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            height: 54,
                            width: 115,
                            decoration: BoxDecoration(
                                color: (index == 0)
                                    ? Colors.blue[800]
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(23.0)),
                            child: Center(
                              child: Text(
                                '${topDoctorsSpecialty[index]}',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: (index == 0)
                                      ? Colors.white
                                      : Color(0xFF5c6bc0),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Specialisation()));
                      },
                      child: Card(
                        shadowColor: Colors.grey[200],
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Container(
                              height: 100,
                              width: 65,
                              decoration: BoxDecoration(
                                color: Color(0xFFe3f2fd),
                                image: DecorationImage(
                                  image:
                                      AssetImage("images/female_doctor1.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Dr Anna Baker',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xFF5c6bc0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('Heart surgeon',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      size: 12,
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      size: 12,
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      size: 12,
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    Icon(
                                      size: 12,
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                    SizedBox(
                                      width: 40,
                                    ),
                                    Text(
                                      '(101 reviews)',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 90,
                    child: Card(
                      shadowColor: Colors.grey[200],
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: ListTile(
                          leading: Container(
                            height: 100,
                            width: 65,
                            decoration: BoxDecoration(
                              color: Color(0xFFe3f2fd),
                              image: DecorationImage(
                                image: AssetImage("images/male_doctor2.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          title: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Dr Steven Kamara',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF5c6bc0),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text('Heart surgeon',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    size: 12,
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    size: 12,
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    size: 12,
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  Icon(
                                    size: 12,
                                    Icons.star,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    '(101 reviews)',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
