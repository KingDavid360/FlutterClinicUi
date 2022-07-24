import 'package:flutter/material.dart';

void main() {
  runApp(Specialisation());
}

class Specialisation extends StatefulWidget {
  const Specialisation({Key? key}) : super(key: key);

  @override
  State<Specialisation> createState() => _SpecialisationState();
}

class _SpecialisationState extends State<Specialisation> {
  List<String> commenters = ['Favourranking', 'Kesterranking'];
  List<String> commentersImages = ['bitmoji.jpg', 'bitmoji.jpg'];
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: ListTile(
                      leading: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          color: Colors.grey[700],
                          Icons.arrow_back_ios,
                        ),
                      ),
                      title: Center(
                          child: Text(
                        'Appoitnment',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold),
                      )),
                      trailing: Icon(
                        Icons.more_vert,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 90,
                      width: 90,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('images/female_doctor1.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 0, top: 12, right: 0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Dr Anna Baker',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF5c6bc0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.verified, color: Colors.blue, size: 16),
                      ],
                    ),
                  ),
                  Center(
                    child: Text('Cardiologist',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    '  Biography',
                    style: TextStyle(
                        color: Color(0xFF5c6bc0),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, top: 8, right: 0, bottom: 0.0),
                    child: RichText(
                      text: TextSpan(
                          text:
                              'Dr. Bell is wel known for specializing in treating heart and blood vessels conditions, she practices in '
                              'Reddington hospital',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: ' see more',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16,
                              ),
                            ),
                          ]),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '  Reviews',
                    style: TextStyle(
                        color: Color(0xFF5c6bc0),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    height: 120,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: commenters.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 120,
                              width: 250,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12.0)),
                              child: Card(
                                shadowColor: Colors.grey[200],
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Center(
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'images/${commentersImages[index]}'),
                                        ),
                                        title: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              '${commenters[index]}',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF5c6bc0),
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            Text('1wk ago',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                )),
                                            SizedBox(
                                              height: 10,
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Text(
                                            '"Dr Bells is one of the  best doctors I\'ve ever come across, she\'s very... ',
                                            style: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '  Availability',
                    style: TextStyle(
                        color: Color(0xFF5c6bc0),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Online consultation',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          )),
                      value: isChecked1,
                      onChanged: (value) =>
                          setState(() => isChecked1 = value!)),
                  Row(
                    children: [
                      SizedBox(
                        width: 28,
                      ),
                      Container(
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                            color: Colors.grey[400],
                            border: Border.all(
                              color: Colors.grey,
                            )),
                        child: Center(
                            child: Text(
                          '-',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text('Physical consultation',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[400],
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Container(
                      height: 45,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.blue[800],
                          borderRadius: BorderRadius.circular(23.0)),
                      child: Center(
                        child: Text(
                          'Book appointment',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )),
          ),
        ),
      ),
    );
  }
}
