import 'package:flutter/material.dart';
 
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resume',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: Scaffold(
        // โครงสร้างหน้าจอพื้นฐาน
        appBar: AppBar(
          title: const Text('My Resume'),
 
 
 
          backgroundColor: const Color.fromARGB(255, 147, 219, 153),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // ชิดซ้ายเพื่อความเป็นระเบียบ
            children: const [
              Text(
                "ชื่อ - สกุล: นายอรรถกฤษ วงศ์เเก้วโพธิ์ทอง",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "ประวัติการศึกษา: ",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "- เรียนจบจากโรงเรียนโพฒิสารศึกษา จังหวัดนครสวรรค์ ",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "- ปัจจุบันกำลังศึกษาอยู่ที่มหาวิทยาลัยนเรศวร จังหวัดพิษณุโลก",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "ประสบการณ์งาน โครงงานที่เคยทำ:",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "- วันวิทยาศาสตร์ของทางคณะในเรื่องการจัดเเข่งขันเกมRov",
              ),
              Text(
                "- เคยทำงานในฐานะรองประธานชมรม NU E-Sports ร่วมกับทางมหาวิทยาลัย",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                "ความสามารถพิเศษ:",
                style: TextStyle(fontSize: 16),
                
              ),
              Text(
                "- การสื่อสารภาษาอังกฤษ",
                style: TextStyle(fontSize: 16),
              ),
              Text(
                "- การทำAnimation",
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
 
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("FAB Pressed.");
          },
          child: const Icon(Icons.access_alarm),
        ),
      ),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
 
  final String title;
 
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
 
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
 
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}