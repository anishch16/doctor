import 'package:doctor/app/constants/styles.dart';
import 'package:flutter/material.dart';
import '../app/constants/colors.dart';

class RadioButtonColumn extends StatefulWidget {
  final List<String> titles;
  final int initialValue;
  final void Function(int)? onChanged;

  RadioButtonColumn({
    required this.titles,
    required this.initialValue,
    this.onChanged,
  });

  @override
  _RadioButtonColumnState createState() => _RadioButtonColumnState();
}

class _RadioButtonColumnState extends State<RadioButtonColumn> {
  late int _value;

  @override
  void initState() {
    super.initState();
    _value = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < widget.titles.length; i++)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0), // Add some vertical padding for spacing
            child: Row(
              children: [
                Radio<int>(
                  value: i + 1,
                  groupValue: _value,
                  activeColor: AppColors.blue,
                  onChanged: (int? value) {
                    setState(() {
                      _value = value!;
                      widget.onChanged?.call(value);
                    });
                  },
                ),
                Text(
                  widget.titles[i],
                  style: normalStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    color: i == widget.titles.length - 1
                        ? AppColors.black.withOpacity(1)
                        : AppColors.black,
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
