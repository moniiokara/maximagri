import 'package:flutter/material.dart';
import 'package:maximagri/pages/sales_officer/dashboard/sales_officer_dashboard_desktop_page.dart';
import 'package:maximagri/pages/sales_officer/dashboard/sales_officer_dashboard_tablet_page.dart';
import 'package:maximagri/pages/sales_officer/orders_list/sales_officer_orders_list_desktop_page.dart';
import 'package:maximagri/pages/sales_officer/orders_list/sales_officer_orders_list_mobile_page.dart';
import 'package:maximagri/pages/sales_officer/orders_list/sales_officer_orders_list_tablet_page.dart';
import 'package:maximagri/utilities/responsiveness.dart';
import 'package:maximagri/widgets/drawer/sales_officer_drawer.dart';
import 'package:maximagri/widgets/home_page_option.dart';
import 'package:maximagri/widgets/navigation/sales_officer_navigation.dart';
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


class SalesOfficerDashboardMobilePage extends StatefulWidget {
  const SalesOfficerDashboardMobilePage({Key? key}) : super(key: key);

  @override
  State<SalesOfficerDashboardMobilePage> createState() =>
      _SalesOfficerDashboardMobilePageState();
}

class _SalesOfficerDashboardMobilePageState
    extends State<SalesOfficerDashboardMobilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesOfficerDashboardMobilePage'),
      ),
      drawer: const SalesOfficerDrawer(),
      bottomNavigationBar: const SalesOfficerNavigation(selectedIndex: 0),
      body: Center(
        child: SingleChildScrollView(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomePageOption(
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
              HomePageOption(
                iconData: Icons.place,
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Responsiveness(
                      mobilePage: SalesOfficerDashboardMobilePage(),
                      tabletPage: SalesOfficerDashboardTabletPage(),
                      desktopPage: SalesOfficerDashboardDesktopPage(),
                    ),
                  ),
                ),
                title: 'Place Order',
                subtitle: 'To order something to',
              ),

              HomePageOption(
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

              HomePageOption(
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
              HomePageOption(
                iconData: Icons.details,
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
              HomePageOption(
                iconData: Icons.details,
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
            ],
          ),
        ),
      ),
    );
  }
}
