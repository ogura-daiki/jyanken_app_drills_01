import 'package:flutter/material.dart';
import 'package:jyanken_app_drills/src/model/widget_entity/widget_type.dart';

class WidgetTreeDropZone extends StatelessWidget {
  final Set<WidgetType> allowType;
  final Function(WidgetType type) onDrop;

  const WidgetTreeDropZone._({
    super.key,
    required this.allowType,
    required this.onDrop,
  });

  factory WidgetTreeDropZone({
    Key? key,
    Set<WidgetType>? allowType,
    required Function(WidgetType type) onDrop,
  }) {
    return WidgetTreeDropZone._(
      key: key,
      allowType: allowType ?? WidgetType.values.toSet(),
      onDrop: onDrop,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DragTarget(
      onWillAcceptWithDetails: (details) {
        return details.data is WidgetType && allowType.contains(details.data);
      },
      onAcceptWithDetails: (details) {
        final data = details.data;
        if (data is! WidgetType || !allowType.contains(data)) return;
        onDrop(data);
      },
      builder: (context, candidateData, rejectedData) {
        late final Color bgColor;
        late final double borderWidth;
        late final Color borderColor;
        late final FontWeight fontWeight;
        if (candidateData.firstOrNull is! WidgetType) {
          bgColor = Colors.transparent;
          borderWidth = 1;
          borderColor = Theme.of(context).colorScheme.onSurface;
          fontWeight = .normal;
        } else {
          bgColor = Theme.of(context).colorScheme.primaryContainer;
          borderWidth = 2;
          borderColor = Theme.of(context).colorScheme.onPrimaryContainer;
          fontWeight = .bold;
        }
        return Padding(
          padding: const .all(4),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              color: bgColor,
              border: Border.all(color: borderColor, width: borderWidth),
              borderRadius: .circular(8),
            ),
            child: Center(
              child: Text(
                "カタログからドロップして追加",
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                  color: borderColor,
                  fontWeight: fontWeight,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
