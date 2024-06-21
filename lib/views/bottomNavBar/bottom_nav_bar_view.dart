import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:travel_app/config/Color/AppColor.dart';
import 'package:travel_app/config/extenshion.dart';
import 'package:travel_app/Bloc/BottomNavBarBloc/bottom_nav_bar_bloc.dart';
import 'package:travel_app/views/view.dart';

class CustomizedBottomNavBar extends StatefulWidget {
  const CustomizedBottomNavBar({super.key});

  @override
  _CustomizedBottomNavBarState createState() => _CustomizedBottomNavBarState();
}

class _CustomizedBottomNavBarState extends State<CustomizedBottomNavBar> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5), // Light background color
      body: BlocListener<BottomNavBarBloc, BottomNavBarState>(
        listener: (context, state) {
          if (state is BottomNavBarInitial) {
            _pageController.jumpToPage(state.page);
          }
        },
        child: BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
          builder: (context, state) {
            return PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                context
                    .read<BottomNavBarBloc>()
                    .add(ChangeIndexEvent(index: page));
              },
              children: const [
                HomeView(),
                FavouriteView(),
                HomeView(),
                ChatConsultancyView(),
                HomeView(),
              ],
            );
          },
        ),
      ),
      bottomNavigationBar: const SafeArea(
        child: _MainWrapperBottomNavBar(
          "Home",
          "Favorites",
          "Bookings",
          "Messages",
          "Profile",
        ),
      ),
    );
  }
}

class _MainWrapperBottomNavBar extends StatelessWidget {
  final String home, favorites, bookings, messages, profile;

  const _MainWrapperBottomNavBar(
    this.home,
    this.favorites,
    this.bookings,
    this.messages,
    this.profile,
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavBarBloc, BottomNavBarState>(
      builder: (context, state) {
        final currentPage = (state as BottomNavBarInitial).page;
        return BottomAppBar(
          color: AppColor.secondaryColorWhite,
          elevation: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _bottomAppBarItem(
                      context,
                      defaultIcon: IconlyLight.home,
                      page: 0,
                      label: home,
                      filledIcon: IconlyBold.home,
                      currentPage: currentPage,
                    ),
                    _bottomAppBarItem(
                      context,
                      defaultIcon: IconlyLight.heart,
                      page: 1,
                      label: favorites,
                      filledIcon: IconlyBold.heart,
                      currentPage: currentPage,
                    ),
                    _bottomAppBarItem(
                      context,
                      defaultIcon: IconlyLight.calendar,
                      page: 2,
                      label: bookings,
                      filledIcon: IconlyBold.calendar,
                      currentPage: currentPage,
                    ),
                    _bottomAppBarItem(
                      context,
                      defaultIcon: IconlyLight.chat,
                      page: 3,
                      label: messages,
                      filledIcon: IconlyBold.chat,
                      currentPage: currentPage,
                    ),
                    _bottomAppBarItem(
                      context,
                      defaultIcon: IconlyLight.profile,
                      page: 4,
                      label: profile,
                      filledIcon: IconlyBold.profile,
                      currentPage: currentPage,
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _bottomAppBarItem(
    BuildContext context, {
    required IconData defaultIcon,
    required int page,
    required String label,
    required IconData filledIcon,
    required int currentPage,
  }) {
    return GestureDetector(
      onTap: () {
        context.read<BottomNavBarBloc>().add(ChangeIndexEvent(index: page));
      },
      child: Container(
        color: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            0.004.ph(context),
            Icon(
              currentPage == page ? filledIcon : defaultIcon,
              color: currentPage == page
                  ? AppColor.primaryColor
                  : AppColor.blackColor,
              size: context.mh * 0.029,
            ),
            0.003.ph(context),
            Text(
              label,
              style: GoogleFonts.aBeeZee(
                fontSize: context.mh * 0.012,
                color: currentPage == page
                    ? AppColor.primaryColor
                    : AppColor.blackColor,
                fontWeight: FontWeight.w100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
