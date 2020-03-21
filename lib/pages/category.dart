import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';

const String testDevice = 'Mobile_id';


class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  static const MobileAdTargetingInfo targetingInfo = MobileAdTargetingInfo(
    testDevices: testDevice != null ? <String>[testDevice] : null,
    nonPersonalizedAds: true,
    keywords: <String>['Game', 'Mario', 'Animals', 'Music'],
  );

  BannerAd _bannerAd;
  InterstitialAd _interstitialAd;

  BannerAd createBannerAd() {
    return BannerAd(
        adUnitId: BannerAd.testAdUnitId,
        //Change BannerAd adUnitId with Admob ID
        size: AdSize.banner,
        targetingInfo: targetingInfo,
        listener: (MobileAdEvent event) {
          print("BannerAd $event");
        });
  }

  @override
  void initState() {
    FirebaseAdMob.instance.initialize(appId: BannerAd.testAdUnitId);
    //Change appId With Admob Id
    _bannerAd = createBannerAd()
      ..load()
      ..show();
    super.initState();
  }

  @override
  void dispose() {
    _bannerAd.dispose();
    _interstitialAd.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category of Animals"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.all(
                      Radius.circular(10) //         <--- border radius here
                      ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/category/Mammals.jpg'),
                  ),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/mammals');
                  },
                  child: null,
                ),
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.all(
                      Radius.circular(10) //         <--- border radius here
                      ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/category/Birds.jpg'),
                  ),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/birds');
                  },
                  child: null,
                ),
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.all(
                      Radius.circular(10) //         <--- border radius here
                      ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/category/Reptiles.jpg'),
                  ),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/reptiles');
                  },
                  child: null,
                ),
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.fromLTRB(1, 1, 1, 1),
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  border: Border.all(width: 3),
                  borderRadius: BorderRadius.all(
                      Radius.circular(10) //         <--- border radius here
                      ),
                  image: DecorationImage(
                    image: AssetImage('assets/images/category/Arthropods.jpg'),
                  ),
                ),
                child: FlatButton(
                  padding: EdgeInsets.all(0.0),
                  onPressed: () {
                    Navigator.pushNamed(context, '/arthropods');
                  },
                  child: null,
                ),
              ),
            ),
            SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
  
}
