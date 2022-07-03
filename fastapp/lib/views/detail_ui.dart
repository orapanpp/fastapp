import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailUI extends StatefulWidget {
  String? name;
  String? website;
  String? facebook;
  String? mobile;
  String? image;
  String? lat;
  String? lng;

  DetailUI({
    this.name,
    this.website,
    this.facebook,
    this.mobile,
    this.image,
    this.lat,
    this.lng,
  });

  @override
  State<DetailUI> createState() => _DetailUIState();
}

class _DetailUIState extends State<DetailUI> {
  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
        title: Text(
          'โทรด่วน by อรพรรณ',
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 50.0,
              ),
            ),
            Image.asset(
              'assets/images/' + widget.image!,
              height: 200.0,
            ),
            SizedBox(
              height: 25.0,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 80.0,
              child: Card(
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(
                        FontAwesomeIcons.houseChimney,
                        color: Colors.yellow,
                      ),
                      title: Text(
                        widget.name!,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        _makePhoneCall(
                          widget.mobile!,
                        );
                      },
                      leading: Icon(
                        FontAwesomeIcons.phone,
                        color: Colors.black,
                      ),
                      title: Text(
                        widget.mobile!,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse(
                            widget.website!,
                          ),
                        );
                      },
                      leading: Icon(
                        FontAwesomeIcons.wordpressSimple,
                        color: Colors.red,
                      ),
                      title: Text(
                        widget.website!,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse(
                            'https://fb.com/' + widget.facebook!,
                          ),
                        );
                      },
                      leading: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                      ),
                      title: Text(
                        'https://fb.com/' + widget.facebook!,
                      ),
                    ),
                    ListTile(
                      onTap: () {
                        _launchInBrowser(
                          Uri.parse(
                            'https://www.google.co.th/maps/@${widget.lat},${widget.lng},15z',
                          ),
                        );
                      },
                      leading: Icon(
                        FontAwesomeIcons.mapLocation,
                        color: Colors.green,
                      ),
                      title: Text(
                        'ตำแหน่งที่ตั้ง',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
