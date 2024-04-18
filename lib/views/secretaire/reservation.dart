import 'dart:js';

import 'package:flutter/material.dart';

class reservation extends StatefulWidget {
  const reservation({super.key});

  @override
  State<reservation> createState() => _reservationState();
}

class _reservationState extends State<reservation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
DateTime dateTime =DateTime(2024, 02, 25 , 21 , 
57);
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      

  
    
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${dateTime.day}/${dateTime.month}/${dateTime.year}/-${dateTime.hour}:${dateTime.minute}',
              style:  TextStyle(fontSize: 30),
           
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text('Select date &time',
              style: TextStyle(fontSize: 20)),
              onPressed:()  async{
              DateTime? newDate = await showDatePicker(
                  context: context,
                  initialDate: dateTime,
                  
                   firstDate: DateTime(2000), 
                   lastDate:DateTime(2100),);
                   if (newDate == null) return;
                 TimeOfDay? newTime =await  showTimePicker(
                    context: context,
                    initialTime: TimeOfDay(
                      hour: dateTime.hour, 
                      minute: dateTime.minute,
                      ),
                   );
                   if (newTime==null) return;
                   final newDateTime= DateTime(
                    newDate.year,
                    newDate.month,
                    newDate.day,
                    newTime.hour,
                    newTime.minute,
                   );
                     
                   
                   setState(() {
                     dateTime =newDate;
                   
                     
                   
              },);
              
   } ),
          ],
  
        ),
      )
      );
  }
}