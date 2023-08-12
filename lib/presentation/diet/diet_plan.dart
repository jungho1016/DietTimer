import 'package:diettimer/presentation/diet/diet_plan_method.dart';
import 'package:flutter/material.dart';

class DietPlan extends StatelessWidget {
  const DietPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const DietPlanMethod()),
          );
        },
        child: const Text('계획하기'),
      ),
    );
  }
}
