import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pdf_maker/features/core/presentation/routes/app_router.gr.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard_customize_outlined),
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'Create PDF',
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          AutoRouter.of(context).replace(const DashboardRoute());
        }else{
          AutoRouter.of(context).push(const CreatePDFRoute());
        }
      },
    );
  }
}
