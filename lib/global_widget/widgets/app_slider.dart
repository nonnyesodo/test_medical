import 'dart:io';

import 'package:medical_app/global_widget/export.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider(
      {super.key, this.isNetworkImage = true, this.images = const []});
  final bool isNetworkImage;
  final List<String> images;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int imageIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.25,
          child: PageView(
              onPageChanged: (value) {
                setState(() {
                  imageIndex = value;
                });
              },
              children: List.generate(
                widget.images.length,
                (index) => widget.isNetworkImage
                    ? AppNetwokImage(
                        height: size.height * 0.25,
                        width: size.width,
                        radius: size.width * 0.03,
                        fit: BoxFit.cover,
                        imageUrl: widget.images.isNotEmpty
                            ? widget.images[index]
                            : '')
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(size.width * 0.03),
                        child: Image.file(
                            height: size.height * 0.25,
                            width: size.width,
                            fit: BoxFit.cover,
                            File("")),
                      ),
              )),
        ),
        10.verticalSpace,
        Visibility(
          visible: widget.images.length > 1,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  widget.images.length,
                  (index) => AppshadowContainer(
                        margin: EdgeInsets.only(right: size.width * 0.01),
                        width: size.width * 0.025,
                        height: size.width * 0.025,
                        color: index == imageIndex
                            ? AppColors.redText
                            : AppColors.textGray0,
                      ))),
        ),
      ],
    );
  }
}
