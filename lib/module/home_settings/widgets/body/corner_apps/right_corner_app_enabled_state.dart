import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:leafy_launcher/module/home/home_controller.dart';
import 'package:leafy_launcher/module/home_settings/widgets/home_settings_widgets_controller.dart';
import 'package:leafy_launcher/module/home_settings/widgets/widget/leafy_section_enabled_state_item.dart';
import 'package:leafy_launcher/resources/localization/l10n.dart';
import 'package:leafy_launcher/resources/localization/l10n_provider.dart';
import 'package:leafy_launcher/resources/theme/home_theme.dart';
import 'package:leafy_launcher/resources/theme/leafy_theme.dart';
import 'package:leafy_launcher/shared_widget/section/src/items/leafy_section_text_item.dart';
import 'package:leafy_launcher/shared_widget/themed_get_widget.dart';

class RightCornerAppEnabledState
    extends ThemedGetWidget<HomeSettingsWidgetsController, HomeTheme> {
  const RightCornerAppEnabledState({Key? key}) : super(key: key);

  @override
  Widget body(BuildContext context, LeafyTheme theme) {
    return LeafySectionTextItem<HomeTheme>(
      title: L10nProvider.getText(L10n.settingsSectionIsEnabled),
      onTap: controller.updateIsRightCornerAppVisible,
      value: GetBuilder<HomeController>(
        id: HomeController.rightCornerButtonBuilderKey,
        builder: (controller) {
          return LeafySectionEnabledStateItem(
            isEnabled: controller.isRightCornerButtonVisible,
          );
        },
      ),
    );
  }
}
