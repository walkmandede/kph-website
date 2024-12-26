import 'package:flutter/material.dart';

class MyResponsiveBuilder extends StatelessWidget {
  final Widget Function(bool xHorizontal) horizontalBuilder;
  final Widget Function(bool xVertical)? verticalBuilder;

  const MyResponsiveBuilder({
    super.key,
    required this.horizontalBuilder,
    this.verticalBuilder,
  });

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final Size screenSize = MediaQuery.of(context).size;
    final bool xHorizontal = screenSize.width >= screenSize.height;

    // Build the selected layout with the state passed to the builder
    return xHorizontal
        ? horizontalBuilder(xHorizontal) // Pass true for horizontal layout
        : verticalBuilder != null
        ? verticalBuilder!(!xHorizontal) // Pass false for vertical layout
        : horizontalBuilder(xHorizontal); // Fallback to horizontal if no vertical builder
  }
}
