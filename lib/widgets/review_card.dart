// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:workshop/core/extension/string_extensions.dart';

class ReviewCard extends StatelessWidget {
  final String userName;
  final int star;
  final String commentTime;
  final String? comment;
  final List<String>? images;

  const ReviewCard({
    Key? key,
    required this.userName,
    required this.star,
    required this.commentTime,
    this.comment,
    this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: CircleAvatar(
                child: Image.asset('avatar'.toPNG),
              ),
            ),
            Expanded(
              flex: 6,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(userName),
                        Text(
                          commentTime,
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(color: Color(0xff7F7F7F), fontSize: 12),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 30,
                          width: MediaQuery.of(context).size.width / 2,
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return Icon(
                                  Icons.star,
                                  color: index < star
                                      ? Colors.amber
                                      : Colors.black,
                                );
                              }),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      comment!,
                      softWrap: true,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    images == null
                        ? SizedBox(
                            height: 0,
                          )
                        : SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: 64,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemCount: images!.length,
                                itemBuilder: (context, index) {
                                  return Container(
                                    margin: EdgeInsets.only(right: 15),
                                    alignment: Alignment.center,
                                    width: 64,
                                    height: 64,
                                    child: Image.asset(images![index].toPNG),
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Color(0xffBABABA)),
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  );
                                }),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 17,
        ),
      ],
    );
  }
}
