import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); 
}

// MyApp คือวิดเจ็ตรากฐานของแอปพลิเคชัน
class MyApp extends StatelessWidget {
  const MyApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Resume',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, 
      ),
      home: Scaffold(
        // โครงสร้างหน้าจอพื้นฐาน
        appBar: AppBar(
          title: const Text('My Resume'),
          backgroundColor: Colors.deepPurple[100],
        ),
        // ใช้ SingleChildScrollView เพื่อให้เลื่อนหน้าจอได้หากข้อมูลยาวเกินไป
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // จัดให้ข้อความชิดซ้าย
            children: [
              // ส่วนที่ 1: ชื่อ-สกุล
              const Center(
                child: Text(
                  "ชื่อ-สกุล: [ใส่ชื่อ นามสกุลของคุณ]",
                  style: TextStyle(
                    fontSize: 24, 
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 24), // เว้นระยะห่าง

              // ส่วนที่ 2: ประวัติการศึกษา
              const Text(
                "ประวัติการศึกษา",
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const Divider(), // เส้นคั่น
              const Text("• มัธยมศึกษาตอนต้น: โรงเรียน [ชื่อโรงเรียน]"),
              const Text("• มัธยมศึกษาตอนปลาย: โรงเรียน [ชื่อโรงเรียน]"),
              const Text("• มหาวิทยาลัย: [ชื่อมหาวิทยาลัย] คณะ [ชื่อคณะ] สาขา [ชื่อสาขา]"),
              const SizedBox(height: 20),

              // ส่วนที่ 3: ประสบการณ์งาน โครงงานที่เคยทำ
              const Text(
                "ประสบการณ์งาน / โครงงานที่เคยทำ",
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const Divider(),
              const Text("• โครงงานที่ 1: [ชื่อโครงงานและรายละเอียดสั้นๆ]"),
              const Text("• โครงงานที่ 2: [ชื่อโครงงานและรายละเอียดสั้นๆ]"),
              const Text("• ประสบการณ์การทำงาน/ฝึกงาน: [ระบุถ้ามี]"),
              const SizedBox(height: 20),

              // ส่วนที่ 4: ความสามารถพิเศษ
              const Text(
                "ความสามารถพิเศษ",
                style: TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const Divider(),
              const Text("• ทักษะด้านโปรแกรม: Flutter, Dart, [อื่นๆ]"),
              const Text("• ทักษะด้านภาษา: ภาษาอังกฤษ (ระดับดี)"),
              const Text("• ทักษะอื่นๆ: [เช่น การทำงานเป็นทีม, การสื่อสาร]"),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB Pressed.");
          },
          child: const Icon(Icons.edit),
        ),
      ),
    );
  }
}