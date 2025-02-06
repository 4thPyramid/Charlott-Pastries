import 'package:flutter/material.dart';

class ProblemOptions extends StatelessWidget {
  final String? selectedProblem;
  final Function(String?) onSelected;

  const ProblemOptions({
    super.key,
    required this.selectedProblem,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildRadioTile('عنصر خطأ'),
        _buildRadioTile('عنصر غير متاح'),
        _buildRadioTile('جودة الطعام'),
      ],
    );
  }

  Widget _buildRadioTile(String title) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300
        , width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: RadioListTile<String>(
        value: title,
        title: Text(title),
        groupValue: selectedProblem,
        onChanged: onSelected,
        controlAffinity: ListTileControlAffinity.trailing,
      ),
    );
  }
}
