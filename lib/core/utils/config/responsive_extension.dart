import 'media_query_config.dart';


extension ResponsiveExtension on num {
  double get w => this * MediaQueryConfig.blockWidth;
  double get h => this * MediaQueryConfig.blockHeight;
}