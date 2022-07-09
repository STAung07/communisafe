import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class InfoRow extends StatelessWidget {
  final String content;
  final IconData iconData;
  final Color rowColor;
  final Function()? execute;

  const InfoRow({
    Key? key,
    required this.content,
    required this.iconData,
    required this.rowColor,
    required this.execute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 49,
        child: TextButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                side: BorderSide(
                  color: rowColor,
                ),
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                child: Icon(
                  iconData,
                  color: rowColor,
                ),
              ),
              Text(
                content,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: rowColor,
                ),
              ),
              Spacer(),
              Icon(
                Icons.edit,
                color: rowColor,
              )
            ],
          ),
          onPressed: execute,
        ),
      ),
    );
  }
}
