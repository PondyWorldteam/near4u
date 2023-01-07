import 'package:flutter/material.dart';

import 'constants.dart';

const OutlineInputBorder outlineInputBorderBlack = OutlineInputBorder(
    borderSide: BorderSide(color: Constants.kTextGreyColor, width: 3.0));
const OutlineInputBorder outlineInputBorderWhite = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Constants.kLightGreyColor, width: 3.0));
const OutlineInputBorder outlineInputBorderGrey = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Constants.kBackgroundGreyColor, width: 3.0));
const OutlineInputBorder outlineInputBorderSecondary = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
    borderSide: BorderSide(color: Constants.kSecondaryColor, width: 1.0));
OutlineInputBorder outlineInputBorderDisable = OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(5)),
    borderSide: BorderSide(
        color: Constants.kTextGreyColor.withOpacity(0.5), width: 1.0));
