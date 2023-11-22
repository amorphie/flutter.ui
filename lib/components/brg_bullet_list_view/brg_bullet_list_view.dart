import 'package:flutter/material.dart';
import 'package:neo_ui/util/extensions/widget_extensions.dart';

@Deprecated("Refactor as NeoBulletListView")
class BrgBulletListView extends StatelessWidget {
  final List<String> bulletList;

  @Deprecated("Refactor as NeoBulletListView")
  const BrgBulletListView({required this.bulletList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [...bulletList.map(_buildBulletItemRow)],
    );
  }

  Widget _buildBulletItemRow(String description) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Icon(Icons.circle, size: 6).padding(top: 4, right: 4),
        Flexible(child: Text(description, maxLines: 3)),
      ],
    ).paddingSymmetric(vertical: 4);
  }
}
