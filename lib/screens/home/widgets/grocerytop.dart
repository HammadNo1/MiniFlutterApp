import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopData extends StatefulWidget {
  const HomeTopData({super.key});

  @override
  State<HomeTopData> createState() => _HomeTopDataState();
}

class _HomeTopDataState extends State<HomeTopData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff2A4BA0),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              children: [
                const Expanded(
                  child: Text(
                    "Hey, Hammad",
                    style: TextStyle(
                        color: Color(0xffF8F9FB),
                        fontSize: 22,
                        fontFamily: "Manrope",
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SvgPicture.asset(
                  "assets/images/Cart Icon.svg",
                  height: 30,
                  fit: BoxFit.cover,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xff153075),
                  contentPadding: const EdgeInsets.all(15),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28)),
                  hintText: 'Search Product or Store',
                  hintStyle:
                      const TextStyle(color: Color(0xff8891A5), fontSize: 14),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(12),
                    child: SvgPicture.asset(
                      "assets/images/Search Icon.svg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "DELIVERY TO",
                  style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffF8F9FB).withOpacity(0.5)),
                ),
                Text(
                  "WITHIN",
                  style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xffF8F9FB).withOpacity(0.5)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Green Way 3000, Sylhet",
                  style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 14,
                      color: Color(0xffF8F9FB)),
                ),
                SvgPicture.asset(
                  "assets/images/arrow Iocn.svg",
                  fit: BoxFit.cover,
                ),
                const Text(
                  "1 hour",
                  style: TextStyle(
                      fontFamily: "Manrope",
                      fontSize: 14,
                      color: Color(0xffF8F9FB)),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: SvgPicture.asset(
                    "assets/images/arrow Iocn.svg",
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
