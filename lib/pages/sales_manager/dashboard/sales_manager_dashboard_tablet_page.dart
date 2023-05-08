import 'package:flutter/material.dart';
import 'package:maximagri/pages/sales_manager/dealers_list/sales_manager_dealers_list_desktop_page.dart';
import 'package:maximagri/pages/sales_manager/dealers_list/sales_manager_dealers_list_mobile_page.dart';
import 'package:maximagri/pages/sales_manager/dealers_list/sales_manager_dealers_list_tablet_page.dart';
import 'package:maximagri/pages/sales_manager/orders_list/sales_manager_orders_list_desktop_page.dart';
import 'package:maximagri/pages/sales_manager/orders_list/sales_manager_orders_list_mobile_page.dart';
import 'package:maximagri/pages/sales_manager/orders_list/sales_manager_orders_list_tablet_page.dart';
import 'package:maximagri/pages/sales_manager/sales_officer_list/sales_manager_sales_officer_list_desktop_page.dart';
import 'package:maximagri/pages/sales_manager/sales_officer_list/sales_manager_sales_officer_list_mobile_page.dart';
import 'package:maximagri/pages/sales_manager/sales_officer_list/sales_manager_sales_officer_list_tablet_page.dart';
import 'package:maximagri/utilities/responsiveness.dart';
import 'package:maximagri/widgets/drawer/sales_manager_drawer.dart';
import 'package:maximagri/widgets/home_page_option.dart';
import 'package:maximagri/widgets/navigation/sales_manager_navigation.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_desktop_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_mobile_page.dart';

import 'package:maximagri/pages/contact/contact_us/contact_us_mobile_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_tablet_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_desktop_page.dart';

import 'package:maximagri/pages/about/about_us/about_us_desktop_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_mobile_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_tablet_page.dart';


class SalesManagerDashboardTabletPage extends StatefulWidget {
  const SalesManagerDashboardTabletPage({Key? key}) : super(key: key);

  @override
  State<SalesManagerDashboardTabletPage> createState() =>
      _SalesManagerDashboardTabletPageState();
}

class _SalesManagerDashboardTabletPageState
    extends State<SalesManagerDashboardTabletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SalesManagerDashboardTabletPage'),
      ),
      drawer: const SalesManagerDrawer(),
      bottomNavigationBar: const SalesManagerNavigation(selectedIndex: 0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
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
                        mobilePage: SalesManagerSalesOfficerListMobilePage(),
                        tabletPage: SalesManagerSalesOfficerListTabletPage(),
                        desktopPage: SalesManagerSalesOfficerListDesktopPage(),
                      ),
                    ),
                  ),
                  title: 'Sales Officers',
                  subtitle: 'To order something to',
                ),
              ),


              Expanded(
                flex: 2,
                child: HomePageOption(
                  iconData: Icons.details,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Responsiveness(
                        mobilePage: SalesManagerDealersListMobilePage(),
                        tabletPage: SalesManagerDealersListTabletPage(),
                        desktopPage: SalesManagerDealersListDesktopPage(),
                      ),
                    ),
                  ),
                  title: 'Dealer List',
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
                  iconData: Icons.place,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Responsiveness(
                        mobilePage: SalesManagerOrdersListMobilePage(),
                        tabletPage: SalesManagerOrdersListTabletPage(),
                        desktopPage: SalesManagerOrdersListDesktopPage(),
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
                          pageDrawer: SalesManagerDrawer(),
                          pageNavigation: SalesManagerNavigation(
                            selectedIndex: 1,
                          ),
                        ),
                        tabletPage: ContactUsTabletPage(
                          pageDrawer: SalesManagerDrawer(),
                          pageNavigation: SalesManagerNavigation(
                            selectedIndex: 1,
                          ),
                        ),
                        desktopPage:
                        ContactUsDesktopPage(pageDrawer: SalesManagerDrawer()),
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Expanded(
                flex: 2,
                child: HomePageOption(
                  iconData: Icons.details,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Responsiveness(
                        mobilePage: AboutUsMobilePage(
                          pageDrawer: SalesManagerDrawer(),
                          pageNavigation: SalesManagerNavigation(
                            selectedIndex: 1,
                          ),
                        ),
                        tabletPage: AboutUsTabletPage(
                          pageDrawer: SalesManagerDrawer(),
                          pageNavigation: SalesManagerNavigation(
                            selectedIndex: 1,
                          ),
                        ),
                        desktopPage:
                        AboutUsDesktopPage(pageDrawer: SalesManagerDrawer()),
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
                          pageDrawer: SalesManagerDrawer(),
                          pageNavigation: SalesManagerNavigation(
                            selectedIndex: 1,
                          ),
                        ),
                        tabletPage: TermsAndConditionsTabletPage(
                          pageDrawer: SalesManagerDrawer(),
                          pageNavigation: SalesManagerNavigation(
                            selectedIndex: 1,
                          ),
                        ),
                        desktopPage: TermsAndConditionsDesktopPage(
                            pageDrawer: SalesManagerDrawer()),
                      ),
                    ),
                  ),
                  title: 'Term Condition ',
                  subtitle: 'To order something to',
                ),
              ),
            ],
          ),



        ],
      ),
    );
  }
}
