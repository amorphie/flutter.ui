/*
 * neo_ui
 *
 * Created on 17/11/2023.
 * Copyright (c) 2023 Commencis. All rights reserved.
 *
 * Save to the extent permitted by law, you may not use, copy, modify,
 * distribute or create derivative works of this material or any part
 * of it without the prior written consent of Commencis.
 * Any reproduction of this material must contain this notice.
 */

import 'package:flutter/widgets.dart';

extension WidgetExtensions on Widget {
  Padding paddingAll(double value) => _withPadding(EdgeInsets.all(value));

  Padding paddingSymmetric({double vertical = 0.0, double horizontal = 0.0}) =>
      _withPadding(EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal));

  Padding padding({double left = 0.0, double top = 0.0, double right = 0.0, double bottom = 0.0}) =>
      _withPadding(EdgeInsets.only(left: left, top: top, right: right, bottom: bottom));

  Padding paddingLTRB(double left, double top, double right, double bottom) =>
      _withPadding(EdgeInsets.fromLTRB(left, top, right, bottom));

  Padding _withPadding(EdgeInsets padding) => Padding(padding: padding, child: this);
}
