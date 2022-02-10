import 'package:auto_route/annotations.dart';
import '/screens/home/home_screen.dart';

// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomeScreen, initial: true)
    // AutoRoute(page: BookListPage, initial: true),
    // AutoRoute(page: BookDetailsPage),
  ],
)
class $AppRouter {}
