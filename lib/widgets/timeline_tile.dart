import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:equinox_21/constants.dart';

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
  final day;

  TimelineTileItem(
      {this.title,
      this.about,
      this.time,
      this.isFirst,
      this.isLast,
      this.isDarkMode,
      this.indicator,
      this.colorUp,
      this.colorDown,
      this.day});

  @override
  _TimelineTileItemState createState() => _TimelineTileItemState();
}

class _TimelineTileItemState extends State<TimelineTileItem> {
  bool isClicked = false;
  int oldDayNumber = 0;

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
                  print(isClicked);
                  isClicked = !isClicked;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.title,
                      style: textStyle(context, widget.isDarkMode, isClicked),
                    ),
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
      startChild: widget.day != null
          ? Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: screenHeight(context) * 0.02),
                  Text(
                    widget.day,
                    style: dayNumberTextStyle(context, widget.isDarkMode),
                  ),
                  Text(
                    widget.time,
                    textAlign: TextAlign.center,
                    style: textStyle(context, widget.isDarkMode, false),
                  ),
                ],
              ),
            )
          : Text(
              widget.time,
              textAlign: TextAlign.center,
              style: textStyle(context, widget.isDarkMode, false),
            ),
    );
  }
}
