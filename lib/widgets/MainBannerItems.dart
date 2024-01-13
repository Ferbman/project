import 'package:flutter/material.dart';

class MainBannerItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 2,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 1,
      shrinkWrap: true,
      children: [
        InkWell(
          onTap: () {
            //Buraya sayfa ata !!!!!!
          },
          child: Container(
            padding: EdgeInsets.only(left: 30, right: 15, top: 10),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            height: 10,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("lib/images/item.png"),
                fit: BoxFit.cover,
              ),
              color: Color.fromARGB(255, 119, 116, 116),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Ürün",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 87, 143, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Fiyat",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
