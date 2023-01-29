import 'package:flutter/material.dart';
import 'items.dart';

// ignore: camel_case_types
class items extends StatefulWidget {
  const items({Key? key}) : super(key: key);

  @override
  State<items> createState() => _itemsState();
}

// ignore: camel_case_types
class _itemsState extends State<items> {

  List<Map> data = [

    {
      "name":"Masala-Oats",
      "image":"https://c.ndtvimg.com/2022-07/82lbs7vo_masala-oats_120x90_21_July_22.jpg",
      "des":"Oats, formally named Avena sativa, is a type of cereal grain from the Poaceae grass family of plants. The grain refers specifically to the edible seeds of oat grass, which is what ends up in our breakfast bowls."
    },
    {
      "name":"Beet-Juice",
      "image":"https://c.ndtvimg.com/2018-10/3r6194k_beetroot-juice_120x90_03_October_18.jpg",
      "des":"The juice of the beetroot, with potential antioxidant and protective activities. Beetroot juice contains antioxidants, including betacyanin, which scavenge free radicals. In addition, beetroot contains high levels of nitrates and folic acid."
    },

    {
      "name":"Soya-Idli",
      "image":"https://c.ndtvimg.com/2021-10/hp0748rg_idli_240x180_13_October_21.jpg",
      "des":"Idli is a type of savoury rice cake, originating from the South India, popular as a breakfast food in Southern India and in Sri Lanka. The cakes are made by steaming a batter consisting of fermented black lentils (de-husked) and rice."
    },
    {
      "name":"Yogurt",
      "image":"https://c.ndtvimg.com/2021-05/v07nol28_yogurt_625x300_03_May_21.jpg",
      "des":"Baked yogurt is an easy and delicious pudding-like dessert made with just 4 ingredients- hung curd, condensed milk, cream and any fruit and baked to perfection."
    },
    {
      "name":"Apple-Fruit",
      "image":"https://images-prod.healthline.com/hlcmsresource/images/AN_images/health-benefits-of-apples-1296x728-feature.jpg",
      "des":"fruitiness, acidity, sweetness, juiciness, crispness, hardness, toughness, mealiness, vegetativeness, and astringency."
    },
    {
      "name":"Salad",
      "image":"https://c.ndtvimg.com/2022-09/m3mgd95_beetroot-idli_120x90_14_September_22.jpg",
      "des":"any of various usually cold dishes: such as. : raw greens (such as lettuce) often combined with other vegetables and toppings and served especially with dressing. : small pieces of food (such as pasta, meat, fruit, or vegetables) usually mixed with a dressing (such as mayonnaise) or set in gelatin."
    },
    {
      "name":"Cucumber-Smoothie",
      "image":"https://c.ndtvimg.com/2022-04/9v9kmal_cucumber-coriander-smoothie_120x90_08_April_22.jpg",
      "des":"It's loaded with fiber, vitamins, and minerals and can be very hydrating, thanks to the high water content of cucumbers. The ingredients in this beverage also provide antioxidants, which can help fight cell damage that leads to aging and disease"
    },
    {
      "name":"Mango-Fruit",
      "image":"https://www.healthkart.com/connect/wp-content/uploads/2022/05/900x500_thumbnail_HK-African-mango-for-weight-loss.png",
      "des":"A mango is a sweet tropical fruit, and it's also the name of the trees on which the fruit grows. Ripe mangoes are juicy, fleshy, and delicious. Like peaches and plums, mangoes have an inedible pit at the center. Unlike these other fruits, the skin of a mango is very tough and also inedible."
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Only Fitness Items !"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: data.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) =>
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => datas(data[index]),),);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              data[index]["image"]
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(data[index]["name"],style: const TextStyle(fontSize: 16,color: Colors.white,)),
                    )
                  ],
                ),
              ),
            ),
      ),
    );
  }
}