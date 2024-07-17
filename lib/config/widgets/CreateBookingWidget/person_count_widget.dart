import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/CountBloc/count_bloc.dart';
import 'package:travel_app/Bloc/CountBloc/count_event.dart';
import 'package:travel_app/Bloc/CountBloc/count_state.dart';
import 'package:travel_app/Bloc/CreateBookingBloc/create_booking_bloc.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';

class PersonCountWidget extends StatelessWidget {
  const PersonCountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateBookingBloc, CreateBookingState>(
      buildWhen: (previous, current) => previous.person != current.person,
      builder: (context, state) {
        return Column(
          children: [
            0.02.ph(context),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
              child: Row(
                children: [
                  Text(
                    "Persons",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: context.mw * 0.04),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: context.mw * 0.03),
              child: BlocBuilder<CounterBloc, CountState>(
                builder: (context, state) {
                  return Row(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(100.0),
                        ),
                        child: const Center(
                          child: Icon(IconlyLight.user),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: context.mw * 0.03),
                        child: Center(
                          child: Text(
                            "${state.count} People",
                            style: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<CounterBloc>()
                                  .add(DecrementCounterEvent());
                              context.read<CreateBookingBloc>().add(
                                    PersonChangedEvent(
                                        persons: state.count.toString()),
                                  );
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColor.primaryColor, width: 2),
                              ),
                              child: Center(
                                  child: Text(
                                "-",
                                style: TextStyle(color: AppColor.primaryColor),
                              )),
                            ),
                          ),
                          0.03.pw(context),
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<CounterBloc>()
                                  .add(IncrementCounterEvent());
                              context.read<CreateBookingBloc>().add(
                                    PersonChangedEvent(
                                        persons: state.count.toString()),
                                  );
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: AppColor.primaryColor, width: 2),
                              ),
                              child: Center(
                                  child: Text(
                                "+",
                                style: TextStyle(color: AppColor.primaryColor),
                              )),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
