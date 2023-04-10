import 'package:flutter/material.dart';
import 'package:tawwon/screens/organization_work_time.dart';

class organ_desc extends StatelessWidget {
  const organ_desc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Positioned(
                top: 0,
                child: Text(
                  'تفاصيل المنظمة',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  // Text label

                  // Profile picture
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                  // Plus sign button
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {
                        // Handle the button press
                      },
                      child: Icon(Icons.add),
                      backgroundColor: Color.fromARGB(255, 19, 75, 121),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: TextField(
                    textAlign: TextAlign.center,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                      ),
                      contentPadding: EdgeInsets.all(100),
                      hintText: 'وصف المنظمة',
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const workHours()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(175, 40)),
                  ),
                  child: const Text(
                    'تخطي',
                    style: TextStyle(
                      color: Color(0xFF213753),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const workHours()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(175, 40)),
                  ),
                  child: const Text(
                    'موافق',
                    style: TextStyle(
                      color: Color(0xFF213753),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
