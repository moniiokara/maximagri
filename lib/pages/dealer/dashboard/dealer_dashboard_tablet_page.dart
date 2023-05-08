import 'package:flutter/material.dart';
import 'package:maximagri/pages/dealer/order_details/dealer_order_details_desktop_page.dart';
import 'package:maximagri/pages/dealer/order_details/dealer_order_details_mobile_page.dart';
import 'package:maximagri/pages/dealer/order_details/dealer_order_details_tablet_page.dart';
import 'package:maximagri/pages/dealer/place_order/dealer_place_order_desktop_page.dart';
import 'package:maximagri/pages/dealer/place_order/dealer_place_order_mobile_page.dart';
import 'package:maximagri/pages/dealer/place_order/dealer_place_order_tablet_page.dart';
import 'package:maximagri/utilities/responsiveness.dart';

import 'package:maximagri/widgets/drawer/dealer_drawer.dart';
import 'package:maximagri/widgets/home_page_option.dart';
import 'package:maximagri/widgets/navigation/dealer_navigation.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_desktop_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_tablet_page.dart';
import 'package:maximagri/pages/terms_conditions/terms_conditions/terms_conditions_mobile_page.dart';

import 'package:maximagri/pages/contact/contact_us/contact_us_mobile_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_tablet_page.dart';
import 'package:maximagri/pages/contact/contact_us/contact_us_desktop_page.dart';

import 'package:maximagri/pages/about/about_us/about_us_desktop_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_mobile_page.dart';
import 'package:maximagri/pages/about/about_us/about_us_tablet_page.dart';

class DealerDashboardTabletPage extends StatelessWidget {
  const DealerDashboardTabletPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DealerDrawer(),
      bottomNavigationBar: const DealerNavigation(selectedIndex: 0),
      appBar: AppBar(
        title: const Text('DealerDashboardTabletPage'),
      ),
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
                  iconData: Icons.place,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const Responsiveness(
                              mobilePage: DealerPlaceOrderMobilePage(),
                              tabletPage: DealerPlaceOrderTabletPage(),
                              desktopPage: DealerPlaceOrderDesktopPage(),
                            )));
                  },
                  title: 'Place Order',
                  subtitle: 'To order something to',
                ),
              ),

              Expanded(
                flex: 2,
                child: HomePageOption(
                  iconData: Icons.details,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const Responsiveness(
                              mobilePage: DealerOrderDetailsMobilePage(),
                              tabletPage: DealerOrderDetailsTabletPage(),
                              desktopPage: DealerOrderDetailsDesktopPage(),
                            )));
                  },
                  title: 'Order List',
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
                  iconData: Icons.contacts,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Responsiveness(
                        mobilePage: ContactUsMobilePage(
                          pageDrawer: DealerDrawer(),
                          pageNavigation: DealerNavigation(
                            selectedIndex: 3,
                          ),
                        ),
                        tabletPage: ContactUsTabletPage(
                          pageDrawer: DealerDrawer(),
                          pageNavigation: DealerNavigation(
                            selectedIndex: 3,
                          ),
                        ),
                        desktopPage: ContactUsDesktopPage(pageDrawer: DealerDrawer()),
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
                  iconData: Icons.details,
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Responsiveness(
                        mobilePage: AboutUsMobilePage(
                          pageDrawer: DealerDrawer(),
                          pageNavigation: DealerNavigation(
                            selectedIndex: 3,
                          ),
                        ),
                        tabletPage: AboutUsTabletPage(
                          pageDrawer: DealerDrawer(),
                          pageNavigation: DealerNavigation(
                            selectedIndex: 3,
                          ),
                        ),
                        desktopPage: AboutUsDesktopPage(pageDrawer: DealerDrawer()),
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
                          pageDrawer: DealerDrawer(),
                          pageNavigation: DealerNavigation(
                            selectedIndex: 3,
                          ),
                        ),
                        tabletPage: TermsAndConditionsTabletPage(
                          pageDrawer: DealerDrawer(),
                          pageNavigation: DealerNavigation(
                            selectedIndex: 3,
                          ),
                        ),
                        desktopPage:
                        TermsAndConditionsDesktopPage(pageDrawer: DealerDrawer()),
                      ),
                    ),
                  ),
                  title: 'Term Condition',
                  subtitle: 'To order something to',
                ),
              ),
              const Expanded(
                  flex: 2,
                  child: Text('')
              ),

            ],
          ),

        ],
      ),
    );
  }
}
