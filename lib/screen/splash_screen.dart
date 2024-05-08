part of 'screen_import.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SharedPreferences prefs;
  late String finalToken;
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 2)).whenComplete(() => KatingTest());

    cekToken().whenComplete(() => Timer(Duration(seconds: 2), () {
          if (finalToken != "null") {
            Get.toNamed(HomePage.routeName);
          } else {
            Get.toNamed(LoginPage.routeName);
          }
        }));
  }

  Future cekToken() async {
    var getToken = await SharedPreferences.getInstance();
    var token = getToken.getString('accessToken');
    print(token);
    setState(() {
      finalToken = token.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Image.asset(logo),
      ),
    );
  }
}
