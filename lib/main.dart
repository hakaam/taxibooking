
import 'package:flutter/material.dart';
import 'package:taxibookingappui/booking.dart';
import 'package:taxibookingappui/home.dart';
import 'package:taxibookingappui/payment_method.dart';
import 'package:taxibookingappui/summary.dart';

void main() =>
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':((context)=>Home()),
        '/booking':((context)=>Booking()),
        '/paymentMethod':((context)=>PaymentMethod()),
        '/summary':((context)=>Summary())





      },



    )



  );


