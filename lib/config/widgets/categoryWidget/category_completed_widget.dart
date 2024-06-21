import 'package:flutter/material.dart';
import 'package:travel_app/config/AppUrl/AppUrl.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class CategoryCompletedWidget extends StatelessWidget {
  final state;
  const CategoryCompletedWidget({super.key, this.state});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: state.data?.length,
        itemBuilder: (context, index) {
          final item = state.data?[index];
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: context.mh * 0.02),
                child: Row(
                  children: [
                    0.02.ph(context),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        0.02.ph(context),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image(
                            fit: BoxFit.cover,
                            height: context.mh * 0.2,
                            width: context.mw * 0.3,
                            image: NetworkImage(
                              AppUrl.buildUrlImage(item?.image ?? ''),
                            ),
                          ),
                        ),
                        0.02.ph(context),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: context.mh * 0.02),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Container(
                                  height: context.mh * 0.03,
                                  width: context.mw * 0.2,
                                  decoration: BoxDecoration(
                                    color: AppColor.primaryColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "\$ ${item?.pricePerPerson ?? ''} ",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall
                                          ?.copyWith(
                                            color: AppColor.secondaryColorWhite,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Text(
                              item?.title ?? '',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                            Text(
                              item?.description ?? '',
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: AppColor.greyTextColor,
                                  ),
                            ),
                            0.02.ph(context),
                            Row(
                              children: [
                                0.01.pw(context),
                                Icon(
                                  Icons.location_on_outlined,
                                  size: context.mh * 0.016,
                                ),
                                0.01.pw(context),
                                Expanded(
                                  child: Text(
                                    "${item?.country ?? ''} ${item?.city ?? ''}",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                ),
                              ],
                            ),
                            0.02.ph(context),
                            MaterialButton(
                              minWidth: context.mw * 0.7,
                              color: AppColor.primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              onPressed: () {},
                              child: Text(
                                "Book Now",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: AppColor.secondaryColorWhite,
                                    ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Divider(
                endIndent: 20,
                indent: 20,
                thickness: 0.5,
                color: AppColor.greyTextColor,
              ),
            ],
          );
        },
      ),
    );
  }
}
