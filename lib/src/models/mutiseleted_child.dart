import 'package:flutter/cupertino.dart';

/**
 * @Title:
 * @Package
 * @Description: (用一句话描述该文件做什么)
 * @author zyw
 * @date
 */
/// An optional widget to place on the line before in Multi Select Item.

import 'package:flutter/material.dart';
import '../const/const_values.dart';

///unique Decoration styles for each item
class MultiSelectNormalChild {
  /// The decoration to paint child.
  final Widget? child;

  final Widget? seletedChild;

  const MultiSelectNormalChild({this.child, this.seletedChild});
}

///common Decoration styles for the multiselect container
class MultiSelectChild {
  /// The decoration to paint child.
  final Widget? child;

  final Widget? seletedChild;

  const MultiSelectChild({this.child, this.seletedChild});

  BorderRadius _getBorderRadius() {
    return BorderRadius.circular(kCardrBorderRadius);
  }

  /// Enabled card decoration
  Widget? getChild(BuildContext context) {
    return child;
  }

  /// Selected card decoration
  Widget? getSelectedChild(BuildContext context) {
    // ChipThemeData  _chipData = Theme.of(context).chipTheme;
    ColorScheme _colorScheme = Theme.of(context).colorScheme;
    return seletedChild;
  }
}

/// Default card decoration
class MultiSelectCardinitialChild extends MultiSelectChild {
  const MultiSelectCardinitialChild();

  @override
  Widget? getChild(BuildContext context) {
    ColorScheme _colorScheme = Theme.of(context).colorScheme;
    return child;
  }

  @override
  Widget? getSelectedChild(BuildContext context) {
    // ChipThemeData  _chipData = Theme.of(context).chipTheme;
    ColorScheme _colorScheme = Theme.of(context).colorScheme;
    return seletedChild;
  }
}

/// Default check list card decoration
class CheckListViewinitialChild extends MultiSelectChild {
  const CheckListViewinitialChild() : super();

  @override
  Widget? getChild(BuildContext context) {
    final ListTileTheme tileTheme = ListTileTheme.of(context);
    return child;
  }

  @override
  Widget? getSelectedChild(BuildContext context) {
    final ListTileTheme tileTheme = ListTileTheme.of(context);
    return seletedChild;
  }
}
