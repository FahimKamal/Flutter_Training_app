import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:firebase_core/firebase_core.dart' as firebase_core;
import 'package:provider/provider.dart';

import 'package:tt/Country%20Capital%20Currency/home_page.dart';
import 'package:tt/DataBase%20Basic/database_read_write.dart';
import 'package:tt/User/user_list.dart';
import 'package:tt/alertdialogclass.dart';
import 'package:tt/calculator_class.dart';
import 'package:tt/curvenavigationbarclass.dart';
import 'package:tt/dropdown_feature.dart';
import 'package:tt/google_maps.dart';
import 'package:tt/image_upload.dart';
import 'package:tt/modal_bottom_sheet_class.dart';
import 'package:tt/popupmenubar.dart';
import 'package:tt/provider/counter.dart';
import 'package:tt/provider/read_provider.dart';
import 'package:tt/searchbarclass.dart';
import 'package:tt/shared_preferences_class.dart';
import 'package:tt/silverappbar.dart';
import 'package:tt/snackbarclass.dart';
import 'package:tt/switchclass.dart';
import 'package:tt/time_and_date_picker.dart';
import 'package:tt/toastclass.dart';
import 'package:tt/bloghomepage.dart';
import 'package:tt/bottomnavigationbar.dart';
import 'package:tt/columnclasses.dart';
import 'package:tt/drawer_class.dart';
import 'package:tt/gridviewclass.dart';
import 'package:tt/listviewclass.dart';
import 'package:tt/raisedbutton.dart';
import 'package:tt/rowclasses.dart';
import 'package:tt/stackclass.dart';
import 'package:tt/stateandflags.dart';
import 'package:tt/tabbarclass.dart';
import 'package:tt/tableclass.dart';
import 'package:tt/test_design/bkash.dart';
import 'package:tt/test_design/country_details.dart';
import 'package:tt/textFieldclass.dart';
import 'package:tt/tooltipclass.dart';
import 'package:tt/travel_app/admin/add_travel_spot.dart';
import 'package:tt/travel_app/travel_pages/homepage.dart';
import 'package:tt/splesh_screenf.dart';
import 'package:tt/travel_app/travel_pages/homepage_gridview_builder.dart';
import 'package:tt/travel_app/travel_pages/travel_spot.dart';
import 'package:tt/url_launcher_class.dart';
import 'package:tt/webview_class.dart';

import 'border_color.dart';
import 'dropdownbtn.dart';
import 'gridviewbuilder.dart';
import 'imagepickerclass.dart';

void main() {
  runApp(const MyApp());
}

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await firebase_core.Firebase.initializeApp();
//   await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
//     runApp(MyApp());
//   });
// }

// Future<void> main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await firebase_core.Firebase.initializeApp();
//   runApp(MyApp());
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> CounterProvider(),
      child: MaterialApp(
        title: "Flutter Training App",
        debugShowCheckedModeBanner: false,
        // home: RowClasses(),
        // home: ColumnClasses(),
        // home: StackClass(),
        // home: RaisedButtonClass(),
        // home: TextFieldClass(),
        // home: States(),
        // home: ListViewClass(),
        // home: BlogHomePage(),
        // home: GridViewClass(),
        // home: GridViewBuilder(),
        // home: TableClass(),
        // home: CountryDetails(),
        // home: DrawerClass(),
        // home: Bkash(),
        // home: TabBarClass(),
        // home: BottomNavigationBarClass(),
        // home: AyToastKha(),
        // home: PopupMenuBarClass(),
        // home: TooltioClass(),
        // home: SwitchClass(),
        // home: SliverAppBarClass(),
        // home: ImagePickerClass(),
        // home: SnackBarClass(),
        // home: SimpleCalculator(),
        // home: CurveNavigationBarClass(),
        // home: DateAndTimePicker(),
        // home: DropDownBtn(),
        // home: SearchBarClass(),
        // home: UrlLauncherClass(),
        // home: HomePage(),
        // home: ModalBottomSheetClass(),
        // home: UserListClass(),
        // home: SharedPreferencesClass(),
        // home: WebViewClass(),
        // home: DropDown_Menu(),
        // home: SpleshScreenClass(),
        home: HomePage_Travel_app(),
        // home: GoogleMapClass(),
        // home: TravelSpot(),
        // home: DatabaseBasic(),
        // home: AlertDialogClass(),
        // home: ImageUploadClass(),
        // home: ReadProvider(),
        // home: AddTravelSpot(),
      ),
    );
  }
}
