import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:pro_1/core/constant/colors.dart';
import 'package:pro_1/cubit/procubit.dart';
import 'package:pro_1/cubit/prostate.dart';

class WorkerHomepage extends StatelessWidget {
  const WorkerHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),

      children: [
        Card(
          elevation: 15,
          shadowColor: AppColors.secondary,
          child: BlocBuilder<WorkerHomepageCubit, WorkerHomepagestate>(
            builder: (context, state) {
              return ListTile(
                tileColor: AppColors.background,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
                title: Text(
                  "حاله التوفر",
                  style: Theme.of(
                    context,
                  ).textTheme.headlineLarge?.copyWith(fontSize: 20),
                ),
                subtitle: Text(
                  state.avelable
                      ? "انت متاح لاستقبال الطلبات الان"
                      : "انت غير متاح لاستقبال الطلبات الان",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                contentPadding: EdgeInsets.all(8),

                trailing: Switch(
                  value: state.avelable,
                  onChanged: (value) {
                    context.read<WorkerHomepageCubit>().changeStatus(value);
                  },
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        Card(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.accentCopper,
                ),
                height: 250,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: AppColors.primary,
                ),
                height: 245,
              ),
              Container(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "إجمالي الأرباح المستلمة",
                      style: Theme.of(context).textTheme.headlineMedium!
                          .copyWith(color: AppColors.background),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "4500",
                          style: Theme.of(context).textTheme.headlineLarge!
                              .copyWith(color: AppColors.background),
                        ),
                        SizedBox(width: 20),
                        Text(
                          "ج.م",
                          style: Theme.of(context).textTheme.headlineMedium!
                              .copyWith(color: AppColors.accentCopper),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          color: Colors.green[300],
                          child: Row(
                            children: [
                              Text(
                                "%12+",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              Icon(Iconsax.graph1, color: AppColors.success),
                            ],
                          ),
                        ),
                        Text(
                          "مقارنة بالشهر الماضي",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
