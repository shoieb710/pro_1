import 'package:flutter/material.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/core/constant/imageassets.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    // final themeCubit = context.read<ThemeCubit>();
    return Scaffold(
      appBar: AppBar(
        shadowColor: AppColors.grayText,
        elevation: 10,
        leading: Icon(Icons.add_ic_call),
        toolbarHeight: 80,
         actions: [
            Container(
              height: 60,
              width: 75,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                    ImageAssets.logo,
                  )),
                  shape: BoxShape.circle),
            )
          ],
        title: Text("text counter")),
      body: Container()
    );
  }
}






















// Column(
//         children: [
//           Row(
//             children: [
//               Counterbutton(
//                 icon: Icon(Icons.add),
//                 onPressed: () {
//                   context.read<ProBloc>().add(IncrementEvent());
//                   context.read<HomeCubit>().increment();
//                 },
//               ),
//               BlocBuilder<HomeCubit, Homestate>(
//                 builder: (context, state) {
//                   if (state is IncrementCounter) {
//                     return Textcounter(
//                       counter: state.counter,
//                       color: AppColors.accentCopper,
//                     );
//                   }
//                   if (state is DecrementCounter) {
//                     return Textcounter(
//                       counter: state.counter,
//                       color: Colors.green,
//                     );
//                   } else {
//                     return Textcounter(
//                       counter: state.counter,
//                       color: Colors.black,
//                     );
//                   }
//                 },
//               ),
//               Counterbutton(
//                 icon: Icon(Icons.remove),
//                 onPressed: () {
//                   context.read<ProBloc>().add(DecrementEvent());
//                   context.read<HomeCubit>().decrement();
                  
//                 },
//               ),
//               SizedBox(height: 100),
//               Expanded(
//                 child: Center(
//                   child: ElevatedButton(
//                     onPressed: () => themeCubit.toggleTheme(),
//                     child: const Text('Toggle Theme'),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//            Counterbutton(icon: Icon(Icons.remove), onPressed: () {
//             context.read<ProBloc>().add(DecrementEvent());
//             context.read<HomeCubit>().decrement();  },),
//            SizedBox(height: 100,),
//           Expanded(
//             child: Center(
//                     child: ElevatedButton(
//             onPressed: () => themeCubit.toggleTheme(),
//             child: const Text('Toggle Theme'),)),
//           )
//         ],
//       ),
