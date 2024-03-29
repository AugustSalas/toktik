import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/widgets/shared/video_scrolleable_view.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoverProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body: discoverProvider.initialLoading == true
          ? const Center(
              child: CircularProgressIndicator(
                strokeWidth: 4,
              ),
            )
          : VideoScrolleableView(
              videos: discoverProvider.videos,
            ),
    );
  }
}
