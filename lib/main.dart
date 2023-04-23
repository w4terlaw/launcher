import 'package:flutter/material.dart';

import 'applications/launcher/leafy_launcher.dart';
import 'utils/app_flavour/app_flavour.dart';

void main() => mainCommon(AppFlavour.dev);

Future mainCommon(AppFlavour flavour) async {
  WidgetsFlutterBinding.ensureInitialized();
  return LeafyLauncher.run(flavour);
}
