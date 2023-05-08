import 'package:flutter/material.dart';
import 'package:maximagri/pages/zonal_manager/sales_officer_list/zonal_manager_sales_officer_list_desktop_page.dart';
import 'package:maximagri/pages/zonal_manager/sales_officer_list/zonal_manager_sales_officer_list_mobile_page.dart';
import 'package:maximagri/pages/zonal_manager/sales_officer_list/zonal_manager_sales_officer_list_tablet_page.dart';
import 'package:maximagri/widgets/drawer/operations_drawer.dart';
import 'package:maximagri/utilities/responsiveness.dart';
import 'package:maximagri/widgets/home_page_option.dart';

import 'package:maximagri/pages/operations/zonal_manager_list/operations_zonal_manager_list_desktop_page.dart';
import 'package:maximagri/pages/operations/zonal_manager_list/operations_zonal_manager_list_mobile_page.dart';
import 'package:maximagri/pages/operations/zonal_manager_list/operations_zonal_manager_list_tablet_page.dart';

import 'package:maximagri/pages/operations/credit_center/operations_credit_center_desktop_page.dart';
import 'package:maximagri/pages/operations/credit_center/operations_credit_center_mobile_page.dart';
import 'package:maximagri/pages/operations/credit_center/operations_credit_center_tablet_page.dart';

import 'package:maximagri/pages/operations/sales_manager_list/operations_sales_manager_list_desktop_page.dart';
import 'package:maximagri/pages/operations/sales_manager_list/operations_sales_manager_list_mobile_page.dart';
import 'package:maximagri/pages/operations/sales_manager_list/operations_sales_manager_list_tablet_page.dart';



import 'package:maximagri/pages/operations/dealers_list/operations_dealers_list_desktop_page.dart';
import 'package:maximagri/pages/operations/dealers_list/operations_dealers_list_mobile_page.dart';
import 'package:maximagri/pages/operations/dealers_list/operations_dealers_list_tablet_page.dart';

import 'package:maximagri/pages/operations/orders_list/operations_orders_list_desktop_page.dart';
import 'package:maximagri/pages/operations/orders_list/operations_orders_list_mobile_page.dart';
import 'package:maximagri/pages/operations/orders_list/operations_orders_list_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_desktop_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_mobile_page.dart';

import 'package:maximagri/pages/contact/contact_us/contact_us_mobile_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_tablet_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_desktop_page.dart';

import 'package:maximagri/pages/about/about_us/about_us_desktop_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_mobile_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_tablet_page.dart';
import 'package:maximagri/widgets/navigation/operations_navigation.dart';


class OperationsDashboardDesktopPage extends StatefulWidget {
  const OperationsDashboardDesktopPage({Key? key}) : super(key: key);

  @override
  State<OperationsDashboardDesktopPage> createState() =>
      _OperationsDashboardDesktopPageState();
}

class _OperationsDashboardDesktopPageState
    extends State<OperationsDashboardDesktopPage> {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      appBar: AppBar(
        title: const Text('OperationsDashboardDesktopPage'),
      ),
      body: Row(
        children: [
          const OperationsDrawer(),
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
                                mobilePage: OperationsCreditCenterMobilePage(),
                                tabletPage: OperationsCreditCenterTabletPage(),
                                desktopPage:
                                    OperationsCreditCenterDesktopPage(),
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
                          iconData: Icons.place,
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Responsiveness(
                                mobilePage: OperationsZonalManagerListMobilePage(),
                                tabletPage: OperationsZonalManagerListTabletPage(),
                                desktopPage: OperationsZonalManagerListDesktopPage(),
                              ),
                            ),
                          ),
                          title: 'Zonal Manager',
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
                                mobilePage:
                                    OperationsSalesManagerListMobilePage(),
                                tabletPage:
                                    OperationsSalesManagerListTabletPage(),
                                desktopPage:
                                    OperationsSalesManagerListDesktopPage(),
                              ),
                            ),
                          ),
                          title: 'Sales Managers',
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
                                mobilePage:
                                    ZonalManagerSalesOfficerListMobilePage(),
                                tabletPage:
                                    ZonalManagerSalesOfficerListTabletPage(),
                                desktopPage:
                                    ZonalManagerSalesOfficerListDesktopPage(),
                              ),
                            ),
                          ),
                          title: 'Sales Officers',
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
                                mobilePage: OperationsDealersListMobilePage(),
                                tabletPage: OperationsDealersListTabletPage(),
                                desktopPage: OperationsDealersListDesktopPage(),
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
                                mobilePage: OperationsOrdersListMobilePage(),
                                tabletPage: OperationsOrdersListTabletPage(),
                                desktopPage: OperationsOrdersListDesktopPage(),
                              ),
                            ),
                          ),
                          title: 'Order List',
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
                              builder: (context) =>  const Responsiveness(
                                mobilePage: ContactUsMobilePage(
                                  pageDrawer: OperationsDrawer(),
                                  pageNavigation: OperationsNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                tabletPage: ContactUsTabletPage(
                                  pageDrawer: OperationsDrawer(),
                                  pageNavigation: OperationsNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                desktopPage:
                                ContactUsDesktopPage(pageDrawer: OperationsDrawer()),
                              ),
                            ),
                          ),
                          title: 'Contact Us',
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
                                mobilePage: AboutUsMobilePage(
                                  pageDrawer: OperationsDrawer(),
                                  pageNavigation: OperationsNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                tabletPage: AboutUsTabletPage(
                                  pageDrawer: OperationsDrawer(),
                                  pageNavigation: OperationsNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                desktopPage: AboutUsDesktopPage(pageDrawer: OperationsDrawer()),
                              ),
                            ),
                          ),
                          title: 'About Us',
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
                                mobilePage: TermsAndConditionsMobilePage(
                                  pageDrawer: OperationsDrawer(),
                                  pageNavigation: OperationsNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                tabletPage: TermsAndConditionsTabletPage(
                                  pageDrawer: OperationsDrawer(),
                                  pageNavigation: OperationsNavigation(
                                    selectedIndex: 1,
                                  ),
                                ),
                                desktopPage: TermsAndConditionsDesktopPage(
                                    pageDrawer: OperationsDrawer()),
                              ),
                            ),
                          ),
                          title: 'Term Condition',
                          subtitle: 'To order something to',
                        ),
                      ),
                      Expanded(flex: 2, child: Container())
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
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
