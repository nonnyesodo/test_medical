 
import 'package:flutter/services.dart';
import 'package:medical_app/global_widget/export.dart';

extension StringExtension on String {
  // String formatCurrency(value) {
  //   var number =
  //       value.toString().contains('.') ? value : double.tryParse(value ?? '0');
  //   var format = NumberFormat.simpleCurrency(
  //     locale: Platform.localeName,
  //     decimalDigits: 0,
  //     name: this,
  //   );
  //   return format.format(number);
  // }

  String generateAsterisks() {
    return '*' * length;
  }

  void copyToClipboard(String successMessage) {
    Clipboard.setData(ClipboardData(
      text: this,
    )).then(
      (value) {
        ToastMessage.showSuccessToast(message: successMessage);
      },
    );
  }
}

extension SvgExtension on String {
  /// SVG with color
  SvgPicture svg({Color? color, double? height, double? width, BoxFit? fit}) =>
      SvgPicture.asset(
        this,
        fit: fit ?? BoxFit.scaleDown,
        // ignore: deprecated_member_use
        color: color,
        height: height,
        width: width,
      );
}

/// For validation
extension ValidatingExtensions on String {
  String? validateAnyField({String? field}) {
    if (toString().isEmpty) {
      return '$field required';
    } else {
      return null;
    }
  }

  String? validateName({String? field}) {
    if (toString().isEmpty) {
      return '$field required';
    } else if (toString().length < 3) {
      return 'valid $field';
    } else {
      return null;
    }
  }

  String? validatePhoneNumber() {
    if (isEmpty) {
      return 'phone required';
    }

    final pattern = RegExp(r'^\+?[0-9]{8,}$');

    if (!pattern.hasMatch(this)) {
      return 'phone invalid';
    } else if (length < 11) {
      return 'phone _invalid';
    } else {
      return null;
    }
  }

  String? validateEmail() {
    if (toString().isEmpty) {
      return 'email required';
    }

    final pattern = RegExp(
      r"^((([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+(\.([a-zA-Z]|\d|[!#\$%&'\*\+\-\/=\?\^_`{\|}~]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])+)*)|((\x22)((((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(([\x01-\x08\x0b\x0c\x0e-\x1f\x7f]|\x21|[\x23-\x5b]|[\x5d-\x7e]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(\\([\x01-\x09\x0b\x0c\x0d-\x7f]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF]))))*(((\x20|\x09)*(\x0d\x0a))?(\x20|\x09)+)?(\x22)))@((([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-zA-Z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|\d|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))\.)+(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])|(([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])([a-z]|\d|-|\.|_|~|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])*([a-zA-Z]|[\u00A0-\uD7FF\uF900-\uFDCF\uFDF0-\uFFEF])))$",
    );

    if (pattern.hasMatch(this)) {
      return null;
    } else {
      return 'email invalid';
    }
  }
}
