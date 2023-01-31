import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class AddReviewWidget extends StatefulWidget {
  const AddReviewWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AddReviewWidget> createState() => _AddReviewWidgetState();
}

class _AddReviewWidgetState extends State<AddReviewWidget> {
  final GlobalKey expansionTileKey = GlobalKey();
  String dropdownValue = 'Yes';
  bool _isExpanded = false;

  void _scrollToSelectedContent({required GlobalKey expansionTileKey}) {
    final keyContext = expansionTileKey.currentContext;
    if (keyContext != null) {
      Future.delayed(const Duration(milliseconds: 200)).then((value) {
        Scrollable.ensureVisible(keyContext,
            duration: const Duration(milliseconds: 200));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: ExpansionPanelList(
        elevation: 1,
        key: expansionTileKey,
        expandedHeaderPadding: const EdgeInsets.only(
          top: 0,
        ),
        expansionCallback: (int index, bool isExpanded) {
          setState(
            () {
              _isExpanded = !_isExpanded;
              _scrollToSelectedContent(expansionTileKey: expansionTileKey);
            },
          );
        },
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return const ListTile(
                title: Text('Add Review'),
              );
            },
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: textStyle.copyWith(
                      color: textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const TextFieldCustom(
                    hintText: 'Enter Review Title',
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Commet',
                    style: textStyle.copyWith(
                      color: textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const TextFieldCustom(
                    hintText: 'Enter Review Title',
                    maxline: 4,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Rating',
                    style: textStyle.copyWith(
                      color: textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    glow: false,
                    itemSize:25,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star_rounded,
                      color: starColor,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Will you recommend this product?',
                    style: textStyle.copyWith(
                      color: textColor,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  DropdownButtonFormField(
                    value: dropdownValue,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      enabledBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(
                          color: Color(0xffe4e6eb),
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        //<-- SEE HERE
                        borderSide: BorderSide(
                          color: Color(0xffbdcbd2),
                          width: 1,
                        ),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                    items: <String>['Yes', 'No']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: textStyle.copyWith(
                            color: textColor,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(
                        135,
                        41.1,
                      ),
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 16,
                      ),
                    ),
                    child: Text(
                      'Publish Review',
                      style: textStyle.copyWith(
                        color: primaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        letterSpacing: .9,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isExpanded: _isExpanded,
          ),
        ],
      ),
    );
  }
}
