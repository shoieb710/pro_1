import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pro_1/bloc/pro_bloc.dart';
import 'package:pro_1/bloc/pro_event.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/core/constant/theme.dart';
import 'package:pro_1/cubit/procubit.dart';
import 'package:pro_1/cubit/prostate.dart';
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
    final themeCubit = context.read<ThemeCubit>();
    return Scaffold( 
      appBar: AppBar(
        title: Text("text counter"),
      ),
      body: Column(
      children: [Row(
        children: [
          Counterbutton(icon: Icon(Icons.add), onPressed: () {
            context.read<ProBloc>().add(IncrementEvent());
            context.read<HomeCubit>().increment();  },),
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
           Counterbutton(icon: Icon(Icons.remove), onPressed: () {
            context.read<ProBloc>().add(DecrementEvent());
            context.read<HomeCubit>().decrement();  },),
           SizedBox(height: 100,),
          Center(
        child: ElevatedButton(
          onPressed: () => themeCubit.toggleTheme(),
          child: const Text('Toggle Theme'),))
        ],
      )],
    ),
    );
    
    
  }
}