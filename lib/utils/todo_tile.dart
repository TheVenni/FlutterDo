import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {

  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile({
    super.key, 
    required this.taskName, 
    required this.taskCompleted, 
    required this.onChanged
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 15.0),
      
      child: Container(
        padding: const EdgeInsets.all(12),
        
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        
        child: Row(
          children: [
            //checkbox
            Checkbox(
              value: taskCompleted, 
              onChanged: onChanged,
              activeColor: const Color.fromARGB(216, 0, 0, 0),
            ),

            //task name
            Text(
              taskName, 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                decoration: taskCompleted 
                  ? TextDecoration.lineThrough 
                  : TextDecoration.none
              )
            ),
          ],
        ),
      ),
    );
  }
}