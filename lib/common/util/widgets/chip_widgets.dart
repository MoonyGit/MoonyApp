import 'package:flutter/material.dart';
import 'package:moony_app/common/resources/themes.dart';

/// Chip container widget
abstract class ChipContainerWidget extends StatefulWidget {
  /// Chip container widget constructor
  const ChipContainerWidget({required this.choices});

  /// List of chips to create
  final Set<String> choices;
}

abstract class _ChipContainerState<W extends ChipContainerWidget>
    extends State<W> {
  List<Widget> buildChipList();
}

/// Create a bundle of Single Chip from the provided list
///
/// Usage example :
///
///  SingleChoiceChipWidget (
///     chipChoices: activityBudgetList,
///     chipSelected: selectedBudget,
///     listener: (String selectedItem) {
///         selectedBudget = selectedItem;
///         isChipSelected();
///     },
///  )
class SingleChoiceChipWidget extends ChipContainerWidget {
  /// Single choice chip Widget
  const SingleChoiceChipWidget({
    required Set<String> chipChoices,
    this.listener,
    this.chipSelected,
  }) : super(choices: chipChoices);

  /// Triggered when a chip is selected to update the selected chip
  final void Function(int index, String selectedItem)? listener;

  /// Contain the selected chip
  final String? chipSelected;

  @override
  _SingleChoiceChipState createState() {
    return _SingleChoiceChipState();
  }
}

class _SingleChoiceChipState
    extends _ChipContainerState<SingleChoiceChipWidget> {
  late String? selectedItem = widget.chipSelected;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 3000.0,
      runSpacing: 20.0,
      children: buildChipList(),
    );
  }

  @override
  List<Widget> buildChipList() {
    return widget.choices.map((String item) {
      return ChoiceChip(
        label: SizedBox(
          width: 280,
          child: Text(
            item,
            textAlign: TextAlign.center,
          ),
        ),
        shape: const StadiumBorder(side: BorderSide(width: 2)),
        labelStyle: const TextStyle(color: Colors.black),
        labelPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        backgroundColor: AppTheme.background,
        selectedColor: AppTheme.primaryLight,
        selected: selectedItem == item,
        onSelected: (bool selected) {
          setState(() {
            selectedItem = item;
          });
          widget.listener?.call(widget.choices.toList().indexOf(item), item);
        },
      );
    }).toList();
  }
}

/// Create a bundle of multiple selectable chips from the provided list
///
/// Usage example :
///
/// MultipleChoiceChipWidget (
///     chipChoices: activityParticipantTypeList,
///     selectedItems: selectedParticipantType,
///     listener: (Set<String> selectedItems) {
///         selectedParticipantType = selectedItems;
///         isChipSelected();
///     },
/// )
class MultipleChoiceChipWidget extends ChipContainerWidget {
  /// Multiple choices chip widget constructor
  const MultipleChoiceChipWidget({
    required Set<String> chipChoices,
    this.listener,
    this.selectedItems,
    this.spacing,
    this.padding,
    this.shape,
    this.textColorSelected,
    this.textColorUnSelected,
    this.backgroundColorSelected,
    this.backgroundColorUnSelected,
  }) : super(choices: chipChoices);

  /// Triggered when a chip is selected to update the selected chips list
  final void Function(Map<int, String> selectedItems)? listener;

  /// List of selected chips
  final Set<String>? selectedItems;

  /// Spacing of chips, vertical and horizontal
  final double? spacing;

  /// Space inside the chips, vertical and horizontal
  final double? padding;

  /// Shape of chips, default is null
  final OutlinedBorder? shape;

  /// Color of text selected
  final Color? textColorSelected;

  /// Color of text unselected
  final Color? textColorUnSelected;

  /// Color of background when selected
  final Color? backgroundColorSelected;

  /// color of background when unselected
  final Color? backgroundColorUnSelected;

  @override
  _MultipleChipState createState() => _MultipleChipState();
}

class _MultipleChipState extends _ChipContainerState<MultipleChoiceChipWidget> {
  late final Set<String> selectedItems =
      widget.selectedItems ?? Set<String>.identity();

  late final double spacing = widget.spacing ?? 8.0;
  late final double padding = widget.padding ?? 4.0;
  late final OutlinedBorder? shape = widget.shape;
  late final Color textColorSelected = widget.textColorSelected ?? Colors.white;
  late final Color textColorUnSelected = widget.textColorUnSelected ?? Colors.black;
  late final Color backgroundColorSelected =
      widget.backgroundColorSelected ?? AppTheme.primary;
  late final Color backgroundColorUnSelected =
      widget.backgroundColorUnSelected ?? Colors.white;

  @override
  Widget build(BuildContext context) {
    final List<Widget> chipList = buildChipList();
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: spacing,
      runSpacing: spacing,
      children: chipList,
    );
  }

  @override
  List<Widget> buildChipList() {
    return widget.choices.map((String item) {
      return FilterChip(
        label: Text(item),
        labelStyle: TextStyle(
          color: selectedItems.contains(item)
              ? textColorSelected
              : textColorUnSelected,
        ),
        checkmarkColor: selectedItems.contains(item)
            ? textColorSelected
            : textColorUnSelected,
        shape: shape,
        labelPadding:
        EdgeInsets.symmetric(vertical: padding, horizontal: padding),
        backgroundColor: backgroundColorUnSelected,
        selectedColor: backgroundColorSelected,
        selected: selectedItems.contains(item),
        onSelected: (bool value) {
          setState(() {
            if (value) {
              selectedItems.add(item);
            } else {
              selectedItems.remove(item);
            }
            widget.listener?.call({
              for (String e in selectedItems)
                widget.choices.toList().indexOf(e): e
            });
          });
        },
      );
    }).toList();
  }
}
