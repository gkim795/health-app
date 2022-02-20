import 'package:flutter/material.dart';

import './models/health_category.dart';

var CYCLE_DATA = [
  {"start": DateTime.utc(2021, 1, 20), "end": DateTime.utc(2021, 1, 28)},
  {"start": DateTime.utc(2021, 2, 20), "end": DateTime.utc(2021, 2, 28)},
  {"start": DateTime.utc(2021, 3, 20), "end": DateTime.utc(2021, 3, 28)},
  {"start": DateTime.utc(2021, 4, 20), "end": DateTime.utc(2021, 4, 28)},
  {"start": DateTime.utc(2021, 5, 20), "end": DateTime.utc(2021, 5, 28)},
  {"start": DateTime.utc(2021, 6, 20), "end": DateTime.utc(2021, 6, 28)},
  {"start": DateTime.utc(2021, 7, 20), "end": DateTime.utc(2021, 7, 28)},
  {"start": DateTime.utc(2021, 8, 20), "end": DateTime.utc(2021, 8, 28)},
  {"start": DateTime.utc(2021, 9, 20), "end": DateTime.utc(2021, 9, 28)},
  {"start": DateTime.utc(2021, 10, 20), "end": DateTime.utc(2021, 10, 28)},
  {"start": DateTime.utc(2021, 11, 20), "end": DateTime.utc(2021, 11, 28)},
  {"start": DateTime.utc(2021, 12, 20), "end": DateTime.utc(2021, 12, 28)},
  {"start": DateTime.utc(2022, 1, 20), "end": DateTime.utc(2022, 1, 28)},
  {"start": DateTime.utc(2022, 2, 20), "end": DateTime.utc(2022, 2, 28)},
];

var SLEEP_DATA = [
  6,
  8,
  3,
  7,
  9,
  9,
  5,
];

var HEART_BEAT_DATA = [
  98,
  66,
  77,
  98,
  33,
  77,
  13,
  66,
  99,
  55,
  33,
  66,
  88,
  33,
  22,
  98,
  113,
  110,
  66,
  66,
  78,
  78,
  55,
  95
];

var STEPS_DATA = [4000, 1200, 442, 0, 0, 122, 33];

var ACTIVITY_DATA = [
  HealthCategoryData(
    icon: Icons.fireplace,
    color: Colors.red.shade300,
    title: "Steps",
    value: 31,
    unit: "steps",
  ),
  HealthCategoryData(
    icon: Icons.fireplace,
    color: Colors.red.shade300,
    title: "Running and walking distance",
    value: 1.4,
    unit: "mi",
  ),
  HealthCategoryData(
    icon: Icons.fireplace,
    color: Colors.red.shade300,
    title: "Resting Energy",
    value: 665,
    unit: "cal",
  ),
  HealthCategoryData(
    icon: Icons.fireplace,
    color: Colors.red.shade300,
    title: "Active Energy",
    value: 6.1,
    unit: "cal",
  ),
  HealthCategoryData(
    icon: Icons.fireplace,
    color: Colors.red.shade300,
    title: "Stand Minutes",
    value: 52,
    unit: "min",
  ),
  HealthCategoryData(
    icon: Icons.fireplace,
    color: Colors.red.shade300,
    title: "Workouts",
    value: 31,
    unit: "min",
  ),
  HealthCategoryData(
    icon: Icons.fireplace,
    color: Colors.red.shade300,
    title: "Flights Climbed",
    value: 53,
    unit: "flights",
  ),
];

const BODY_MEASUREMENTS_FIELDS = [
  "Basal Body Temperature",
  "Body Fat Percentage",
  "Body Mass Index",
  "Electrodermal Activity",
  "Height",
  "Leand Body Mass",
  "Waist Circumference",
  "Weight"
];
