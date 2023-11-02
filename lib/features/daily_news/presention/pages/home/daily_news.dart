import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app/core/util/bottom_bar.dart';
import 'package:news_app/core/util/continer.dart';
import 'package:news_app/core/util/text_continer.dart';
import 'package:news_app/features/daily_news/data/models/artcile.dart';

import 'package:news_app/news_viewmodel.dart';

// ignore: must_be_immutable
class DailyNews extends StatelessWidget {
  DailyNews({super.key});
  NewsViewModel newsViewModel = NewsViewModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          const MyWidget(
            height: 200,
            image: 'assets/annie-spratt-hWJsOnaWTqs-unsplash.jpg',
            width: 400,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [TextContiner()]),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
            child: SizedBox(
              height: 30,
              child: Text(
                'Breaking News',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          SizedBox(
            height: 300,
            child: FutureBuilder<ArtcileModel>(
              future: newsViewModel.fetchNewsChannelApi(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                } else {
                  return ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data?.articles?.length ?? 0,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.7,
                              width: MediaQuery.of(context).size.width * .7,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Container(
                                      child: spikkit,
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(
                                            Icons.accessibility_new_sharp),
                                    imageUrl: snapshot.data?.articles?[index]
                                            .urlToImage ??
                                        '',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

const spikkit = SpinKitCircle(
  size: 10,
  color: Colors.red,
);
