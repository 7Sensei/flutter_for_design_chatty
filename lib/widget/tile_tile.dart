import 'package:flutter/material.dart';
import 'package:flutter_for_design_chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;
  final unRead;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unRead});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            height: 55,
            width: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
              ),
              Text(
                text,
                style: unRead
                    ? subTitleTextstyle.copyWith(
                        color: greyColor,
                      )
                    : subTitleTextstyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subTitleTextstyle,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
