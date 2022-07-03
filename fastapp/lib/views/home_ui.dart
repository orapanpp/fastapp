import 'package:fastapp/models/phone_list.dart';
import 'package:fastapp/views/detail_ui.dart';
import 'package:flutter/material.dart';

class HomeUI extends StatefulWidget {
  const HomeUI({Key? key}) : super(key: key);

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {
  List<PhoneList> PhonelistInfo = [
    PhoneList(
      name: 'สายด่วนรถโรงพยาบาล',
      website: 'https://www.niems.go.th/1/News/Detail/7452?group=3',
      facebook: 'สถาบันการแพทย์ฉุกเฉินแห่งชาติ -สพฉ.1669',
      mobile: ' 1669',
      image: 'f1.jpg',
      lat: '13.7833',
      lng: '100.5167',
    ),
    PhoneList(
      name: 'สายด่วนกู้ภัย',
      website: 'https://www.damrongdhama.moi.go.th/menu7.html',
      facebook: 'สายด่วน 1300 พม.',
      mobile: '1300',
      image: 'f2.jpg',
      lat: '13.6667',
      lng: '100.5333',
    ),
    PhoneList(
      name: 'สายด่วนรถดับเพลิง',
      website: 'http://www.oic.go.th/INFOCENTER9/915/',
      facebook: 'สถานีดับเพลิงเมืองสมุทรสงคราม',
      mobile: ' 119',
      image: 'f3.jpg',
      lat: '13.7083',
      lng: '100.4562',
    ),
    PhoneList(
      name: 'เหตุด่วนเหตุร้าย',
      website: 'https://www.royalthaipolice.go.th/',
      facebook: 'สำนักงานตำรวจแห่งชาติ',
      mobile: '191',
      image: 'f4.jpg',
      lat: '13.7833',
      lng: '100.5167',
    ),
    PhoneList(
      name: 'สายด่วนกรมทางหลวง',
      website: 'http://www.doh.go.th/content/page/news/113960',
      facebook: 'กรมทางหลวง',
      mobile: ' 1586',
      image: 'f5.jpg',
      lat: '13.7083',
      lng: '100.4562',
    ),
    PhoneList(
      name: 'สายด่วนปรึกษาเอดส์และท้องไม่พร้อม ',
      website: ' https://www.rsathai.org/ ',
      facebook: '1663 สายด่วนปรึกษาเอดส์และท้องไม่พร้อม',
      mobile: ' 1663',
      image: 'f6.jpg',
      lat: '13.85581',
      lng: '100.49264',
    ),
    PhoneList(
      name: 'สายด่วนประกันสังคม',
      website: 'https://www.sso.go.th/wpr/neirc',
      facebook: 'สำนักงานประกันสังคม กระทรวงแรงงาน',
      mobile: ' 1506',
      image: 'f7.jpg',
      lat: '13.5904452',
      lng: '100.4284185',
    ),
    PhoneList(
      name: 'สายด่วนสคบ',
      website: 'https://www.ocpb.go.th/',
      facebook: 'สำนักงานคณะกรรมการคุ้มครองผู้บริโภค',
      mobile: ' 1166',
      image: 'f8.jpg',
      lat: '13.5904452',
      lng: '100.4284185',
    ),
    PhoneList(
      name: 'ศูนย์คุ้มครองผู้โดยสารและรับเรื่องร้องเรียน กรมการขนส่งทางบก',
      website: 'https://www.dlt.go.th/th/',
      facebook: '1584 ร้องเรียนรถโดยสารสาธารณะ',
      image: 'f9.jpg',
      lat: '13.5904452',
      lng: '100.4284185',
    ),
    PhoneList(
      name: 'ศูนย์รับเรื่องร้องเรียนปัญหาออนไลน์',
      website: ' https://www.1212occ.com/home',
      facebook: 'กระทรวงดิจิทัลเพื่อเศรษฐกิจและสังคม',
      mobile: ' 1212',
      image: 'f10.jpg',
      lat: '14.027868',
      lng: '100.645846',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('โทรด่วน by อรพรรณ'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.28,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                'assets/images/fastapp.png',
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) {
                  return Divider(
                    color: Colors.black,
                  );
                },
                itemCount: PhonelistInfo.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailUI(
                            name: PhonelistInfo[index].name!,
                            website: PhonelistInfo[index].website!,
                            facebook: PhonelistInfo[index].facebook!,
                            mobile: PhonelistInfo[index].mobile!,
                            image: PhonelistInfo[index].image!,
                            lat: PhonelistInfo[index].lat!,
                            lng: PhonelistInfo[index].lng!,
                          ),
                        ),
                      );
                    },
                    leading: Image.asset(
                      'assets/images/' + PhonelistInfo[index].image!,
                    ),
                    title: Text(
                      PhonelistInfo[index].name!,
                    ),
                    subtitle: Text(
                      PhonelistInfo[index].mobile!,
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.blue,
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
