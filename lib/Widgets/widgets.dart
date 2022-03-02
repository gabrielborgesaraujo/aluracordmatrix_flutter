import 'package:flutter/material.dart';

Widget circularAvatar(var username) {
  if(username!=null){
    return CircleAvatar(
      backgroundImage: NetworkImage("https://github.com/${username}.png"),
      radius: 80,
    );
  }else{
    return const CircleAvatar(
      backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png"),
      radius: 80,
    );
  }
}

Widget usernameText(username){
  if(username!=null){
    return Text(username,style: const TextStyle(color: Colors.white,backgroundColor: Color(0xFF313D49)),);
  }
  else{
    return const Text("",style: TextStyle(color: Colors.white,backgroundColor: Color(0xFF313D49)),);
  }

}