import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/cubit/homecubit.dart';
import 'package:pro_1/cubit/homestate.dart';
import 'package:pro_1/view/wedget/counterbutton.dart';
import 'package:pro_1/view/wedget/textcounter.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("text counter"),
      ),
      body: Column(
      children: [Row(
        children: [
          Counterbutton(icon: Icon(Icons.add), onPressed: () {context.read<HomeCubit>().increment();  },),
          BlocBuilder<HomeCubit,Homestate>( builder: (context,state) {
            if (state is IncrementCounter){
              return Textcounter(counter: state.counter, color: ColorApp.c5,);
            } if (state is DecrementCounter){
              return Textcounter(counter: state.counter, color:  Colors.green,);
            }else{
              return Textcounter(counter: state.counter, color:  Colors.black,);
            }

              
            }
          ),
           Counterbutton(icon: Icon(Icons.remove), onPressed: () {context.read<HomeCubit>().decrement();  },)

        ],
      )],
    ),
    );
    
    
  }
}