import 'package:diettimer/presentation/diet/diet_plan_setting.dart';
import 'package:flutter/material.dart';
import 'package:diettimer/core/component/diet_time_card.dart';

class DietPlanMethod extends StatelessWidget {
  const DietPlanMethod({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 4),
              const Text(
                '단식 방법을 선택해보세요',
                style: TextStyle(fontSize: 24),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DietSettingScreen(
                        selectedMethod: '12-12', // Set the selected method
                        startDate: DateTime.now(), // Set today's date
                      ),
                    ),
                  );
                },
                child: const DietTimeCard(
                  duration: '12-12',
                  description: '12시간 단식 후 12시간 식사',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DietSettingScreen(
                        selectedMethod: '14-10', // Set the selected method
                        startDate: DateTime.now(), // Set today's date
                      ),
                    ),
                  );
                },
                child: const DietTimeCard(
                  duration: '14-10',
                  description: '14시간 단식 후 10시간 식사',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DietSettingScreen(
                        selectedMethod: '16-8', // Set the selected method
                        startDate: DateTime.now(), // Set today's date
                      ),
                    ),
                  );
                },
                child: const DietTimeCard(
                  duration: '16-8',
                  description: '16시간 단식 후 8시간 식사',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DietSettingScreen(
                        selectedMethod: '18-6', // Set the selected method
                        startDate: DateTime.now(), // Set today's date
                      ),
                    ),
                  );
                },
                child: const DietTimeCard(
                  duration: '18-6',
                  description: '18시간 단식 후 6시간 식사',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DietSettingScreen(
                        selectedMethod: '20-4', // Set the selected method
                        startDate: DateTime.now(), // Set today's date
                      ),
                    ),
                  );
                },
                child: const DietTimeCard(
                  duration: '20-4',
                  description: '20시간 단식 후 4시간 식사',
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DietSettingScreen(
                        selectedMethod: '종일 단식', // Set the selected method
                        startDate: DateTime.now(), // Set today's date
                      ),
                    ),
                  );
                },
                child: const DietTimeCard(
                  duration: '종일 단식',
                  description: '24시간 단식 동안 연속으로 단식하기',
                ),
              ),
              // Other DietTimeCard widgets...
            ],
          ),
        ),
      ),
    );
  }
}
