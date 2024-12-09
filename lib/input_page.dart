import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reuse_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColor_ = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseCard(
                  color_: activeCardColor_,
                  cardChild: IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE'
                  ),
                )),
                Expanded(child: ReuseCard(
                  color_: activeCardColor_,
                  cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      label: 'FEMALE'
                  ),
                )),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseCard(color_: activeCardColor_,)),
              ],
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(child: ReuseCard(color_: activeCardColor_,)),
                Expanded(child: ReuseCard(color_: activeCardColor_,)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      )
    );
  }
}



