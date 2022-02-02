import 'package:flutter/material.dart';

import '../../../constants.dart';

class DropDownMenu extends StatelessWidget {
  const DropDownMenu({
    Key? key,
    required this.label,
    required this.onChanged,
    required this.items,
    required this.value,
  }) : super(key: key);

  final String label;
  final String? value;
  final onChanged;
  final List<DropdownMenuItem<String>> items;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding / 3),
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        decoration: BoxDecoration(
          border: Border.all(color: mainColor, width: 2),
          borderRadius: BorderRadius.circular(defaultPadding),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            value: value,
            hint: Text(
              label,
            ),
            items: items,
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}

List<DropdownMenuItem<String>> dropDownMenuItemGenerator(List<String> list) {
  return list
      .map((element) => DropdownMenuItem(
            value: element,
            child: Container(
              child: Text(element),
            ),
          ))
      .toList();
}

List<DropdownMenuItem<String>> travelSpotSelector({required String? region}) {
  if (region == 'Travel Bangladesh') {
    return dropDownMenuItemGenerator(StaticData.bdDistrict);
  } else if (region == 'Travel World') {
    return dropDownMenuItemGenerator(StaticData.allCountries);
  }
  return [];
}
