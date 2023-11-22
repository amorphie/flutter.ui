import 'package:json_dynamic_widget/json_dynamic_widget.dart';
import 'package:neo_ui/components/brg_bullet_list_view/brg_bullet_list_view.dart';

part 'brg_bullet_list_view_builder.g.dart';

@JsonWidget(type: 'brg_bullet_list_view')
abstract class _BrgBulletListViewBuilder extends JsonWidgetBuilder {
  const _BrgBulletListViewBuilder({
    required super.args,
  });

  @JsonArgDecoder('bulletList')
  List<String> _decodeBulletList({required JsonWidgetData data}) => List.castFrom(data.jsonWidgetArgs["bulletList"]);

  @override
  BrgBulletListView buildCustom({
    required BuildContext context,
    required JsonWidgetData data,
    ChildWidgetBuilder? childBuilder,
    Key? key,
  });
}
