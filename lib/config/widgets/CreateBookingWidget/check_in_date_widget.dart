import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/BookingDateBloc/booking_date_Bloc.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class CheckInDateWidget extends StatelessWidget {
  final TextEditingController checkInDateController;
  const CheckInDateWidget({super.key, required this.checkInDateController});

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      String formattedDate =
          "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
      context
          .read<BookingDateBloc>()
          .add(CheckInDateChangedEvent(formattedDate));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingDateBloc, BookingDateState>(
      builder: (context, state) {
        checkInDateController.text = state.checkInDate;
        return Column(
          children: [
            BookingFeildComp(
              controller: checkInDateController,
              title: 'Check In Date',
              hintText: 'dd/mm/yyyy',
              icon: IconlyLight.calendar,
              ontap: () => _selectDate(context),
            ),
            if (state.errorMessage != null)
              Row(
                children: [
                  Expanded(
                    child: Text(state.errorMessage!,
                        style: const TextStyle(color: Colors.red)),
                  ),
                ],
              ),
          ],
        );
      },
    );
  }
}
