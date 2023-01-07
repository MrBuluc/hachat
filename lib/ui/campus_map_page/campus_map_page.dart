import 'package:flutter/material.dart';
import 'package:hachat/ui/const.dart';
import 'package:photo_view/photo_view.dart';

class CampusMapPage extends StatefulWidget {
  const CampusMapPage({Key? key}) : super(key: key);

  @override
  State<CampusMapPage> createState() => _CampusMapPageState();
}

class _CampusMapPageState extends State<CampusMapPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  int bodyIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: ThemeData.dark(),
        child: Scaffold(
          appBar: buildAppBar("Kampüs Haritaları", Colors.green,
              isInfo: false,
              tabBar: TabBar(
                controller: tabController,
                tabs: const [
                  Tab(
                    text: "Beytepe",
                  ),
                  Tab(
                    text: "Sıhhiye",
                  )
                ],
                onTap: (int index) {
                  setState(() {
                    bodyIndex = index;
                  });
                },
              )),
          body: PhotoView(
            imageProvider: AssetImage(bodyIndex == 0
                ? "assets/maps/beytepe.jpeg"
                : "assets/maps/sihhiye.jpg"),
            enableRotation: false,
          ),
        ));
  }
}
