import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 114, 113, 113),
      body: Stack(
        alignment: Alignment.topLeft,
        children: [
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 16),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 139, 182, 99),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.zero,
              border: Border.all(color: Color(0x4d9e9e9e), width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xffffffff),
                  size: 24,
                ),
                Container(
                  height: 40,
                  width: 40,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("images/victor-munoz-peque.jpg",
                      fit: BoxFit.cover),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Text(
                      "Miguel A",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                        fontSize: 16,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.video_call,
                  color: Color(0xffffffff),
                  size: 24,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                  child: Icon(
                    Icons.call,
                    color: Color(0xffffffff),
                    size: 24,
                  ),
                ),
                Icon(
                  Icons.more_vert,
                  color: Color(0xffffffff),
                  size: 24,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 85, 0, 0),
            padding: EdgeInsets.all(0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xfff2f2f2),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  flex: 1,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.all(16),
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Today",
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.clip,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 12,
                            color: Color(0xff646464),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 16, 50, 0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Color(0x00ffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0)),
                              ),
                              child: Text(
                                "Hola,tienen fecha disponible de juego ?",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                "11:30am",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.fromLTRB(50, 16, 0, 0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Color(0x00ffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0)),
                              ),
                              child: Text(
                                "Hola,por el momento no tengo",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                "06:34 am",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 16, 50, 0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Color(0x00ffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0)),
                              ),
                              child: Text(
                                "agendemos un partido hoy, puedes ??",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                "06:34 am",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.fromLTRB(50, 16, 0, 0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Color(0x00ffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0)),
                              ),
                              child: Text(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1930885279.
                                "si,claro a las 6:00pm esta bien ??",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                "06:34 am",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.fromLTRB(0, 16, 50, 0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Color(0x00ffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0)),
                              ),
                              child: Text(
                                "Si,quedaria perfecto",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                "06:34 am",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.fromLTRB(50, 16, 0, 0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Color(0x00ffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0)),
                              ),
                              child: Text(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1378740613.
                                "listo, la direccion seria en laures cerca de la universidad   ",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                "06:34 am",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.fromLTRB(0, 16, 50, 0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Color(0x00ffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0)),
                              ),
                              child: Text(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2005628589.
                                "Si,listo ",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                "06:34 am",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        margin: EdgeInsets.fromLTRB(50, 16, 0, 0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                          color: Color(0x00ffffff),
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.zero,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                color: Color(0xffffffff),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(6.0),
                                    bottomLeft: Radius.circular(6.0),
                                    bottomRight: Radius.circular(6.0)),
                              ),
                              child: Text(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:4226857404.
                                "Ok,listo ",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                "06:34 am",
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.clip,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  fontSize: 12,
                                  color: Color(0xff646464),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ImageIcon(
                        NetworkImage(
                            "https://cdn3.iconfinder.com/data/icons/lightly-icons/24/happy-96.png"),
                        size: 24,
                        color: Color(0xff989898),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
                        child: ImageIcon(
                          NetworkImage(
                              "https://cdn2.iconfinder.com/data/icons/pictograms-3/512/27-128.png"),
                          size: 24,
                          color: Color(0xff989898),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                          child: TextField(
                            controller: TextEditingController(),
                            obscureText: false,
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xff000000),
                            ),
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                    color: Color(0x00ffffff), width: 1),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                    color: Color(0x00ffffff), width: 1),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                                borderSide: BorderSide(
                                    color: Color(0x00ffffff), width: 1),
                              ),
                              filled: true,
                              fillColor: Color(0xffffffff),
                              isDense: true,
                              contentPadding: EdgeInsets.all(16),
                              suffixIcon: Icon(Icons.photo_camera,
                                  color: Color(0xff989898), size: 24),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 139, 182, 99),
                          shape: BoxShape.circle,
                          border:
                              Border.all(color: Color(0x4dffffff), width: 1),
                        ),
                        child: ImageIcon(
                          NetworkImage(
                              "https://cdn4.iconfinder.com/data/icons/symbol-blue-set-1/100/Untitled-2-80-128.png"),
                          size: 24,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
