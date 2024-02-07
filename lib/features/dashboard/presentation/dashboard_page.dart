import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pdf_maker/common/presentation/bottom_nav.dart';
import 'package:pdf_maker/features/core/presentation/colors.dart';
import 'package:pdf_maker/features/core/presentation/routes/app_router.gr.dart';
import 'package:pdf_maker/features/core/presentation/theme.dart';
import 'package:pdf_maker/features/core/shared/providers.dart';
import 'package:pdf_maker/features/dashboard/application/dashboard_notifier.dart';

@RoutePage()
class DashboardPage extends ConsumerWidget {
  DashboardPage({super.key});
  final TextEditingController _searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: primaryBGColor,
      appBar: AppBar(
        backgroundColor: primaryBGColor,
        title: const Text('DASHBOARD', style: pageTitleStyle),
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: (){}
          )
        ],
      ),
      bottomNavigationBar: const BottomNav(),
      body: _buildDashboardBody(context, ref),
    );
  }

  Widget _buildDashboardBody(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        _buildPDFList(context, ref),
        _buildSearchBar(context, ref),
        ],
    );
  }

  Widget _buildSearchBar(context, ref){

    // final DashboardState dashboardState = ref.watch(dashboardNotifierProvider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        controller: _searchTextController,
        decoration: InputDecoration(
          hintText: 'Search PDFs',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),

        onChanged: (value) {
          ref.read(dashboardNotifierProvider.notifier).filterPDFFiles(value);
        },
      ),
    );


  }



  Widget _buildPDFList(BuildContext context, WidgetRef ref) {
    // final DashboardNotifier dashboardNotifier = ref.read(dashboardNotifierProvider.notifier);
    final DashboardState dashboardState = ref.watch(dashboardNotifierProvider);

    if (dashboardState.filteredPDFFiles.isEmpty) {
      return const Center(
        child: Text('No PDFs added yet!. Click on the + button to create a PDF.'),
      );
    }

    

    return Padding(
      padding: const EdgeInsets.only(top: 80.0),
      child: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: dashboardState.filteredPDFFiles.length,
        itemBuilder: (context, index) {
          return ListTile(
              leading: const Icon(Icons.picture_as_pdf),
              title: Text(dashboardState.filteredPDFFiles[index].fileName),
              onTap: () {
                AutoRouter.of(context).push(ViewPDFRoute(pdfFile: dashboardState.filteredPDFFiles[index]));
              });
        },
      ),
    );
  }
}
