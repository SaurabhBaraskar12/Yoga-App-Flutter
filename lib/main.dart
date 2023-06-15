// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:saurabhflutter/advance.dart';

import 'beginner.dart';
import 'intermediate.dart';

void main() => runApp(YogaApp());

class YogaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yoga App',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/category': (context) => CategoryPage(),
        '/page1': (context) => Beginner(),
        '/page2': (context) => Intermediate(),
        '/page3': (context) => Advance(),
      },
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga App'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset('login_img.jpg'),
              ),
              Text('YOGA SE HI HOGA!'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    hintText: 'Enter your username',
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your password',
                  ),
                ),
              ),
              SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yoga App'),
      ),
      drawer: Drawer(),
      body: ListView(
        children: [
          CategoryCard(
            category: 'Beginner',
            imagePath: 'first.jpg',
            onTap: () {
              Navigator.pushNamed(context, '/category', arguments: 'Beginner');
            },
          ),
          CategoryCard(
            category: 'Intermediate',
            imagePath: 'second.jpg',
            onTap: () {
              Navigator.pushNamed(context, '/category',
                  arguments: 'Intermediate');
            },
          ),
          CategoryCard(
            category: 'Advanced',
            imagePath: 'third.jpg',
            onTap: () {
              Navigator.pushNamed(context, '/category', arguments: 'Advanced');
            },
          ),
          Card(
            margin: EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                 Text(
                    'About Yoga',
                   
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500,
                    color: Colors.teal),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                     textAlign: TextAlign.justify,
                    'Yoga is an ancient practice that combines physical postures, breathing exercises, and meditation to promote overall well-being. It improves flexibility, strength, and balance while reducing stress and enhancing mental clarity. Yoga is beneficial for physical health, mental and emotional well-being, stress management, and spiritual growth. It can be adapted to individual needs and is accessible to people of all ages and fitness levels.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,
                    color: Colors.black),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                     textAlign: TextAlign.justify,
                    'The practice of yoga combines physical postures (asanas), breathing exercises (pranayama), meditation, and ethical principles to promote overall health and balance. While yoga is often associated with physical flexibility and strength, its benefits extend beyond the physical realm to encompass mental clarity, emotional stability, and spiritual growth.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400,
                    color: Colors.black),
                  ),
                  
              ]),
            ),
          )
        ],
      ),

    );
  }
}

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final String category =
        ModalRoute.of(context)!.settings.arguments as String;
    String description = '';
    String iP = '';
    String route = '';

    if (category == 'Beginner') {
      iP = '2yo.png';
      route = '/page1';
      description =
          'Beginner yoga poses are great for individuals who are new to yoga or prefer a gentle practice. They focus on building strength, flexibility, and body awareness.';
    } else if (category == 'Intermediate') {
      route = '/page2';
      iP = '1yo.png';
      description =
          'Intermediate yoga poses are suitable for practitioners who have a good understanding of yoga basics and are looking to challenge themselves further. These poses may require more strength, balance, and flexibility.';
    } else if (category == 'Advanced') {
      route = '/page3';
      iP = '3yo.png';
      description =
          'Advanced yoga poses are for experienced practitioners who have a strong foundation in yoga. They involve complex postures that require a high level of strength, flexibility, and body control.';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Category: $category',
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold),
            ),
            Image.asset(
              iP,
              width: 200,
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              'Description:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, route);
              },
              child: Text('View Pose Details'),
            ),
          ],
        ),
      ),
    );
  }
}



class CategoryCard extends StatelessWidget {
  final String category;
  final String imagePath;
  final VoidCallback onTap;

  const CategoryCard({
    required this.category,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20.0),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: 350,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  category,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// class PosePage extends StatelessWidget {
//   const PosePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pose Details'),
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Text(
//                   'Pose Name',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Pose Description:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac urna vel justo malesuada convallis. Ut a ipsum in dui aliquam accumsan et vel tellus. Mauris interdum nulla ex, sed vestibulum purus vulputate id.',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Benefits:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   '1. Lorem ipsum dolor sit amet\n'
//                   '2. Consectetur adipiscing elit\n'
//                   '3. Nulla ac urna vel justo malesuada convallis\n'
//                   '4. Ut a ipsum in dui aliquam accumsan et vel tellus',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   'Pose Name',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Pose Description:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac urna vel justo malesuada convallis. Ut a ipsum in dui aliquam accumsan et vel tellus. Mauris interdum nulla ex, sed vestibulum purus vulputate id.',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Benefits:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   '1. Lorem ipsum dolor sit amet\n'
//                   '2. Consectetur adipiscing elit\n'
//                   '3. Nulla ac urna vel justo malesuada convallis\n'
//                   '4. Ut a ipsum in dui aliquam accumsan et vel tellus',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   'Pose Name',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Pose Description:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac urna vel justo malesuada convallis. Ut a ipsum in dui aliquam accumsan et vel tellus. Mauris interdum nulla ex, sed vestibulum purus vulputate id.',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Benefits:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   '1. Lorem ipsum dolor sit amet\n'
//                   '2. Consectetur adipiscing elit\n'
//                   '3. Nulla ac urna vel justo malesuada convallis\n'
//                   '4. Ut a ipsum in dui aliquam accumsan et vel tellus',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 Text(
//                   'Pose Name',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Pose Description:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ac urna vel justo malesuada convallis. Ut a ipsum in dui aliquam accumsan et vel tellus. Mauris interdum nulla ex, sed vestibulum purus vulputate id.',
//                   style: TextStyle(fontSize: 16),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   'Benefits:',
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 10),
//                 Text(
//                   '1. Lorem ipsum dolor sit amet\n'
//                   '2. Consectetur adipiscing elit\n'
//                   '3. Nulla ac urna vel justo malesuada convallis\n'
//                   '4. Ut a ipsum in dui aliquam accumsan et vel tellus',
//                   style: TextStyle(fontSize: 16),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }