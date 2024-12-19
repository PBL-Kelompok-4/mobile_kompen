import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/core/models/list_kompen_model.dart' as list;
import 'package:sistem_kompen_app/core/models/progres_kompen_model.dart' as progres;
import 'package:sistem_kompen_app/features/auth/login/login_view.dart';
import 'package:sistem_kompen_app/features/auth/splash/splash_view.dart';
import 'package:sistem_kompen_app/features/dashboard/dashboard_view.dart';
import 'package:sistem_kompen_app/features/dashboard/home/progres-detail/progres_detail_view.dart';
import 'package:sistem_kompen_app/features/dashboard/notif/notif_detail_view.dart';
import 'package:sistem_kompen_app/features/dashboard/notif/notif_view.dart';
import 'package:sistem_kompen_app/features/dashboard/task/task-detail/task_detail_view.dart';
import 'app_routes.dart';

class AppPages {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case AppRoutes.dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardView());
      case AppRoutes.progresKompenDetail:
        final progres.ProgresKompenData progresKompenData = settings.arguments! as progres.ProgresKompenData;
        return MaterialPageRoute(
          builder: (_) => ProgresDetailView(
            progresKompenData: progresKompenData,
          ),
        );
      case AppRoutes.taskKompenDetail:
        final list.KompenData kompenData = settings.arguments! as list.KompenData;
        return MaterialPageRoute(
          builder: (_) => TaskDetailView(
            kompenData: kompenData,
          ),
        );
      case AppRoutes.notif:
        return MaterialPageRoute(builder: (_) => const NotifView());
      case AppRoutes.notifDetail:
        return MaterialPageRoute(builder: (_) => const NotifDetailView());

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
