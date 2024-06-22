import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive ;
  final Color color ;
  @override
  Widget build(BuildContext context) {
    return isActive ? CircleAvatar(
      radius: 25,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 21,
        backgroundColor: color,
      ),
    ): CircleAvatar(
      radius: 25,
      backgroundColor: color,
    );
  }
}



class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex = 0 ;
  List<Color> colors = [
    Color(0xffe5a9a9),
    Color(0xff9df7e5),
    Color(0xff3a5743),
    Color(0xfffcec52),
    Color(0xff3b7080),
    Color(0xff554971),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25 * 2,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                  onTap: (){
                    currentIndex = index;
                    setState(() {

                    });
                  },
                  child: ColorItem(
                      isActive: currentIndex == index,
                      color: colors[index],
                      )
              ),
            );
          }
      ),
    );
  }
}