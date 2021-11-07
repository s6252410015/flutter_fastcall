import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListfoodDetailUI extends StatefulWidget {
  //ตัวแปรเป็บค่าที่ส่งมาจากอีกหน้าหนึ่ง
  String name = '';
  String website = '';
  String facebook = '';
  String mobile = '';
  String image = '';
  String pikad ='';

  ListfoodDetailUI({
    Key? key,
    required this.name,
    required this.website,
    required this.facebook,
    required this.mobile,
    required this.image,
    required this.pikad,
  }) : super(key: key);

  @override
  _ListfoodDetailUIState createState() => _ListfoodDetailUIState();
}

class _ListfoodDetailUIState extends State<ListfoodDetailUI> {
  // Method เปิดเว็บ
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text(
          'Food Detail',
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/' + widget.image,
                width: 170.0,
              ),
              SizedBox(
                height: 50.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width - 40.0,
                child: Card(
                  color: Colors.green[200],
                  elevation: 10.0,
                  shadowColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.person,
                            ),
                            Text(
                              '  NAME  ' + widget.name,
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.globeAsia,
                            ),
                            Text(
                              '  WEBSITE  ' + widget.website,
                              style: TextStyle(
                                color: Colors.grey[800],
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  FontAwesomeIcons.desktop,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.facebook,
                            ),
                            Text(
                              '  FACEBOOK  ' + widget.facebook,
                              style: TextStyle(
                                color: Colors.grey[800],
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  'Like',
                                  style: TextStyle(
                                    color: Colors.grey[300],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey[600],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(
                          10.0,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.mobileAlt,
                            ),
                            Text(
                              '  MOBILE  ' + widget.mobile,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // เปิดเว็บ
                      setState(() {
                        _launchInBrowser(widget.website);
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.globeAsia,
                    ),
                    label: Text(
                      'เปิดเว็บ',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(
                        130.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _makePhoneCall('tel:' + widget.mobile);
                      });
                    },
                    icon: Icon(
                      Icons.call,
                    ),
                    label: Text(
                      'โทร',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(
                        130.0,
                        50.0,
                      ),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _launchInBrowser(widget.pikad);
                      });
                    },
                    icon: Icon(
                      FontAwesomeIcons.mapMarker,
                    ),
                    label: Text(
                      'พิกัด',
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      fixedSize: Size(
                        130.0,
                        50.0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
