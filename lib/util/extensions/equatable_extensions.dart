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

import 'package:equatable/equatable.dart';

extension EquatableExtensions<T extends Equatable> on T {
  bool isIn(List<T> list) => list.contains(this);
  bool isNotIn(List<T> list) => !isIn(list);
}
