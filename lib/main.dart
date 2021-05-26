import 'package:flutter/material.dart';

import 'injection.dart';
import 'presentation/app_widget.dart';

void main() {
  configureDependencies();
  runApp(AppWidget());
}
