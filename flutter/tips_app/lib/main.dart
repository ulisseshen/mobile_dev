// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:tips_app/helpers/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient:
              LinearGradient(colors: [AppColors.quartinary, AppColors.quinary]),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: ListView(children: [
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.primary,
                      child: Icon(
                        Icons.person,
                        size: 48,
                        color: AppColors.tertiary,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: AppColors.primary,
                      child: CircleAvatar(
                        radius: 29,
                        backgroundColor: AppColors.quinary,
                        child: Icon(
                          Icons.notifications_outlined,
                          color: AppColors.tertiary,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "BEM VINDO, JOVEM DEV",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "R\$",
                      style: TextStyle(fontSize: 20),
                    ),
                    Text(
                      "1.200,00",
                      style: TextStyle(
                          color: AppColors.tertiary,
                          fontSize: 40,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                SizedBox(height: 26),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _CircleDisplay(
                      backgroundColor: Color(0xFFDAD4E2),
                      label: "Cash Out",
                      iconData: Icons.payments_outlined,
                    ),
                    _CircleDisplay(
                      backgroundColor: Color(0xFFCFEEF1),
                      label: "Statistic",
                      iconData: Icons.analytics_outlined,
                    ),
                    _CircleDisplay(
                      backgroundColor: Color(0xFFDAF1E1),
                      label: "More",
                      iconData: Icons.dashboard_outlined,
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Text("Recently Tips",
                    style: TextStyle(
                        color: AppColors.tertiary,
                        fontSize: 20,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 20),
                _TipsDetail(),
                SizedBox(
                  height: 8,
                ),
                _TipsDetail(),
                SizedBox(
                  height: 8,
                ),
                _TipsDetail(),
                SizedBox(
                  height: 8,
                ),
                _TipsDetail(),
                SizedBox(
                  height: 8,
                ),
                _TipsDetail(),
                SizedBox(
                  height: 8,
                ),
                _TipsDetail(),
              ]),
            ),
            Container(
              margin: EdgeInsets.all(32),
              height: 70,
              decoration: BoxDecoration(
                  color: AppColors.tertiary,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Material(
                      clipBehavior: Clip.hardEdge,
                      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(50)),
                      color: Color(0xFFCFEEF1),
                      child: InkWell(
                        splashColor: AppColors.primary,
                        onTap: (){
                          print("clicado");
                        },
                        child: Container(
                        
                          height: 70,
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(50)),
                          child: Icon(Icons.home)
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 68,
                    // decoration: BoxDecoration(color: Color(0xFFCFEEF1)),
                    child: Icon(Icons.qr_code, color: Color(0xFFCFEEF1))
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 68,
                    // decoration: BoxDecoration(color: ),
                    child: Icon(Icons.settings, color: Color(0xFFCFEEF1))
                  ),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class _TipsDetail extends StatelessWidget {
  const _TipsDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      decoration: BoxDecoration(
        color: Color(0xA0DAD4E2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(children: [
        CircleAvatar(
          backgroundColor: AppColors.primary,
          radius: 22,
          child: Icon(
            Icons.person,
            size: 30,
            color: AppColors.tertiary,
          ),
        ),
        SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nome",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text("22:40",
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.grey)),
          ],
        ),
        Spacer(),
        Text("R\$ 200,00",
            style: TextStyle(
                fontSize: 22, color: Colors.green, fontWeight: FontWeight.w700))
      ]),
    );
  }
}

class _CircleDisplay extends StatelessWidget {
  const _CircleDisplay({
    super.key,
    required this.backgroundColor,
    required this.label,
    required this.iconData,
  });

  final Color backgroundColor;
  final String label;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundColor: backgroundColor,
          child: Icon(
            iconData,
            size: 40,
            color: AppColors.tertiary,
          ),
        ),
        SizedBox(height: 12),
        Text(
          label,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
