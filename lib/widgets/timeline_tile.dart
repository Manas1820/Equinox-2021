import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import '../constants.dart';

bool isClicked = false;
DateTime now = DateTime.now();

class TimelineTileItem extends StatefulWidget {
  final title;
  final about;
  final time;
  final isFirst;
  final isLast;
  final isDarkMode;
  final indicator;
  final colorUp;
  final colorDown;

  TimelineTileItem(
      {this.title,
      this.about,
      this.time,
      this.isFirst,
      this.isLast,
      this.isDarkMode,
      this.indicator,
      this.colorUp,
      this.colorDown});

  @override
  _TimelineTileItemState createState() => _TimelineTileItemState();
}

class _TimelineTileItemState extends State<TimelineTileItem> {
  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      lineXY: 0.3,
      isFirst: widget.isFirst,
      isLast: widget.isLast,
      beforeLineStyle: LineStyle(
        color: widget.colorUp,
        thickness: 4,
      ),
      afterLineStyle: LineStyle(
        color: widget.colorDown,
        thickness: 4,
      ),
      indicatorStyle: widget.indicator,
      endChild: Padding(
        padding: tilePadding(context),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  isClicked = !isClicked;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.title,
                    style: textStyle(context, widget.isDarkMode, isClicked),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 16.0),
                    child: Icon(
                      isClicked
                          ? Icons.keyboard_arrow_up_rounded
                          : Icons.keyboard_arrow_down_rounded,
                      color: dropDownColor,
                    ),
                  ),
                ],
              ),
            ),
            isClicked == true
                ? Text(
                    '\n${widget.about}',
                    style: textStyle(context, widget.isDarkMode, false),
                  )
                : Container(),
          ],
        ),
      ),
      startChild: Container(
        child: Text(
          widget.time,
          textAlign: TextAlign.center,
          style: textStyle(context, widget.isDarkMode, false),
        ),
      ),
    );
  }
}
