import 'package:flutter/material.dart';
import 'package:socianity/res/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color color, textColor;
  final bool loading;
  const RoundButton({
    super.key,
    required this.title,
    required this.onPressed,
    this.textColor = AppColors.primaryTextTextColor,
    this.color = AppColors.primaryColor,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPressed,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: loading
            ? Center(child: CircularProgressIndicator(color: Colors.white))
            : Center(
                child: Text(
                  title,
                  style: Theme.of(
                    context,
                  ).textTheme.headlineMedium!.copyWith(fontSize: 16),
                ),
              ),
      ),
    );
  }
}
