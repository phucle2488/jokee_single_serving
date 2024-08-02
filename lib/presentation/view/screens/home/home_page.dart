import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jokee_single_serving/app/config/app_colors.dart';
import 'package:jokee_single_serving/presentation/controllers/controllers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeController = Get.find<HomeController>();

  @override
  void initState() {
    _homeController.loadData();
    super.initState();
  }

  @override
  void dispose() {
    _homeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(margin: const EdgeInsets.only(left: 24), child: Image.asset('assets/images/logo.png')),
        leadingWidth: 74,
        actions: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Handicrafted by',
                style: TextStyle(color: AppColors.grayTextColor, fontSize: 11, fontWeight: FontWeight.w500, wordSpacing: -0.2, letterSpacing: -0.1),
              ),
              Text(
                'Jim HLS',
                style: TextStyle(fontSize: 11, color: AppColors.contentColor, fontWeight: FontWeight.w600, wordSpacing: -0.2, letterSpacing: -0.1),
              ),
            ],
          ),
          const SizedBox(width: 8),
          Container(
            width: 45,
            height: 45,
            decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFFEDF3FF)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: CachedNetworkImage(
                imageUrl: 'https://image.winudf.com/v2/image1/bmRhLmFuZWtkb3R5aS5jb21faWNvbl8xNTUxNjI2Mjc0XzA4Nw/icon.webp?w=140&fakeurl=1&type=.webp',
                useOldImageOnUrlChange: true,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.fill,
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
          const SizedBox(width: 24),
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 12),
            Container(
              width: double.maxFinite,
              color: AppColors.green,
              padding: const EdgeInsets.only(top: 50, bottom: 40, left: 24, right: 24),
              child: const Column(
                children: [
                  Text(
                    'A joke a day keeps the doctor away',
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400, wordSpacing: -0.5, letterSpacing: -1),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'If you joke wrong way, your teeth have to pay. (Serious)',
                    style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w500, wordSpacing: -1.5, letterSpacing: -0.1),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: SingleChildScrollView(
                child: Obx(() {
                  return Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: Text(
                        _homeController.content.value,
                        style: const TextStyle(fontSize: 15, height: 1.3, color: AppColors.contentColor, fontWeight: FontWeight.w500, wordSpacing: -1.5, letterSpacing: -0.1),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _homeController.onVote(isFun: true);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 50, right: 20),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      color: AppColors.blue,
                      child: const Text(
                        'This is Funny!',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _homeController.onVote(isFun: false);
                    },
                    child: Container(
                      margin: const EdgeInsets.only(left: 20, right: 50),
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      color: AppColors.green,
                      child: const Text(
                        'This is not funny.',
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 50),
            const Divider(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'This appis created as part of Hlsolutions program. The materials contained on this website are provided for general information only and do not constitute any form of advice. HLS assumes no responsibility for the accuracy of any particular statement and accepts no liability for any loss or damage which may arise from reliance on the information contained on this site.',
                style: TextStyle(fontSize: 12, color: AppColors.grayTextColor, height: 1.2, fontWeight: FontWeight.w600, wordSpacing: -0.2, letterSpacing: -0.1),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Copyright 2021 HLS',
              style: TextStyle(fontSize: 14, color: AppColors.contentColor, fontWeight: FontWeight.w500, wordSpacing: -0.2, letterSpacing: -0.1),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
