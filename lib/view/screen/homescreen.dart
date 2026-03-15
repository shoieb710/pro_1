import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/core/constant/imageassets.dart';
import 'package:pro_1/cubit/procubit.dart';
import 'package:pro_1/cubit/prostate.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Container(
            height: 60,

            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageAssets.logo)),
              shape: BoxShape.circle,
            ),
          ),
        ),
        actionsPadding: EdgeInsets.all(10),
        leadingWidth: 75,

        titleSpacing: 10,
        title: Column(
          children: [
            SizedBox(height: 10),
            Text("حرفي", style: Theme.of(context).textTheme.headlineLarge),
            Text("اهلا احمد", style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        toolbarHeight: 80,
        actions: [Icon(Iconsax.notification5)],
      ),
      bottomNavigationBar: BlocBuilder<HomescreenCubit, Homescreenstate>(
        builder: (context, state) {
          return BottomNavigationBar(
            elevation: 10,
            currentIndex: state.currentpage,
            iconSize: 25,
            selectedFontSize: 18,
            selectedItemColor: AppColors.secondary,
            showUnselectedLabels: true,
            selectedIconTheme: IconThemeData(
              color: AppColors.secondary,
              size: 30,
            ),
            onTap: (value) {
              context.read<HomescreenCubit>().updateCurrntPage(value);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.element_4),

                label: "الرئيسية",
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.money_recive),

                label: "مهامي",
              ),

              BottomNavigationBarItem(
                icon: Icon(Iconsax.clipboard_tick),

                label: "أرباحي",
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.setting_2),

                label: "الأعدادات",
              ),
            ],
          );
        },
      ),

      body: BlocBuilder<HomescreenCubit, Homescreenstate>(
        builder: (context, state) {
          return state.listpage.elementAt(state.currentpage);
        },
      ),
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
