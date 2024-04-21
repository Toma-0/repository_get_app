import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/text_l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:repository_get_app/model/repository_detail/repository_detail_state.dart';
import 'package:repository_get_app/resource/l10n/l10n_template.dart';
import 'package:repository_get_app/view/component/card/show_widgets_card.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_context_with_image_widget.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_counts_widget.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_description_widget.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_language_widget.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_owner_info_widget.dart';
import 'package:repository_get_app/view/component/show_info_widget/show_update_at_widget.dart';
import 'package:repository_get_app/view_model/api/repository_detail/repository_detail_notifier.dart';
import 'package:repository_get_app/view_model/home/home_screen_notifier.dart';
import 'package:repository_get_app/view_model/size/size_notifier.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'repository_detail_body.dart';

class RepositoryDetailScreen extends ConsumerWidget {
  const RepositoryDetailScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(FetchRepositoryDetailProvider(id)).when(
          data: (data) => Scaffold(
            appBar: AppBar(
              title: Text(data.repositoryName),
            ),
            body: RepositoryDetailBody(data: data),
            bottomNavigationBar: BottomAppBar(
              child: ElevatedButton(
                child: Text(
                  AppLocalizations.of(context)?.labelMoreSearch ??
                      I10n().labelMoreSearch,
                ),
                onPressed: () => launchUrlString(data.repositoryUrl),
              ),
            ),
          ),
          error: (error, stackTrace) => Scaffold(
            appBar: AppBar(
              title: Text(
                AppLocalizations.of(context)?.labelCommunicationFaild ??
                    I10n().labelCommunicationFaild,
              ),
            ),
            body: ShowContextWithImage(
              imageAssetsUri: 'assets/image/error_girl.png',
              title: AppLocalizations.of(context)?.labelErrorOccurred ??
                  I10n().labelErrorOccurred,
              message: AppLocalizations.of(context)?.messageWaitMomen ??
                  I10n().messageWaitMoment,
            ),
          ),
          loading: () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        );
  }
}
