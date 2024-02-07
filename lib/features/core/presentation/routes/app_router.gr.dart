// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i7;
import 'package:pdf_maker/features/core/presentation/splash_page.dart' as _i3;
import 'package:pdf_maker/features/create_pdf/domain/pdf_file.dart' as _i6;
import 'package:pdf_maker/features/create_pdf/presentation/create_pdf_page.dart'
    as _i1;
import 'package:pdf_maker/features/dashboard/presentation/dashboard_page.dart'
    as _i2;
import 'package:pdf_maker/features/dashboard/presentation/view_pdf_page.dart'
    as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CreatePDFRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreatePDFPage(),
      );
    },
    DashboardRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.DashboardPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SplashPage(),
      );
    },
    ViewPDFRoute.name: (routeData) {
      final args = routeData.argsAs<ViewPDFRouteArgs>();
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ViewPDFPage(
          args.pdfFile,
          key: args.key,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.CreatePDFPage]
class CreatePDFRoute extends _i5.PageRouteInfo<void> {
  const CreatePDFRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CreatePDFRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreatePDFRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.DashboardPage]
class DashboardRoute extends _i5.PageRouteInfo<void> {
  const DashboardRoute({List<_i5.PageRouteInfo>? children})
      : super(
          DashboardRoute.name,
          initialChildren: children,
        );

  static const String name = 'DashboardRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ViewPDFPage]
class ViewPDFRoute extends _i5.PageRouteInfo<ViewPDFRouteArgs> {
  ViewPDFRoute({
    required _i6.PDFFile pdfFile,
    _i7.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          ViewPDFRoute.name,
          args: ViewPDFRouteArgs(
            pdfFile: pdfFile,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'ViewPDFRoute';

  static const _i5.PageInfo<ViewPDFRouteArgs> page =
      _i5.PageInfo<ViewPDFRouteArgs>(name);
}

class ViewPDFRouteArgs {
  const ViewPDFRouteArgs({
    required this.pdfFile,
    this.key,
  });

  final _i6.PDFFile pdfFile;

  final _i7.Key? key;

  @override
  String toString() {
    return 'ViewPDFRouteArgs{pdfFile: $pdfFile, key: $key}';
  }
}
