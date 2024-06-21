import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travel_app/Bloc/CategoryBloc/category_bloc.dart';
import 'package:travel_app/config/components/Error/ErrorWidget.dart';
import 'package:travel_app/config/components/loadingWidget/loadingWidget.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/config/widgets/widgets.dart';

class CategoryView extends StatefulWidget {
  final String category;
  const CategoryView({super.key, required this.category});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  void initState() {
    context.read<CategoryBloc>().add(CategoryLoadedEvent(cat: widget.category));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.category,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          BlocBuilder<CategoryBloc, CategoryState>(
            builder: (context, state) {
              if (state is CategoryLoadingState) {
                return const LoadingWidget();
              } else if (state is CategoryCompletedState) {
                if (state.data!.isEmpty) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      0.4.ph(context),
                      Center(
                        child: Text(
                          "No Places Found",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ),
                    ],
                  );
                } else {
                  return CategoryCompletedWidget(
                    state: state,
                  );
                }
              } else if (state is CategoryErrorState) {
                return ErrorWidgetComp(
                  onPress: () {
                    context
                        .read<CategoryBloc>()
                        .add(CategoryLoadedEvent(cat: widget.category));
                  },
                  errorText: state.msg,
                );
              } else {
                return const SizedBox();
              }
            },
          )
        ],
      ),
    );
  }
}
