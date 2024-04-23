import 'package:flutter/material.dart';

class GenderContainer extends StatelessWidget{
  const GenderContainer(
      {super.key, required this.genderIcon, required this.genderType,required this.onTap,required this.isSelected});
  final IconData genderIcon;
  final String genderType;
  final Function() onTap;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color(0xffD9D9D9),
          border: Border.all(color: isSelected?Colors.blue:Colors.grey,width: isSelected?2:0),
        ),
        child: Column(
          children: [
            Padding(
              padding:  const EdgeInsets.only(left: 80,top: 10,),
              child:  Icon(Icons.check_circle,size: 18,color: isSelected?Colors.blue: const Color(0xffD9D9D9)),
            ),
            Icon(
              genderIcon,
              size: 60,
              color: isSelected?Colors.blue:null,
            ),
            Text(
              genderType,
            ),
          ],
        ),
      ),
    );
  }
}
