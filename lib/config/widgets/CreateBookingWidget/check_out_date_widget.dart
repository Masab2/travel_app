import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/Bloc/BookingDateBloc/booking_date_Bloc.dart';
import 'package:travel_app/config/components/BookingFeildComp/booking_feild_comp.dart';

class CheckOutDateWidget extends StatelessWidget {
  final TextEditingController checkOutController;
  const CheckOutDateWidget({super.key, required this.checkOutController});
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
          .add(CheckOutDateChangedEvent(formattedDate));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingDateBloc, BookingDateState>(
      builder: (context, state) {
        checkOutController.text = state.checkOutDate;
        return Column(
          children: [
            BookingFeildComp(
              controller: checkOutController,
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
