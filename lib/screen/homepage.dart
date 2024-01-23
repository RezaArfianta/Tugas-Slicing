part of 'screen_import.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.format_list_bulleted,
                    size: 20,
                  ),
                  Container(
                    width: 58,
                    height: 59,
                    child: Image.asset(logo),
                  ),
                  GestureDetector(
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 25,
                      color: Color.fromARGB(255, 14, 14, 14),
                    ),
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutPage())),
                  ),
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                child: Text(
                  "Our Way of loving \nyou back",
                  style: GoogleFonts.raleway(
                      fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                decoration: BoxDecoration(
                    color: gray1, borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      size: 25,
                      color: Color(0xff868A91),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: searchController,
                        decoration: InputDecoration(
                          hintStyle: GoogleFonts.raleway(
                              fontSize: 20, fontWeight: FontWeight.w400),
                          hintText: "search",
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                // scrollDirection: Axis.vertical,
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    width: 92,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: green1, borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      textAlign: TextAlign.center,
                      "All",
                      style: GoogleFonts.raleway(
                          fontSize: 18, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 92,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: gray1, borderRadius: BorderRadius.circular(20)),
                    child: Text(
                        textAlign: TextAlign.center,
                        "Coffee",
                        style: GoogleFonts.raleway(fontSize: 18)),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 92,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: gray1, borderRadius: BorderRadius.circular(20)),
                    child: Text(
                        textAlign: TextAlign.center,
                        "Tea",
                        style: GoogleFonts.raleway(fontSize: 18)),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                  Container(
                    width: 92,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        color: gray1, borderRadius: BorderRadius.circular(20)),
                    child: Text(
                        textAlign: TextAlign.center,
                        "Drink",
                        style: GoogleFonts.raleway(fontSize: 18)),
                  ),
                  SizedBox(
                    width: 14,
                  ),
                ]),
              ),
              SizedBox(
                height: 33,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: GoogleFonts.raleway(
                        fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.raleway(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: green1),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    CardMinum(
                      image: coffee_drink,
                      text: "Chocolate Frappucino",
                      price: "20.00",
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    CardMinum(
                      image: matcha,
                      text: "Matcha Latte",
                      price: "15.00",
                    ),
                    SizedBox(
                      width: 26,
                    ),
                    CardMinum(
                      image: redice,
                      text: "Red Ice Cream",
                      price: "18.00",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      )),
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    final List<Widget> children = [
      HomePage(),
    ];
    void onTappedBar(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "", backgroundColor: green1),
            BottomNavigationBarItem(
                icon: Icon(Icons.wallet), label: "", backgroundColor: green1),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: "", backgroundColor: green1),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "",
                backgroundColor: green1)
          ]),
    );
  }
}
