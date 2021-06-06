// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class FlatCard extends StatelessWidget {
  const FlatCard({
    this.margin = EdgeInsets.zero,
    this.padding = EdgeInsets.zero,
    this.color,
    this.label,
    this.trailing,
    this.labelAlignment = MainAxisAlignment.spaceBetween,
    this.widgetAlignment = CrossAxisAlignment.start,
    required this.child,
  });

  static final BorderRadius borderRadius = BorderRadius.circular(15);
  static const Radius radius = Radius.circular(15);

  final Widget child;

  /// When the value is null, the value of `padding` is [EdgeInsets.zero].
  final EdgeInsetsGeometry padding;

  /// When the value is null, the value of `margin` is [EdgeInsets.zero].
  final EdgeInsetsGeometry margin;
  final Color? color;

  final String? label;
  final Widget? trailing;

  /// defines the orientation of [label] and [trailing] that are in [Row]
  final MainAxisAlignment labelAlignment;

  /// defines the orientation of [child] through the wrap in [Column]
  final CrossAxisAlignment widgetAlignment;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: margin,
        child: Card(
            margin: EdgeInsets.zero,
            color: color,
            elevation: 0,
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(borderRadius: borderRadius),
            child: Padding(
                padding: padding,
                child: Column(
                    crossAxisAlignment: widgetAlignment,
                    children: <Widget>[
                      if (label != null)
                        Row(
                            mainAxisAlignment: labelAlignment,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                label!,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                              if (trailing != null) trailing!
                            ]),
                      if (label != null) const SizedBox(height: 10),
                      child,
                    ]))));
  }
}
