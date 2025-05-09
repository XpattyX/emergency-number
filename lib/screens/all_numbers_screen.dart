import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final List<Map<String, String>> emergencyNumbers = [
  {
    "name_th": "กองปราบปราม",
    "number": "1195",
    "name_en": "Crime Suppression Division",
    "description_th": "เบอร์โทรสำหรับติดต่อกองปราบปราม",
    "description_en": "Phone number for Crime Suppression Division",
  },
  {
    "name_th": "ตำรวจทางหลวง",
    "number": "1193",
    "name_en": "Highway Police",
    "description_th": "เบอร์โทรสำหรับตำรวจทางหลวง",
    "description_en": "Phone number for Highway Police",
  },
  {
    "name_th": "ตำรวจท่องเที่ยว",
    "number": "1155",
    "name_en": "Tourist Police",
    "description_th": "เบอร์โทรสำหรับตำรวจท่องเที่ยว",
    "description_en": "Phone number for Tourist Police",
  },
  {
    "name_th": "บริการการแพทย์ฉุกเฉิน",
    "number": "1669",
    "name_en": "Emergency Medical Service",
    "description_th": "เบอร์โทรสำหรับบริการการแพทย์ฉุกเฉิน",
    "description_en": "Phone number for Emergency Medical Service",
  },
  {
    "name_th": "ศุนย์รับแจ้งอุบัติเหตุ มูลนิธิร่วมกตัญญู",
    "number": "0-2751-0950-3",
    "name_en": "Joint Charity Accident Reporting Center",
    "description_th": "เบอร์โทรสำหรับแจ้งอุบัติเหตุ มูลนิธิร่วมกตัญญู",
    "description_en":
        "Phone number for Accident Reporting Center of Joint Charity",
  },
  {
    "name_th": "ศูนย์ควบคุมและสั่งการจราจร",
    "number": "1197",
    "name_en": "Traffic Control Center",
    "description_th": "เบอร์โทรสำหรับศูนย์ควบคุมการจราจร",
    "description_en": "Phone number for Traffic Control Center",
  },
  {
    "name_th": "ศูนย์คุ้มครองผู้โดยสารรถสาธารณะ กรมการขนส่งทางบก",
    "number": "1584",
    "name_en": "Public Transport Passenger Protection Center",
    "description_th": "เบอร์โทรสำหรับคุ้มครองผู้โดยสาร",
    "description_en":
        "Phone number for Passenger Protection in Public Transport",
  },
  {
    "name_th": "ศูนย์จราจรอุบัติเหตุ จส.100",
    "number": "1137",
    "name_en": "Traffic Accident Center JS100",
    "description_th": "เบอร์โทรสำหรับศูนย์จราจรอุบัติเหตุ",
    "description_en": "Phone number for Traffic Accident Center JS100",
  },
  {
    "name_th": "ศูนย์บริการข้อมูลผู้ใช้ทางพิเศษ",
    "number": "1543",
    "name_en": "Expressway User Information Center",
    "description_th": "เบอร์โทรสำหรับบริการข้อมูลทางพิเศษ",
    "description_en": "Phone number for Expressway User Information",
  },
  {
    "name_th": "ศูนย์วิทยุกรุงธน",
    "number": "0-2451-7228-9",
    "name_en": "Krungthep Radio Center",
    "description_th": "เบอร์โทรสำหรับศูนย์วิทยุกรุงธน",
    "description_en": "Phone number for Krungthep Radio Center",
  },
  {
    "name_th": "ศูนย์วิทยุปอเต็กตึ๊ง",
    "number": "0-2226-4444-8",
    "name_en": "Poh Tek Tung Radio Center",
    "description_th": "เบอร์โทรสำหรับศูนย์วิทยุปอเต็กตึ๊ง",
    "description_en": "Phone number for Poh Tek Tung Radio Center",
  },
  {
    "name_th": "ศูนย์วิทยุรามา",
    "number": "0-2354-6999",
    "name_en": "Rama Radio Center",
    "description_th": "เบอร์โทรสำหรับศูนย์วิทยุรามา",
    "description_en": "Phone number for Rama Radio Center",
  },
  {
    "name_th": "ศูนย์ส่งกลับและรถพยาบาลกรมตำรวจ",
    "number": "1691",
    "name_en": "Police Ambulance and Dispatch Center",
    "description_th": "เบอร์โทรสำหรับศูนย์ส่งกลับและรถพยาบาล",
    "description_en": "Phone number for Police Ambulance and Dispatch Center",
  },
  {
    "name_th": "ศูนย์เอราวัณ กทม. (ศูนย์รับแจ้งเหตุ)",
    "number": "1646",
    "name_en": "Erawan Center (BKK Incident Reporting)",
    "description_th": "เบอร์โทรสำหรับศูนย์เอราวัณ",
    "description_en": "Phone number for Erawan Center",
  },
  {
    "name_th": "สถานีวิทยุ สวพ. 91",
    "number": "1644",
    "name_en": "Suwaph Radio Station 91",
    "description_th": "เบอร์โทรสำหรับสถานีวิทยุ สวพ. 91",
    "description_en": "Phone number for Suwaph Radio Station 91",
  },
  {
    "name_th": "สถานีวิทยุจราจรเพื่อสังคม FM 99.5",
    "number": "1255",
    "name_en": "Social Traffic Radio FM 99.5",
    "description_th": "เบอร์โทรสำหรับสถานีวิทยุจราจรเพื่อสังคม",
    "description_en": "Phone number for Social Traffic Radio FM 99.5",
  },
  {
    "name_th": "สถานีวิทยุร่วมด้วยช่วยกัน FM 102.75",
    "number": "1677",
    "name_en": "Rao Duay Chuay Kan Radio FM 102.75",
    "description_th": "เบอร์โทรสำหรับสถานีวิทยุร่วมด้วยช่วยกัน",
    "description_en": "Phone number for Rao Duay Chuay Kan Radio FM 102.75",
  },
  {
    "name_th": "สำนักป้องกันและบรรเทาสาธารณภัยกรุงเทพมหานคร (สปภ. กทม.)",
    "number": "199",
    "name_en": "Bangkok Disaster Prevention and Mitigation Office",
    "description_th": "เบอร์โทรสำหรับสำนักป้องกันและบรรเทาสาธารณภัย",
    "description_en":
        "Phone number for Disaster Prevention and Mitigation Office in Bangkok",
  },
  {
    "name_th": "หน่วยแพทย์กู้ชีวิตวชิรพยาบาล",
    "number": "1554",
    "name_en": "Vajira Hospital Emergency Medical Unit",
    "description_th": "เบอร์โทรสำหรับหน่วยแพทย์กู้ชีวิตวชิรพยาบาล",
    "description_en": "Phone number for Vajira Hospital Emergency Medical Unit",
  },
  {
    "name_th": "เหตุด่วนเหตุร้าย",
    "number": "191",
    "name_en": "Emergency and Crime",
    "description_th": "เบอร์โทรสำหรับเหตุการณ์ด่วนหรือเหตุร้าย",
    "description_en": "Phone number for emergency or crime",
  },
];

class AllNumbersScreen extends StatefulWidget {
  const AllNumbersScreen({super.key});

  @override
  State<AllNumbersScreen> createState() => _AllNumbersScreenState();
}

class _AllNumbersScreenState extends State<AllNumbersScreen> {
  String search = '';

  List<Map<String, String>> get filteredData {
    return emergencyNumbers.where((item) {
      return item['name_th']!.contains(search) ||
          item['number']!.contains(search) ||
          item['name_en']!.toLowerCase().contains(search.toLowerCase());
    }).toList();
  }

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
      appBar: AppBar(title: const Text("📞 Emergency Numbers 🆘")),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'ค้นหาหรือพิมพ์เบอร์...',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
              ),
              onChanged: (value) => setState(() => search = value),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: filteredData.length,
                itemBuilder: (context, index) {
                  final item = filteredData[index];
                  return GestureDetector(
                    onTap: () => handleCall(item['number']!),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: const Color(0xFFE6F2FF),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item['name_th']!,
                              style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF003366))),
                          Text(item['name_en']!,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  color: Color(0xFF555555))),
                          const SizedBox(height: 4),
                          Text(item['description_th']!,
                              style: const TextStyle(
                                  fontSize: 14, color: Color(0xFF444444))),
                          Text(item['description_en']!,
                              style: const TextStyle(
                                  fontSize: 13, color: Color(0xFF777777))),
                          const SizedBox(height: 8),
                          Text('📞 ${item['number']!}',
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF0066CC))),
                        ],
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
}
