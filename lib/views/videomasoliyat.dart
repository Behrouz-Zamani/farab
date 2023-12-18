  import 'package:appinio_video_player/appinio_video_player.dart';
  import 'package:farab/models/masoliyat_video.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_localizations/flutter_localizations.dart';

  class Masoliyatvideo extends StatefulWidget {
    const Masoliyatvideo({super.key});

    @override
    State<Masoliyatvideo> createState() => _Masoliyatvideo();
  }

    class _Masoliyatvideo extends State<Masoliyatvideo> {
   int selected = 0;
  bool isPlaying = true;

    late CustomVideoPlayerController _customVideoPalayerController;
  Uri uri = Uri.parse(
      'https://app.farab-co.ir/video/exipition.mp4');
  @override
  void initState() {
    super.initState();
    initializeVideoPlayer();
  }
  @override
  void dispose() {
    _customVideoPalayerController.dispose();
    super.dispose();
  } 
  
  @override
  Widget build(BuildContext context) {
    [
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ];
    [
      const Locale('fa'), // English
    ];
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('تلویزیون فراب - حوزه ریلی',style: TextStyle(fontSize: 14),),
        backgroundColor: const Color.fromARGB(255, 191, 13, 62),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 3,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("assets/images/mockup.png"),
                fit: BoxFit.cover,
              )),
              child: Container(
                margin: const EdgeInsets.only(
                    left: 16.0, top: 10.0, right: 16.0, bottom: 40.0),
                child: SizedBox(
                  width: double.infinity,
                  height: size.height / 3,
                  child: CustomVideoPlayer(
                    customVideoPlayerController: _customVideoPalayerController,
                  ),
                ),
              ),
            ),
       
            SizedBox(
             // color: const Color.fromARGB(255, 255, 255, 255),
              height: size.height / 1.8,
              child: ListView.builder(
                itemCount: masoliyatlist.length,
                itemBuilder: (context, indext) {
                  return Padding(
                    padding: const EdgeInsets.only(
                        top: 8.0, left: 16.0, bottom: 8.0, right: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: const Color.fromARGB(255, 191, 13, 62),
                      ),
                      height: 64,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                 
                                  child: Text(
                                    masoliyatlist[indext].name,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'vazir',
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
            
      ),

    );
  }

  void initializeVideoPlayer() {
    VideoPlayerController videoPlayerController;
    videoPlayerController = VideoPlayerController.networkUrl(uri)
      ..initialize().then((value) {
        setState(() {});
      });
    _customVideoPalayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
    );
  }
}
