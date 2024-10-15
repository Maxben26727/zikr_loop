import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:provider/provider.dart';
import 'package:zikr_loop/data/local/entity/zikr_count_entity.dart';
import 'package:zikr_loop/ui/routes/routes.dart';
import 'package:zikr_loop/ui/viewmodel/azkar_viewmodel.dart';
import 'package:zikr_loop/ui/zikr/zikr_listing_page.dart';

import 'data/local/entity/zikr_entity.dart';
import 'data/repository/azkar_repository.dart';
import 'ui/home/home_page.dart';
import 'ui/theme/theme.dart';
import 'ui/theme/util.dart';

void insertData(AzkarRepository repo) {
  repo.addAzkar(ZikrEntity(
      azkar: "سُبْحَانَ اللّٰهِ",
      translation: "Glory be to Allah",
      duration: 2));
  repo.addAzkar(ZikrEntity(
      azkar: "الْحَمْدُ لِلّٰهِ",
      translation: "All praise is due to Allah",
      duration: 2));
  repo.addAzkar(ZikrEntity(
      azkar: "اللّٰهُ أَكْبَرُ",
      translation: "Allah is the Greatest",
      duration: 2));
  repo.addAzkar(ZikrEntity(
      azkar: "لَا إِلَٰهَ إِلَّا اللّٰهُ",
      translation: "There is no deity but Allah",
      duration: 2));
  repo.addAzkar(ZikrEntity(
      azkar: "أَسْتَغْفِرُ اللّٰهَ",
      translation: "I seek forgiveness from Allah",
      duration: 2));
  repo.addAzkar(ZikrEntity(
      azkar: "اللّهُمَّ صَلِّ عَلَى مُحَمَّد",
      translation: "O Allah, send blessings upon Muhammad",
      duration: 2));
  repo.addAzkar(ZikrEntity(
      azkar: "حَسْبُنَا اللّٰهُ وَنِعْمَ الْوَكِيلُ",
      translation:
          "Sufficient for us is Allah, and He is the best disposer of affairs",
      duration: 2));
  repo.addAzkar(ZikrEntity(
      azkar: "اللّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ النَّارِ",
      translation: "O Allah, I seek refuge with You from the Fire",
      duration: 2));
}

void setupHive() async {
  //Init Hive
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  //Setup Adapter here
  Hive.registerAdapter(ZikrEntityAdapter());
  Hive.registerAdapter(ActiveZikrEntityAdapter());
  Hive.registerAdapter(ZikrCountEntityAdapter());
}

Future<void> main() async {
  final azkarBox = await Hive.openBox<ZikrEntity>('azkarBox');
  final activeAzkarBox = await Hive.openBox<ActiveZikrEntity>('activeAzkarBox');
  final azkarRepository = AzkarRepository(azkarBox, activeAzkarBox);
  if (azkarBox.isEmpty) insertData(azkarRepository);

  runApp(MyApp(azkarRepository: azkarRepository));
}

class MyApp extends StatefulWidget {
  final AzkarRepository azkarRepository;

  const MyApp({super.key, required this.azkarRepository});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  Brightness? brightness;

  @override
  void initState() {
    super.initState();
    // Register this class as a listener for platform events like brightness change
    WidgetsBinding.instance.addObserver(this);

    // Get the initial platform brightness
    brightness = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  }

  @override
  void didChangePlatformBrightness() {
    // Called when the platform's brightness changes
    setState(() {
      brightness =
          WidgetsBinding.instance.platformDispatcher.platformBrightness;
    });
  }

  @override
  void dispose() {
    // Remove the observer when the widget is disposed
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use with Google Fonts package to use downloadable fonts
    TextTheme textTheme = createTextTheme("Abel", "Amiri");

    MaterialTheme theme = MaterialTheme(textTheme);
    final viewModel = AzkarViewModel(widget.azkarRepository);
    return ChangeNotifierProvider<AzkarViewModel>(
      create: (_) => viewModel,
      child: MaterialApp(
        title: 'Zikr Loop',
        theme: brightness == Brightness.light ? theme.light() : theme.dark(),
        initialRoute: Routes.home.name,
        routes: {
          Routes.home.name: (context) => HomePage(title: 'Zikr Loop'),
          Routes.zikrList.name: (context) => ZikrlistingPage(title: 'Zikr'),
        },
      ),
    );
  }
}
