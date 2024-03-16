import 'package:flutter/material.dart';

Color primaryColor = Color.fromRGBO(88, 181, 131, 1);
Color secondaryColor = Color.fromRGBO(54, 139, 93, 1);
const String testImage =
    "https://lh3.googleusercontent.com/proxy/eKFhrQ6C48nPdiBsqyI2kbWAJ18DQuVS9XDK87pMlZLmviSAKLquC5qBxbxHcmOxoE71RcZJ2Rf65ZcVemJ0ulEEx7MHOAyZ2mDcUHfeMyjlMG-QVZ0X8D2o4UjH2eJIfljkiE1Grx_9V1Q";

const AdminId = "!!8e7D6JsHYxTeWy6bVeO7uBLowhf2";

/// map =  { key : value } ==>  map["key"] <== value
///
/// courses  ==> course_content => [Map , map , map ]
///

///
///
///

List<Map<String, dynamic>> courses = [
  {
    "course_title": "Course de Code de la Route",
    "course_image":
        "https://images.unsplash.com/photo-1706820643404-71812d9d7d3a?q=80&w=3029&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "course_content": [
      {
        "text": "Introduction au Code de la Route",
        "image":
            "https://images.unsplash.com/photo-1707343844152-6d33a0bb32c3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Signalisation Routière",
        "image":
            "https://images.unsplash.com/photo-1710376624049-8e439bd1d108?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Priorités et Intersection",
        "image":
            "https://images.unsplash.com/photo-1707343843344-011332037abb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Conduite en Agglomération",
        "image":
            "https://images.unsplash.com/photo-1682686581854-5e71f58e7e3f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8fA%3D%3D"
      },
    ]
  },
  {
    "course_title": "Course de Code de la Route",
    "course_image":
        "https://images.unsplash.com/photo-1707343843598-39755549ac9a?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8fA%3D%3D",
    "course_content": [
      {
        "text": "Introduction au Code de la Route",
        "image":
            "https://images.unsplash.com/photo-1707343844152-6d33a0bb32c3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Signalisation Routière",
        "image":
            "https://images.unsplash.com/photo-1710376624049-8e439bd1d108?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Priorités et Intersection",
        "image":
            "https://images.unsplash.com/photo-1707343843344-011332037abb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Conduite en Agglomération",
        "image":
            "https://images.unsplash.com/photo-1682686581854-5e71f58e7e3f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8fA%3D%3D"
      },
    ]
  },
  {
    "course_title": "Course de Code de la Route",
    "course_image":
        "https://images.unsplash.com/photo-1682686579688-c2ba945eda0e?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "course_content": [
      {
        "text": "Introduction au Code de la Route",
        "image":
            "https://images.unsplash.com/photo-1707343844152-6d33a0bb32c3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Signalisation Routière",
        "image":
            "https://images.unsplash.com/photo-1710376624049-8e439bd1d108?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Priorités et Intersection",
        "image":
            "https://images.unsplash.com/photo-1707343843344-011332037abb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Conduite en Agglomération",
        "image":
            "https://images.unsplash.com/photo-1682686581854-5e71f58e7e3f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8fA%3D%3D"
      },
    ]
  },
  {
    "course_title": "Course de Code de la Route",
    "course_image":
        "https://images.unsplash.com/photo-1706820643404-71812d9d7d3a?q=80&w=3029&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
    "course_content": [
      {
        "text": "Introduction au Code de la Route",
        "image":
            "https://images.unsplash.com/photo-1707343844152-6d33a0bb32c3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Signalisation Routière",
        "image":
            "https://images.unsplash.com/photo-1710376624049-8e439bd1d108?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Priorités et Intersection",
        "image":
            "https://images.unsplash.com/photo-1707343843344-011332037abb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Conduite en Agglomération",
        "image":
            "https://images.unsplash.com/photo-1682686581854-5e71f58e7e3f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8fA%3D%3D"
      },
    ]
  },
  {
    "course_title": "Course de Code de la Route",
    "course_image":
        "https://images.unsplash.com/photo-1707343848552-893e05dba6ac?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHw1Nnx8fGVufDB8fHx8fA%3D%3D",
    "course_content": [
      {
        "text": "Introduction au Code de la Route",
        "image":
            "https://images.unsplash.com/photo-1707343844152-6d33a0bb32c3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwxMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Signalisation Routière",
        "image":
            "https://images.unsplash.com/photo-1710376624049-8e439bd1d108?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxM3x8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Priorités et Intersection",
        "image":
            "https://images.unsplash.com/photo-1707343843344-011332037abb?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D"
      },
      {
        "text": "Conduite en Agglomération",
        "image":
            "https://images.unsplash.com/photo-1682686581854-5e71f58e7e3f?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwzMXx8fGVufDB8fHx8fA%3D%3D"
      },
    ]
  }
];
