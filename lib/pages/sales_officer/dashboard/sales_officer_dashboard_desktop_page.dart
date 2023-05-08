import 'package:flutter/material.dart';
import 'package:maximagri/pages/sales_officer/orders_list/sales_officer_orders_list_desktop_page.dart';
import 'package:maximagri/pages/sales_officer/orders_list/sales_officer_orders_list_mobile_page.dart';
import 'package:maximagri/pages/sales_officer/orders_list/sales_officer_orders_list_tablet_page.dart';
import 'package:maximagri/utilities/responsiveness.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';
import 'package:maximagri/widgets/home_page_option.dart';


import 'package:maximagri/pages/sales_officer/place_order/sales_officer_place_order_desktop_page.dart';
import 'package:maximagri/pages/sales_officer/place_order/sales_officer_place_order_mobile_page.dart';
import 'package:maximagri/pages/sales_officer/place_order/sales_officer_place_order_tablet_page.dart';

import 'package:maximagri/pages/sales_officer/dealers_list/sales_officer_dealers_list_desktop_page.dart';
import 'package:maximagri/pages/sales_officer/dealers_list/sales_officer_dealers_list_mobile_page.dart';
import 'package:maximagri/pages/sales_officer/dealers_list/sales_officer_dealers_list_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_desktop_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_mobile_page.dart';

import 'package:maximagri/pages/contact/contact_us/contact_us_mobile_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_tablet_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_desktop_page.dart';

import 'package:maximagri/pages/about/about_us/about_us_desktop_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_mobile_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_tablet_page.dart';
import 'package:maximagri/widgets/navigation/sales_officer_navigation.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_desktop_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_mobile_page.dart';

import 'package:maximagri/pages/contact/contact_us/contact_us_mobile_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_tablet_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_desktop_page.dart';

import 'package:maximagri/pages/about/about_us/about_us_desktop_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_mobile_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_tablet_page.dart';

class SalesOfficerDashboardDesktopPage extends StatefulWidget {
  const SalesOfficerDashboardDesktopPage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerDashboardDesktopPage> createState() =>
      _SalesOfficerDashboardDesktopPageState();
}

class _SalesOfficerDashboardDesktopPageState
    extends State<SalesOfficerDashboardDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerDashboardDesktopPage'),
      ),
      body: Row(
        children: [
          SalesOfficerDrawer(),
          Expanded(
            flex: 2,
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: HomePageOption(
                        iconData: Icons.contacts,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Responsiveness(
                              mobilePage: SalesOfficerDealersListMobilePage(),
                              tabletPage: SalesOfficerDealersListTabletPage(),
                              desktopPage: SalesOfficerDealersListDesktopPage(),
                            ),
                          ),
                        ),
                        title: 'Dealers List',
                        subtitle: 'To order something to',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: HomePageOption(
                        iconData: Icons.place,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Responsiveness(
                              mobilePage: SalesOfficerPlaceOrderMobilePage(),
                              tabletPage: SalesOfficerPlaceOrderTabletPage(),
                              desktopPage: SalesOfficerPlaceOrderDesktopPage(),
                            ),
                          ),
                        ),
                        title: 'Place Order',
                        subtitle: 'To order something to',
                      ),
                    ),

                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: HomePageOption(
                        iconData: Icons.details,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Responsiveness(
                              mobilePage: SalesOfficerOrdersListMobilePage(),
                              tabletPage: SalesOfficerOrdersListTabletPage(),
                              desktopPage: SalesOfficerOrdersListDesktopPage(),
                            ),
                          ),
                        ),
                        title: 'Order List',
                        subtitle: 'To order something to',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: HomePageOption(
                        iconData: Icons.contacts,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Responsiveness(
                              mobilePage: ContactUsMobilePage(
                                pageDrawer: SalesOfficerDrawer(),
                                pageNavigation: SalesOfficerNavigation(
                                  selectedIndex: 3,
                                ),
                              ),
                              tabletPage: ContactUsTabletPage(
                                pageDrawer: SalesOfficerDrawer(),
                                pageNavigation: SalesOfficerNavigation(
                                  selectedIndex: 3,
                                ),
                              ),
                              desktopPage:
                              ContactUsDesktopPage(pageDrawer: SalesOfficerDrawer()),
                            ),
                          ),
                        ),
                        title: 'Contact Us',
                        subtitle: 'To order something to',
                      ),
                    ),


                  ],
                ),
                Row(
                  children: [

                    Expanded(
                      flex: 2,
                      child: HomePageOption(
                        iconData: Icons.contacts,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Responsiveness(
                              mobilePage: AboutUsMobilePage(
                                pageDrawer: SalesOfficerDrawer(),
                                pageNavigation: SalesOfficerNavigation(
                                  selectedIndex: 3,
                                ),
                              ),
                              tabletPage: AboutUsTabletPage(
                                pageDrawer: SalesOfficerDrawer(),
                                pageNavigation: SalesOfficerNavigation(
                                  selectedIndex: 3,
                                ),
                              ),
                              desktopPage:
                              AboutUsDesktopPage(pageDrawer: SalesOfficerDrawer()),
                            ),
                          ),
                        ),
                        title: 'About Us',
                        subtitle: 'To order something to',
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: HomePageOption(
                        iconData: Icons.contacts,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Responsiveness(
                              mobilePage: TermsAndConditionsMobilePage(
                                pageDrawer: SalesOfficerDrawer(),
                                pageNavigation: SalesOfficerNavigation(
                                  selectedIndex: 3,
                                ),
                              ),
                              tabletPage: TermsAndConditionsTabletPage(
                                pageDrawer: SalesOfficerDrawer(),
                                pageNavigation: SalesOfficerNavigation(
                                  selectedIndex: 3,
                                ),
                              ),
                              desktopPage: TermsAndConditionsDesktopPage(
                                  pageDrawer: SalesOfficerDrawer()),
                            ),
                          ),
                        ),
                        title: 'Term Condition',
                        subtitle: 'To order something to',
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          Expanded(
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
