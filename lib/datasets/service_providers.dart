// ignore_for_file: unused_import

import 'package:flutter/material.dart';

class ServiceProvider {
  final int id, age, rate;
  final String name, title, description, location;
  final Image image;

  ServiceProvider(
      {required this.id,
      required this.age,
      required this.name,
      required this.title,
      required this.description,
      required this.location,
      required this.rate,
      required this.image});
}
//Demo List

Set<ServiceProvider> providers = {
  ServiceProvider(
      id: 1,
      age: 30,
      name: "John Maina",
      title: "Teacher",
      description: "A qualified Teacher who is a professional",
      location: "Kisumu",
      rate: 5,
      image: Image.asset('images/man.png')),
  ServiceProvider(
      id: 2,
      age: 45,
      name: "John Luchiri",
      title: "Farmer",
      description: "Farm professionally.",
      location: "Kisumu",
      image: Image.asset('images/man.png'),
      rate: 5),
  ServiceProvider(
      id: 3,
      age: 35,
      name: "Mary Nzioka",
      title: "Lecturer",
      description: "A JKUAT lecturer",
      location: "Nandi",
      rate: 5,
      image: Image.asset('images/man.png')),
  ServiceProvider(
      id: 4,
      age: 22,
      name: "Lucy Winaina",
      title: "Dentist",
      description: "A  professional dentist",
      location: "Kisumu",
      rate: 5,
      image: Image.asset('images/man.png')),
  ServiceProvider(
      id: 1,
      age: 30,
      name: "Michael Kamande",
      title: "Lawyer",
      description: "A qualified Teacher who is a professional",
      location: "Kisumu",
      rate: 5,
      image: Image.asset('images/man.png')),
  ServiceProvider(
      id: 1,
      age: 30,
      name: "John Maina",
      title: "Teacher",
      description: "A qualified Teacher who is a professional",
      location: "Kisumu",
      rate: 5,
      image: Image.asset('images/man.png')),
  ServiceProvider(
      id: 2,
      age: 45,
      name: "John Luchiri",
      title: "Farmer",
      description: "Farm professionally.",
      location: "Kisumu",
      image: Image.asset('images/man.png'),
      rate: 5),
  ServiceProvider(
      id: 3,
      age: 35,
      name: "Mary Nzioka",
      title: "Lecturer",
      description: "A JKUAT lecturer",
      location: "Nandi",
      rate: 5,
      image: Image.asset('images/man.png')),
  ServiceProvider(
      id: 4,
      age: 22,
      name: "Lucy Winaina",
      title: "Dentist",
      description: "A  professional dentist",
      location: "Kisumu",
      rate: 5,
      image: Image.asset('images/man.png')),
  ServiceProvider(
      id: 1,
      age: 30,
      name: "Michael Kamande",
      title: "Lawyer",
      description: "A qualified Teacher who is a professional",
      location: "Kisumu",
      rate: 5,
      image: Image.asset('images/man.png'))
};
