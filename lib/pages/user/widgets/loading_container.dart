import 'package:flutter/material.dart';
import 'package:user_info/utils/app_colors.dart';

class LoadingContainer extends StatelessWidget {
  final Widget child;
  final bool isShowLoading;

  const LoadingContainer(
      {Key? key, required this.child, required this.isShowLoading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        Visibility(
            visible: isShowLoading,
            child: Container(
                color: AppColors.barrierColor,
                child: const Center(
                    child: CircularProgressIndicator(
                  color: AppColors.accent,
                )))),
      ],
    );
  }
}
