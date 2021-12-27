import 'package:flutter/foundation.dart';

///  A Controller for multi select. Allows to get all selected items, de select all, select all.
class MultiSelectController<T> {
  /// Default false. if true -> deselect all selected items with Perpetual selected items
  final bool deSelectPerpetualSelectedItems;

  /// Deselect all selected items
  late VoidCallback deselectAll;
  late VoidCallback refreshUI;

  // late List<T> Function() refreshUI;

  /// Select all items
  late List<T> Function() selectAll;

  late List<T> Function(String str) selectSome;

  /// get all selected items
  late List<T> Function() getSelectedItems;

  MultiSelectController({this.deSelectPerpetualSelectedItems = false});
}
