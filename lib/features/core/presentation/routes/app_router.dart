import 'package:auto_route/auto_route.dart';
import 'package:pdf_maker/features/core/presentation/routes/app_router.gr.dart';
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, path: '/'),
    AutoRoute(page: DashboardRoute.page, path: '/dashboard'),
    AutoRoute(page: CreatePDFRoute.page, path: '/create-pdf'),
    AutoRoute(page: ViewPDFRoute.page, path: '/view-pdf'),
    
  ];
}
