import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  //runApp();
}

class CustomTextFormField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final double height;
  final double? width;
  final double? fontSize;
  final double? hintFontSize;
  final EdgeInsets? margin;
  final int? maxLength;
  final bool showBorder;
  final bool obscureText;
  final bool enabled;
  final TextEditingController? controller;
  final TextInputType textinputType;
  final TextInputAction textinputAction;
  final List<TextInputFormatter>? textInputFormatter;
  final String? Function(String?)? validator;
  final double borderRadius;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? fontFamily;
  final FontWeight? fontWeight;
  final Color borderSideColor;
  final double borderSideWidth;

  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.height = 60,
    this.width,
    this.margin,
    this.fontSize = 18,
    this.hintFontSize = 14,
    this.maxLength,
    this.showBorder = false,
    this.obscureText = false,
    this.enabled = true,
    this.controller,
    this.textinputType = TextInputType.text,
    this.textinputAction = TextInputAction.next,
    this.textInputFormatter,
    this.validator,
    this.borderRadius = 10,
    this.suffixIcon,
    this.prefixIcon,
    this.fontFamily,
    this.fontWeight,
    this.borderSideColor = Colors.grey, // Default border color
    this.borderSideWidth = 0.5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width ?? MediaQuery.of(context).size.width,
      margin: margin,
      child: TextFormField(
        enabled: enabled,
        obscureText: obscureText,
        controller: controller,
        maxLength: maxLength,
        validator: validator,
        style: TextStyle(
          fontSize: fontSize,
          fontFamily: fontFamily,
          fontWeight: fontWeight,
          color: Colors.grey,
        ),
        keyboardType: textinputType,
        textInputAction: textinputAction,
        inputFormatters: textInputFormatter,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: hintFontSize,
            fontFamily: fontFamily,
            fontWeight: fontWeight,
            color: Colors.grey,
          ),
          border: showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(borderRadius),
                  ),
                  borderSide: BorderSide(
                    color: borderSideColor,
                    width: borderSideWidth,
                  ),
                )
              : InputBorder.none,
          focusedBorder: showBorder
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(borderRadius),
                  ),
                  borderSide: BorderSide(
                    color: borderSideColor,
                    width: borderSideWidth,
                  ),
                )
              : InputBorder.none,
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
        ),
      ),
    );
  }
}
