import 'package:flutter/material.dart';
import 'package:flutter_app_fastcall/models/foodlist.dart';
import 'package:flutter_app_fastcall/views/listfood_detail_ui.dart';

class ListfoodNewUI extends StatefulWidget {
  const ListfoodNewUI({Key? key}) : super(key: key);

  @override
  _ListfoodNewUIState createState() => _ListfoodNewUIState();
}

class _ListfoodNewUIState extends State<ListfoodNewUI> {
  List<FoodList> foodList = [
    FoodList(
      name: 'Chesters Grill',
      website: 'http://www.chesters.co.th',
      facebook: 'chesterthai',
      mobile: '1145',
      image: 'f1.jpg',
      pikad: 'https://www.google.com/maps/place/Chester+Grill/@13.6637001,100.2548275,12z',
    ),
    FoodList(
      name: 'Narai Pizzeria',
      website: 'http://www.naraipizzeria.com',
      facebook: 'naraipizzeria',
      mobile: '1744',
      image: 'f2.jpg',
      pikad: 'https://www.google.com/maps/place/%E0%B8%99%E0%B8%B2%E0%B8%A3%E0%B8%B2%E0%B8%A2%E0%B8%93%E0%B9%8C%E0%B8%9E%E0%B8%B4%E0%B8%8B%E0%B8%8B%E0%B8%B2%E0%B9%80%E0%B8%A3%E0%B8%B5%E0%B8%A2/@13.6636804,100.2548273,12z',
    ),
    FoodList(
      name: 'S&P',
      website: 'http://www.snpfood.com',
      facebook: 'snpfood',
      mobile: '1344',
      image: 'f3.jpg',
      pikad: 'https://www.google.com/maps/place/S%26P+%E0%B9%82%E0%B8%A5%E0%B8%95%E0%B8%B1%E0%B8%AA+%E0%B8%81%E0%B8%A3%E0%B8%B0%E0%B8%97%E0%B8%B8%E0%B9%88%E0%B8%A1%E0%B9%81%E0%B8%9A%E0%B8%99/@13.6636608,100.2548272,12z',
    ),
    FoodList(
      name: 'Oishi',
      website: 'http://www.oishifood.com',
      facebook: 'oishifoodstation',
      mobile: '1773',
      image: 'f4.jpg',
      pikad: 'https://www.google.com/maps/place/%E0%B9%82%E0%B8%AD%E0%B8%AD%E0%B8%B4%E0%B8%8A%E0%B8%B4%E0%B8%9A%E0%B8%B8%E0%B8%9F%E0%B9%80%E0%B8%9F%E0%B8%95%E0%B9%8C/@13.6636411,100.254827,12z',
    ),
    FoodList(
      name: 'MK Restaurants',
      website: 'http://www.mkrestaurant.com',
      facebook: 'mkrestaurants',
      mobile: '02-248-5555',
      image: 'f5.jpg',
      pikad: 'https://www.google.com/maps/place/MK+Restaurant+%E0%B9%80%E0%B8%AD%E0%B9%87%E0%B8%A1%E0%B9%80%E0%B8%84%E0%B8%AA%E0%B8%B8%E0%B8%81%E0%B8%B5%E0%B9%89+%E0%B8%AA%E0%B8%B2%E0%B8%82%E0%B8%B2+%E0%B9%80%E0%B8%8B%E0%B9%87%E0%B8%99%E0%B8%97%E0%B8%A3%E0%B8%B1%E0%B8%A5+%E0%B8%9B%E0%B8%B4%E0%B9%88%E0%B8%99%E0%B9%80%E0%B8%81%E0%B8%A5%E0%B9%89%E0%B8%B2/@13.7772387,100.4059733,12z',
    ),
    FoodList(
      name: 'The Pizza',
      website: 'http://www.1112.com',
      facebook: 'thepizzacompany',
      mobile: '1112',
      image: 'f6.jpg',
      pikad: 'https://www.google.com/maps/place/%E0%B9%80%E0%B8%94%E0%B8%AD%E0%B8%B0+%E0%B8%9E%E0%B8%B4%E0%B8%8B%E0%B8%8B%E0%B9%88%E0%B8%B2+%E0%B8%84%E0%B8%AD%E0%B8%A1%E0%B8%9B%E0%B8%B2%E0%B8%99%E0%B8%B5/@13.7063274,100.3045879,12z',
    ),
    FoodList(
      name: 'Mc Donals',
      website: 'http://www.mcdonalds.co.th',
      facebook: 'McThai',
      mobile: '1711',
      image: 'f7.jpg',
      pikad: 'https://www.google.com/maps/place/%E0%B9%81%E0%B8%A1%E0%B8%84%E0%B9%82%E0%B8%94%E0%B8%99%E0%B8%B1%E0%B8%A5%E0%B8%94%E0%B9%8C+%E0%B8%AA%E0%B8%B2%E0%B8%82%E0%B8%B2%E0%B8%97%E0%B8%B4%E0%B8%A7%E0%B8%A5%E0%B8%B4%E0%B8%9B%E0%B8%AA%E0%B9%81%E0%B8%84%E0%B8%A7%E0%B8%A3%E0%B9%8C/@13.7063077,100.3045877,12z',
    ),
    FoodList(
      name: 'Pizza Hut',
      website: 'http://www.pizzahut.co.th',
      facebook: 'pizzahutthailand',
      mobile: '1150',
      image: 'f8.jpg',
      pikad: 'https://www.google.com/maps/place/Pizza+Hut+1150/@13.706288,100.3045875,12z',
    ),
    FoodList(
      name: 'KFC',
      website: 'http://www.kfc.co.th',
      facebook: 'kfcth',
      mobile: '1150',
      image: 'f9.jpg',
      pikad: 'https://www.google.com/maps/place/Kentucky+Fried+Chicken+(KFC)/@13.7062683,100.3045874,12z',
    ),
    FoodList(
      name: 'JJ Delivery',
      website: 'http://www.jjdelivery.com',
      facebook: 'jjdelivery',
      mobile: '02-712-3000',
      image: 'f10.jpg',
      pikad: 'https://www.google.com/maps/place/%E0%B9%80%E0%B8%88%E0%B9%80%E0%B8%88+%E0%B8%94%E0%B8%B4%E0%B8%A5%E0%B8%B4%E0%B9%80%E0%B8%A7%E0%B8%AD%E0%B8%A3%E0%B8%B5%E0%B9%88%E0%B9%80%E0%B8%8B%E0%B8%AD%E0%B8%A3%E0%B9%8C%E0%B8%A7%E0%B8%B4%E0%B8%AA/@13.7239672,100.5763232,17z',
    ),
    FoodList(
      name: 'Burger King',
      website: 'http://www.burgerking.co.th',
      facebook: 'burgerkingthailand',
      mobile: '1112',
      image: 'f11.jpg',
      pikad: 'https://www.google.com/maps/place/Burger+King+Thonglor/@13.723967,100.5697571,15z',
    ),
    FoodList(
      name: 'See Fah',
      website: 'http://www.seefah.com',
      facebook: 'seefahfanpage',
      mobile: '02-800-8080',
      image: 'f12.jpg',
      pikad: 'https://www.google.com/maps/place/%E0%B8%AA%E0%B8%B5%E0%B8%9F%E0%B9%89%E0%B8%B2+SEE+FAH+Restaurant+Thonglor/@13.7239667,100.5697571,15z',
    ),
    FoodList(
      name: 'ฮองมิน',
      website: 'http://www.hongminrestaurant.net',
      facebook: 'hongminfanpage',
      mobile: '02-248-0123',
      image: 'f13.jpg',
      pikad: 'https://www.google.com/maps/place/HONGMIN+MBK+%E9%A6%99%E5%91%B3/@13.7239641,100.5434923,13z',
    ),
    FoodList(
      name: 'Yoshinoya',
      website: 'http://www.yoshinoya.co.th',
      facebook: 'YoshinoyaThailand',
      mobile: '02-663-3888',
      image: 'f14.jpg',
      pikad: 'https://www.google.com/maps/place/Yoshinoya/@13.7239592,100.5434922,13z',
    ),
    FoodList(
      name: 'ฮั่วเซ่งฮง',
      website: 'http://www.huasenghong.co.th',
      facebook: 'huasenghong',
      mobile: '02-2480123',
      image: 'f15.jpg',
      pikad: 'https://www.google.com/maps/place/%E0%B8%AE%E0%B8%B1%E0%B9%88%E0%B8%A7%E0%B9%80%E0%B8%8B%E0%B9%88%E0%B8%87%E0%B8%AE%E0%B8%87/@13.7239542,100.5434922,13z',
    ),
    FoodList(
      name: 'Scoozi Pizza',
      website: 'http://www.scoozipizza.com',
      facebook: 'scoozipizzaclub',
      mobile: '02-715-8555',
      image: 'f16.jpg',
      pikad: 'https://www.google.com/maps/place/Scoozi+-+Sathorn+Soi+10/@13.7223148,100.5254731,17z',
    ),
    FoodList(
      name: 'โดมิโน่ พิซซ่า',
      website: 'http://www.dominospizza.co.th',
      facebook: 'DominosPizzaThailand',
      mobile: '1612',
      image: 'f17.jpg',
      pikad: 'https://www.google.com/maps/place/Domino\'s+Pizza+-+Sena+Fest/@13.7223146,100.518907,15z',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[50],
      appBar: AppBar(
        title: Text('Food List New'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Image.asset(
              'assets/images/fastfood.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider(
                  height: 10.0,
                  color: Colors.green[900],
                );
              },
              itemCount: foodList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context){
                          return ListfoodDetailUI(
                            name: foodList[index].name,
                            website: foodList[index].website,
                            facebook: foodList[index].facebook,
                            mobile: foodList[index].mobile,
                            image: foodList[index].image,
                            pikad: foodList[index].pikad,
                          );
                        }
                      ),
                    );
                  },
                  title: Text(
                    foodList[index].name,
                  ),
                  subtitle: Text(
                    foodList[index].mobile,
                  ),
                  leading: ClipOval(
                    child: Image.asset(
                      'assets/images/' + foodList[index].image,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
