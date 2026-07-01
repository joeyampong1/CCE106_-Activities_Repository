import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Student Dashboard"),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              print("Logout clicked");
            },
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Icon(Icons.add),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Profile Header
            Row(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('lib/assets/my_pic.png'),
                ),
                const SizedBox(width: 16),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Joey Ampong Jr.",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text("ID: 482578"),
                    Text("BSIT 3RD YEAR"),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Student Information Card
            Card(
              elevation: 1,
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.email),
                    title: Text("joey@gmail.com"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("+0950-351-6285"),
                  ),
                  ListTile(
                    leading: Icon(Icons.home),
                    title: Text("Calinan, Davao City, Philippines"),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Subjects",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Subject 1
            Card(
              child: ListTile(
                title: Text("Mobile App Development"),
                subtitle: Text(
                  "Instructor: Mr. Smith\nSchedule: Mon/Wed 10:00 - 11:30 AM",
                ),
              ),
            ),

            // Subject 2
            Card(
              child: ListTile(
                title: Text("Database Systems"),
                subtitle: Text(
                  "Instructor: Mrs. Garcia\nSchedule: Tue/Thu 1:00 - 2:30 PM",
                ),
              ),
            ),

            // Subject 3
            Card(
              child: ListTile(
                title: Text("Operating Systems"),
                subtitle: Text(
                  "Instructor: Dr. Lee\nSchedule: Fri 8:00 - 11:00 AM",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}