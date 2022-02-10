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
  final void Function(String selectedItem)? listener;

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
    return Expanded(
      child: Column(
        children: buildChipList(),
      ),
    );
  }

  @override
  List<Widget> buildChipList() {
    return widget.choices.map((String item) {
      return Flexible(
        fit: FlexFit.tight,
        flex: 1,
        child: ChoiceChip(
          label: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
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
            widget.listener?.call(item);
          },
        ),
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
  }) : super(choices: chipChoices);

  /// Triggered when a chip is selected to update the selected chips list
  final void Function(Set<String> selectedItems)? listener;

  /// List of selected chips
  final Set<String>? selectedItems;

  @override
  _MultipleChipState createState() => _MultipleChipState();
}

class _MultipleChipState extends _ChipContainerState<MultipleChoiceChipWidget> {
  late final Set<String> selectedItems =
      widget.selectedItems ?? Set<String>.identity();

  @override
  Widget build(BuildContext context) {
    final List<Widget> chipList = buildChipList();
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 15.0,
      runSpacing: 20.0,
      children: chipList,
    );
  }

  @override
  List<Widget> buildChipList() {
    return widget.choices.map((String item) {
      return FilterChip(
        label: SizedBox(
          child: Text(
            item,
            textAlign: TextAlign.center,
          ),
        ),
        shape: const StadiumBorder(side: BorderSide(width: 2)),
        labelPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        backgroundColor: AppTheme.background,
        selectedColor: AppTheme.primaryLight,
        selected: selectedItems.contains(item),
        onSelected: (bool value) {
          setState(() {
            if (value) {
              selectedItems.add(item);
            } else {
              selectedItems.remove(item);
            }
            widget.listener?.call(selectedItems);
          });
        },
      );
    }).toList();
  }
}
