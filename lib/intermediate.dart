// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Intermediate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pose Details'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Start with Basics',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Pose Name: Vasisthasana',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
                  color: Colors.teal),
                ),
                Image.asset('inter1.jpg'),
                SizedBox(height: 10),
                Text(
                  'Pose Description:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Anulom Vilom, also known as alternate nostril breathing, is a yogic breathing technique where you inhale through one nostril while closing the other, and then exhale through the opposite nostril. It helps to balance the flow of energy in the body, reduce stress, and promote relaxation.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  'Benefits:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1.Anulom Vilom helps reduce stress, anxiety, and promotes relaxation.\n'
                  '2. It enhances lung capacity, strengthens respiratory muscles, and improves overall respiratory function.\n'
                  '3. Regular practice of Anulom Vilom enhances focus, concentration, and mental clarity.\n',
                
                  style: TextStyle(fontSize: 16),
                ),
                
                 SizedBox(
                  height: 20,
                ),
                Text(
                  'Pose Name: Dandasana',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
                  color: Colors.teal),
                ),
                Image.asset('inter2.jpg'),
                SizedBox(height: 10),
                Text(
                  'Pose Description:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  ' Kapal Bhati is a yogic breathing technique that involves forceful exhalation through the nose while keeping the inhalation passive. It helps to cleanse the respiratory system, increase oxygen supply to the body, and strengthen the abdominal muscles.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  'Benefits:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. The forceful exhalations engage the abdominal muscles, toning and strengthening the core.\n'
                  '2. Kapal Bhati increases the supply of oxygen to the brain, revitalizing the mind and improving focus and alertness.\n'
                  '3.It helps to cleanse the respiratory system by clearing the nasal passages and lungs.\n',
                
                  style: TextStyle(fontSize: 16),
                ),
                 SizedBox(
                  height: 30,
                ),
                Text(
                  'Pose Name: Kapal Bhati',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,
                  color: Colors.teal),
                ),
                Image.asset('inter3.jpg'),
                SizedBox(height: 10),
                Text(
                  'Pose Description:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Balasana, also known as Child\'s Pose In this pose, you sit back on your heels, fold your body forward, and rest your forehead on the ground. It promotes relaxation, releases tension in the back and shoulders, and provides a sense of comfort and surrender.',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 30),
                Text(
                  'Benefits:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  '1. It is a restorative pose that allows the body to rest and recharge, aiding in rejuvenation and recovery.\n'
                  '2. Balasana gently stretches the hips, lower back, and shoulders, relieving tension and stiffness in these areas.\n'
                  '3. It promotes a sense of calmness and relaxation, helping to reduce stress and anxiety.\n',
                  
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
