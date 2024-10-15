import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:zikr_loop/data/local/entity/zikr_entity.dart';
import 'package:zikr_loop/ui/viewmodel/azkar_viewmodel.dart';

class ZikrlistingPage extends StatefulWidget {
  const ZikrlistingPage({super.key, required this.title});

  final String title;

  @override
  State<ZikrlistingPage> createState() => _ZikrlistingPage();
}

class _ZikrlistingPage extends State<ZikrlistingPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final viewModel = Provider.of<AzkarViewModel>(context, listen: false);
      viewModel.loadMoreAzkar(); // Fetch initial data
    });
  }

  @override
  Widget build(BuildContext context) {
    final zikrViewModel = Provider.of<AzkarViewModel>(context);

    final activeAzkar = zikrViewModel.activeZikr;
    // Common widget for displaying azkar details
    Widget buildAzkarDetails(ZikrEntity azkar) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              azkar.azkar,
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.end,
            ),
            SizedBox(height: 16),
            Text(
              azkar.translation,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 8),
            Text(
              '${azkar.duration} sec',
              style: Theme.of(context).textTheme.labelSmall,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          widget.title,
          style: GoogleFonts.fasterOne(),
        ),
      ),
      body: ListView.builder(
        itemCount: zikrViewModel.azkarList.length,
        itemBuilder: (context, index) {
          final azkar = zikrViewModel.azkarList[index];
          return GestureDetector(
            onTap: () {
              zikrViewModel.updateActiveZikr(azkar.id);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                side: zikrViewModel.activeZikr?.id == azkar.id
                    ? BorderSide(
                        color: Theme.of(context).colorScheme.secondaryContainer,
                        width: 2) // Border conditionally added
                    : BorderSide.none, // No border if condition is false
                borderRadius: BorderRadius.circular(
                    10), // Border radius for rounded corners
              ),
              margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: activeAzkar?.id == azkar.id
                  ? Stack(
                      children: [
                        buildAzkarDetails(azkar),
                        Positioned(
                          bottom: 16,
                          right: 16,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .secondaryContainer, // Background color
                                borderRadius: BorderRadius.circular(
                                    4), // Set border radius for curved corners
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text("Active",
                                    style:
                                        Theme.of(context).textTheme.labelSmall),
                              )),
                        )
                      ],
                    )
                  : buildAzkarDetails(azkar),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //zikrViewModel.addAzkar(AzkarEntity(azkar: 'sdfdsf',translation: 'sdfdsfsds', id: 'fdgfd'));
        },
      ),
    );
  }
}
