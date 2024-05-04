import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:measure_size_builder/measure_size_builder.dart';
import 'package:measure_size_implementation/src/cast_model.dart';
import 'package:measure_size_implementation/src/style/app_color.dart';
import 'package:measure_size_implementation/src/style/app_text_style.dart';

class CastInfoPage extends StatelessWidget {
  const CastInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        titleSpacing: 0,
        backgroundColor: Colors.black,
        centerTitle: false,
        title: Text(
          'Dune: Part Two',
          style: AppTextStyle.headline1,
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16) +
              const EdgeInsets.only(top: 20),
          child: MeasureSizeBuilder(
            builder: (context, size) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Height : ${size.height}',
                    style: PretendardTextStyle.bold(
                      size: 24,
                      height: 37,
                      letterSpacing: -0.2,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemCount: CastModel.castList.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final item = CastModel.castList[index];
                      return ExpansionTile(
                        tilePadding: EdgeInsets.zero,
                        title: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(56 / 2),
                              child: CachedNetworkImage(
                                height: 56,
                                width: 56,
                                imageUrl: item.imgUrl,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: AppTextStyle.title1,
                                ),
                                Text(
                                  item.role,
                                  style: AppTextStyle.body3.copyWith(
                                    color: AppColor.gray02,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        children: <Widget>[
                          Text(
                            item.description,
                            style: AppTextStyle.body3,
                          ),
                        ],
                      );
                    },
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
