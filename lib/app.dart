import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_info/pages/user/user_page.dart';
import 'package:user_info/utils/app_colors.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'User Info',
        theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: AppColors.accent),
          useMaterial3: true,
        ),
        home: const UserPage(),
      ),
    );
  }
}
