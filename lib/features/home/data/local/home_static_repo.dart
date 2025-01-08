import 'package:flutter/material.dart';
import 'package:medical_app/features/home/data/model/doctor_model.dart';

class HomeStaticRepo {
  static List<BottomNavModel> bottomNav = [
    BottomNavModel(
        iconActivate: Icons.home,
        iconInactive: Icons.home_outlined,
        label: 'Home'),
    BottomNavModel(
        iconActivate: Icons.chat_bubble,
        iconInactive: Icons.chat_bubble_outline,
        label: 'Chat'),
    BottomNavModel(
        iconActivate: Icons.person_3,
        iconInactive: Icons.person_3_outlined,
        label: 'Profile'),
  ];

  static List<DoctorModel> doctors = [
    DoctorModel(
        avatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRx9_YGXkCZ96VfdvVYVGQSL7Pk3HSaIgmsYw&s',
        bio:
            'Advocate for precision and attention to detail in the operating room. 🙍🏽',
        rating: '4.0',
        name: 'Anna Frank',
        specialty: 'Surgeon',
        yearExperience: '3'),
    DoctorModel(
        avatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7arjx0gasPeP1A38xuFUzUUR09XsBYmpY3Q&s',
        bio:
            'Committed to building strong patient-doctor relationships based on trust and open communication. 👨🏽',
        rating: '3.0',
        name: 'Arthur Hawkins',
        specialty: 'Cardilogist',
        yearExperience: '2'),
    DoctorModel(
        avatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdOwKoG6F9Wbuv7Kuh6b2hoRDIvsFjbYW1Ig&s',
        bio:
            'Advocate for the well-being of children and supporting parents in making informed healthcare decisions. 👨🏫⛵',
        rating: '3.2',
        name: 'Oliver James',
        specialty: 'Pediatrician',
        yearExperience: '13'),
    DoctorModel(
        avatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmTvqn34bTKWpliHV_ABqP9xc4vbQz32zpA&s',
        bio:
            'Committed to delivering evidence-based medicine with a focus on patient-centered care. 💻👩',
        rating: '4.5',
        name: 'Henry Lucas',
        specialty: 'Oncologist',
        yearExperience: '20'),
    DoctorModel(
        avatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfXIUISJAlqqo0dAVk87hcbZsDJ0k7YgOI5A&s',
        bio:
            'Believer in creating a child-friendly environment that fosters trust and eases anxiety. 👨👨🙌',
        rating: '2.4',
        name: 'William Jones',
        specialty: 'Pediatrician',
        yearExperience: '12'),
    DoctorModel(
        avatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQlRetveZ2L46cxTn5fnagmgGBjpugS3A63ug&s',
        bio:
            'Believer in the importance of radiology in guiding effective treatment plans and interventions. 👨👨🙌',
        rating: '3.5',
        name: 'Thomas Roberts',
        specialty: 'Radiologist',
        yearExperience: '10'),
    DoctorModel(
        avatar:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSheP4NBYA6ihuhbEQ9eO0FjvlakdlcqPXRdA&s',
        bio:
            'Advocate for reducing the stigma associated with mental health disorders through education and advocacy. 👨☄',
        rating: '1.0',
        name: 'Mary Wilson',
        specialty: 'Psychiatrist',
        yearExperience: '15'),
  ];
}

class BottomNavModel {
  final String label;
  final IconData? iconActivate, iconInactive;
  BottomNavModel(
      {required this.label,
      required this.iconActivate,
      required this.iconInactive});
}
