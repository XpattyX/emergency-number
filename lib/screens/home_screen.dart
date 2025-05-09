import 'package:emergency_call/ads/banner_ads.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> popNumbers = const [
    {
      'name_th': 'เหตุด่วนเหตุร้าย',
      'number': '191',
      'icon': '🚨',
    },
    {
      'name_th': 'บริการการแพทย์ฉุกเฉิน',
      'number': '1669',
      'icon': '🚑',
    },
    {
      'name_th': 'ศูนย์จราจรอุบัติเหตุ \nจส.100',
      'number': '1137',
      'icon': '🚗',
    },
    {
      'name_th': 'ศูนย์วิทยุปอเต็กตึ๊ง',
      'number': '0-2226-4444-8',
      'icon': '📻',
    },
    {
      'name_th': 'ศูนย์บริการข้อมูล\nผู้ใช้ทางพิเศษ',
      'number': '1543',
      'icon': '🚧',
    },
    {
      'name_th': 'ศูนย์เอราวัณ กทม. \n(ศูนย์รับแจ้งเหตุ)',
      'number': '1646',
      'icon': '🔥',
    },
  ];

  final Map<String, String> contentItem = const {
    'name_th': 'การปฐมพยาบาลเบื้องต้น',
    'number': '0-2226-4444-8',
    'icon': '🆘',
    'image':
        'https://static.hd.co.th/system/blog_articles/main_hero_images/000/005/661/original/iStock-906837822.jpg',
  };

  void handleCall(String number) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: number,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🏠 HOTLINE 🇹🇭'),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromARGB(255, 187, 220, 255),
                width: 1.0,
              ),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
          children: [
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2.8,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: popNumbers.map((item) {
                return GestureDetector(
                  onTap: () => handleCall(item['number']!),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color.fromARGB(255, 187, 220, 255),
                        width: 1.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 2),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(item['icon']!,
                            style: const TextStyle(fontSize: 32)),
                        const SizedBox(height: 8),
                        Text(
                          item['name_th']!,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item['number']!,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Color(0xFF007AFF),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            const BannerAdWidget(
              adUnitId: 'ca-app-pub-3940256099942544/6300978111',
            ),
          ],
        ),
      ),
    );
  }
}
