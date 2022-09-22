import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/models/building_class.dart';
import 'package:flutter_application_1/screens/details_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var buildings = [
    Building(
        name: 'أبراج الكويت',
        imgName: 'images/KuwaitTowers.JPG',
        desciption:
            "أبراج الكويت هي ثلاثة أبراج على ساحل الخليج العربي في مدينة الكويت في منطقة تسمى رأس عجوزة، تقع على شاطئ الخليج العربي مقابل قصر دسمان في منطقة شرق بمدينة الكويت."),
    Building(
        name: 'برج التحرير',
        imgName: 'images/liberation.JPG',
        desciption:
            "برج التحرير هو برج للاتصالات يقع في مدينة الكويت بارتفاع 372 متر كثاني أعلى مبنى في الكويت بعد برج الحمراء، ويحتل المركز الثالث عشر بين أطول أبراج العالم، ويشغل مساحة تبلغ 21 ألف متر مربع، ويعد أهم المعالم في دولة الكويت، ويستخدم البرج كبرج للاتصالات حيث يعتبر من أهم المرافق التابعة لوزارة المواصلات في الكويت . أنتهي من بناءه عام 1993 وافتتح في 10 مارس 1996،[2][3] حيث توقف بناؤه أثناء الاحتلال العراقي للكويت."),
    Building(
        name: 'المسجد الكبير',
        imgName: 'images/Mosuqe.JPG',
        desciption:
            "مسجد الدولة الكبير هو مسجد يقع في مدينة الكويت قرب شاطئ الخليج العربي أفتتح عام 1986م بناء على توجيهات من الشيخ جابر الأحمد الصباح. بدأ العمل في بنائه عام 1979 واكتمل عام 1986 وبلغت كلفة إنجازه 14 مليون دينار كويتي وساهم في بنائه خمسون مهندسا وأربعمائة وخمسون عاملا. صمم المسجد المهندس المعماري محمد صالح مكية واختار تصميمه على الطراز الأندلسي الفاخر وتبلغ مساحة المسجد 45 ألف مترا مربعا، منها 25 ألف مترا مربعا مبنية، و20 ألف مترا مربعا مكشوفة تشكل حدائق وممرات المسجد الخارجية"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Kuwait City Landmarks",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromRGBO(155, 194, 226, 1),
        ),
        body: ListView.builder(
          itemCount: buildings.length,
          itemBuilder: ((context, index) {
            return Card(
              elevation: 6,
              child: InkWell(
                onTap: (() {
                  print(buildings[index].name);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                                building: buildings[index],
                              )));
                }),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(buildings[index].imgName),
                      radius: 60,
                    ),
                  ),
                  Text(
                    buildings[index].name,
                    style: TextStyle(
                        color: Color.fromARGB(255, 2, 56, 99), fontSize: 20),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    child: Icon(Icons.arrow_forward_ios_rounded,
                        color: Color.fromARGB(255, 2, 56, 99)),
                  ),
                ]),
              ),
            );
          }),
        ));
  }
}
