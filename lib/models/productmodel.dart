import 'package:flutter/material.dart';
import 'package:plantapp/pages/green.dart';
import 'package:plantapp/pages/indoor.dart';
import 'package:plantapp/pages/shape.dart';

class ProductModel {
  final String plantname, img, description;
  final double price;

  ProductModel(
      {required this.plantname,
      required this.img,
      required this.description,
      required this.price});
}

//details for the green plants
List<ProductModel> greenDetails = [
  ProductModel(
      plantname: 'Turf Pot Plant',
      img: 'assets/turfflower6.png',
      description: 'Small leaf plants for your home',
      price: 59.00),
  ProductModel(
      plantname: 'Scandinavain',
      img: 'assets/turfflower2.png',
      description: 'Small leaf plants for your home',
      price: 59.00),
];

//details for the indoor plants
List<ProductModel> indoorDetails = [
  ProductModel(
      plantname: 'Cactsgrass Plant',
      img: 'assets/turfflower3.png',
      description: 'Indoor plant for your home and office decorations',
      price: 59.00),
  ProductModel(
      plantname: 'Cactsgrass  Bush Plant',
      img: 'assets/turfflower4.png',
      description: 'Plant for your home and office decorations',
      price: 59.00),
];

//details for the shape plants
List<ProductModel> shapeDetails = [
  ProductModel(
      plantname: 'Yew Plant',
      img: 'assets/turfflower5.png',
      description: 'Plant for your home and office decorations',
      price: 59.00),
  ProductModel(
      plantname: 'Lily Bush Plant',
      img: 'assets/turfflower1.jpg',
      description: 'Plant for your home and office decoration',
      price: 59.00),
];

//list of pages
List<Widget> screens = [const Green(), const Indoor(), const Shape()];

//footer elements
List<IconData> footerIcons = [
  Icons.height_outlined,
  Icons.thermostat,
  Icons.portrait,
];
List<String> footer = ['Height', ' Temperature', 'Pot'];
List<String> footerRange = [
  '40.0 cm to 50cm',
  ' 18c to 25c',
  'Self Growing Pot'
];
