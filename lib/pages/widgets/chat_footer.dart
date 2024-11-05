// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatFooter extends StatelessWidget {
  const ChatFooter({
    super.key,
    required this.textController,
    required this.onSendMessage,
    this.padding,
  });

  final TextEditingController textController;
  final Function() onSendMessage;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
            bottom: 4.0,
            top: 4.0,
          ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: TextField(
                minLines: 1,
                maxLength: 3,
                controller: textController,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  isDense: true,
                  fillColor: Colors.black12,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    borderSide: const BorderSide(
                      width: 0.0,
                      style: BorderStyle.none,
                    ),
                  ),
                ),
              ),
            ),
          ),
          CupertinoButton(
            child: const Icon(
              Icons.send_rounded,
              size: 32,
            ),
            padding: EdgeInsets.zero,
            onPressed: onSendMessage,
          )
        ],
      ),
    );
  }
}
