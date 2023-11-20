/*
 * burganui
 *
 * Created on 17/11/2023.
 * Copyright (c) 2023 Commencis. All rights reserved.
 *
 * Save to the extent permitted by law, you may not use, copy, modify,
 * distribute or create derivative works of this material or any part
 * of it without the prior written consent of Commencis.
 * Any reproduction of this material must contain this notice.
 */

import 'package:neo_ui/util/extensions/nullable_extensions.dart';

extension NullableStringExtensions on String? {
  String get orEmpty => or("");
  bool get isNullOrBlank => isNull || this!.isBlank;
}

extension StringExtensions on String {
  bool get isBlank => trim().isEmpty;
}
