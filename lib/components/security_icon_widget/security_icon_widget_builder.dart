import 'package:neo_ui/components/security_icon_widget/security_icon_widget.dart';
import 'package:json_dynamic_widget/json_dynamic_widget.dart';

part 'security_icon_widget_builder.g.dart';

@JsonWidget(type: 'security_icon_widget')
abstract class _SecurityIconWidgetBuilder extends JsonWidgetBuilder {
  const _SecurityIconWidgetBuilder({
    required super.args,
  });

  @override
  SecurityIconWidget buildCustom({
    ChildWidgetBuilder? childBuilder,
    required BuildContext context,
    required JsonWidgetData data,
    Key? key,
  });
}
