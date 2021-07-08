import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class DateRangePickerWidget extends StatelessWidget {
  final DateRangePickerController _datePickerController =
      DateRangePickerController();

  @override
  Widget build(BuildContext context) {
    return SfDateRangePicker(
      view: DateRangePickerView.month,
      monthViewSettings: DateRangePickerMonthViewSettings(firstDayOfWeek: 6),
      selectionMode: DateRangePickerSelectionMode.single,
      onSelectionChanged: _onSelectionChanged,
      showActionButtons: false,
      controller: _datePickerController,
      enablePastDates: false,
      showNavigationArrow: true,
      navigationDirection: DateRangePickerNavigationDirection.horizontal,
      onSubmit: (Object val) {
        print(val);
      },
      onCancel: () {
        _datePickerController.selectedRanges = null;
      },
    );
  }

  void _onSelectionChanged(
      DateRangePickerSelectionChangedArgs dateRangePickerSelectionChangedArgs) {
    print(dateRangePickerSelectionChangedArgs.value);
  }
}
