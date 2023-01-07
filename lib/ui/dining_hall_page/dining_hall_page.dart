import 'package:flutter/material.dart';
import 'package:hachat/ui/const.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class DiningHallPage extends StatefulWidget {
  const DiningHallPage({Key? key}) : super(key: key);

  @override
  State<DiningHallPage> createState() => _DiningHallPageState();
}

class _DiningHallPageState extends State<DiningHallPage> {
  SwipeableCardSectionController cardController =
      SwipeableCardSectionController();

  int caloriesIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          appBar: buildAppBar("Yemek Listesi", Colors.yellow.shade900),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SwipeableCardsSection(
                cardController: cardController,
                context: context,
                items: buildItems(),
                enableSwipeUp: true,
                enableSwipeDown: true,
                onCardSwiped: (Direction dir, int index, Widget widget) {
                  setState(() {
                    caloriesIndex = index + 1;
                  });
                },
              ),
              const SizedBox(height: 10),
              Text(
                "Toplam Kalori Miktarı: ${calories[caloriesIndex % 3]}",
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ));
  }

  List<Widget> buildItems() {
    List<Widget> items = [];
    for (int i = 0; i < foods.length; i++) {
      List<Widget> children = [];
      Container container = Container(
        color: getColorOfDay(int.parse(calories[i])),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      );
      List<Map<String, dynamic>> foodsOfDay = foods[i];
      for (Map<String, dynamic> food in foodsOfDay) {
        children.add(Text(
          food["name"],
          style: const TextStyle(fontSize: 20),
        ));
        children.add(const SizedBox(height: 5));
        String alerjens = "";
        for (String alerjen in food["alerjen"]) {
          alerjens += "${getAlerjenEmoji(alerjen)} ";
        }
        children.add(Text(alerjens));
        children.add(const SizedBox(height: 5));
      }
      items.add(container);
    }
    return items;
  }

  double calMeanOfCalories() {
    int totalCalories = 0;
    for (String calStr in calories) {
      totalCalories += int.parse(calStr);
    }
    return totalCalories / calories.length;
  }

  Color getColorOfDay(int calorie) {
    double meanCalories = calMeanOfCalories();
    if (calorie < meanCalories) {
      return Colors.blue;
    } else if (calorie > meanCalories) {
      return Colors.red;
    } else {
      return Colors.orange;
    }
  }

  String getAlerjenEmoji(String alerjen) {
    String emoji = "";
    switch (alerjen) {
      case "A":
        emoji = "🌾";
        break;
      case "C":
        emoji = "🥚";
        break;
      case "D":
        emoji = "Süt ve ürünleri";
        break;
      case "E":
        emoji = "🐟";
        break;
      case "F":
        emoji = "Hardal ve ürünleri";
        break;
      case "G":
        emoji = "🥜";
        break;
      case "H":
        emoji = "Soya fasulyesi ve ürünleri";
        break;
      case "K":
        emoji = "🌰";
        break;
      case "L":
        emoji = "SO2";
        break;
    }
    return emoji;
  }
}
