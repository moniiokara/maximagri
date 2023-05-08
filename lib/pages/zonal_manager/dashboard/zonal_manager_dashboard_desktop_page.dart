import 'package:flutter/material.dart';

import 'package:maximagri/pages/zonal_manager/orders_list/zonal_manager_orders_list_desktop_page.dart';
import 'package:maximagri/pages/zonal_manager/orders_list/zonal_manager_orders_list_mobile_page.dart';
import 'package:maximagri/pages/zonal_manager/orders_list/zonal_manager_orders_list_tablet_page.dart';
import 'package:maximagri/pages/zonal_manager/sales_officer_list/zonal_manager_sales_officer_list_desktop_page.dart';
import 'package:maximagri/pages/zonal_manager/sales_officer_list/zonal_manager_sales_officer_list_mobile_page.dart';
import 'package:maximagri/pages/zonal_manager/sales_officer_list/zonal_manager_sales_officer_list_tablet_page.dart';
import 'package:maximagri/utilities/responsiveness.dart';
import 'package:maximagri/widgets/drawer/zonal_manager_drawer.dart';
import 'package:maximagri/widgets/home_page_option.dart';
import 'package:maximagri/pages/zonal_manager/credit_center/zonal_manager_credit_center_desktop_page.dart';
import 'package:maximagri/pages/zonal_manager/credit_center/zonal_manager_credit_center_mobile_page.dart';
import 'package:maximagri/pages/zonal_manager/credit_center/zonal_manager_credit_center_tablet_page.dart';

import 'package:maximagri/pages/zonal_manager/sales_manager_list/zonal_manager_sales_manager_list_desktop_page.dart';
import 'package:maximagri/pages/zonal_manager/sales_manager_list/zonal_manager_sales_manager_list_mobile_page.dart';
import 'package:maximagri/pages/zonal_manager/sales_manager_list/zonal_manager_sales_manager_list_tablet_page.dart';



import 'package:maximagri/pages/zonal_manager/dealers_list/zonal_manager_dealers_list_desktop_page.dart';
import 'package:maximagri/pages/zonal_manager/dealers_list/zonal_manager_dealers_list_mobile_page.dart';
import 'package:maximagri/pages/zonal_manager/dealers_list/zonal_manager_dealers_list_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_desktop_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_mobile_page.dart';

import 'package:maximagri/pages/contact/contact_us/contact_us_mobile_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_tablet_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_desktop_page.dart';

import 'package:maximagri/pages/about/about_us/about_us_desktop_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_mobile_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_tablet_page.dart';
import 'package:maximagri/widgets/navigation/zonal_manager_navigation.dart';

class ZonalManagerDashboardDesktopPage extends StatefulWidget {
  const ZonalManagerDashboardDesktopPage({Key? key}) : super(key: key);

  @override
  State<ZonalManagerDashboardDesktopPage> createState() =>
      _ZonalManagerDashboardDesktopPageState();
}



class _ZonalManagerDashboardDesktopPageState
    extends State<ZonalManagerDashboardDesktopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ZonalManagerDashboardDesktopPage'),
      ),
      body: Row(
        children: [
          ZonalManagerDrawer(),
          Expanded(
            flex: 2,
            child: SingleChildScrollView(

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
                          iconData: Icons.place,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Responsiveness(
                                mobilePage: ZonalManagerCreditCenterMobilePage(),
                                tabletPage: ZonalManagerCreditCenterTabletPage(),
                                desktopPage: ZonalManagerCreditCenterDesktopPage(),
                              ),
                            ),
                          ),
                          title: 'Credit Summary',
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
                              builder: (context) =>  Responsiveness(
                                mobilePage: ZonalManagerSalesManagerListMobilePage(),
                                tabletPage: ZonalManagerSalesManagerListTabletPage(),
                                desktopPage: ZonalManagerSalesManagerListDesktopPage(),
                              ),
                            ),
                          ),
                          title: 'Sales Managers',
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
                          iconData: Icons.place,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Responsiveness(
                                mobilePage: ZonalManagerSalesOfficerListMobilePage(),
                                tabletPage: ZonalManagerSalesOfficerListTabletPage(),
                                desktopPage: ZonalManagerSalesOfficerListDesktopPage(),
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
                                mobilePage: ZonalManagerDealersListMobilePage(),
                                tabletPage: ZonalManagerDealersListTabletPage(),
                                desktopPage: ZonalManagerDealersListDesktopPage(),
                              ),
                            ),
                          ),
                          title: 'Dealers List',
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
                          iconData: Icons.place,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Responsiveness(
                                mobilePage: ZonalManagerOrdersListMobilePage(),
                                tabletPage: ZonalManagerOrdersListTabletPage(),
                                desktopPage: ZonalManagerOrdersListDesktopPage(),
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
                                  pageDrawer: ZonalManagerDrawer(),
                                  pageNavigation: ZonalManagerNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                tabletPage: ContactUsTabletPage(
                                  pageDrawer: ZonalManagerDrawer(),
                                  pageNavigation: ZonalManagerNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                desktopPage:
                                ContactUsDesktopPage(pageDrawer: ZonalManagerDrawer()),
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
                                  pageDrawer: ZonalManagerDrawer(),
                                  pageNavigation: ZonalManagerNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                tabletPage: AboutUsTabletPage(
                                  pageDrawer: ZonalManagerDrawer(),
                                  pageNavigation: ZonalManagerNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                desktopPage:
                                AboutUsDesktopPage(pageDrawer: ZonalManagerDrawer()),
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
                                  pageDrawer: ZonalManagerDrawer(),
                                  pageNavigation: ZonalManagerNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                tabletPage: TermsAndConditionsTabletPage(
                                  pageDrawer: ZonalManagerDrawer(),
                                  pageNavigation: ZonalManagerNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                desktopPage: TermsAndConditionsDesktopPage(
                                    pageDrawer: ZonalManagerDrawer()),
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
          ),
          Expanded(
            child: Column(
              //  crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              ],
            ),
          ),
        ],
      ),
    );
  }
}
