import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import '../controllers/home_controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: HomeController(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          leading: Image.asset(
            "assets/images/profile.png",
            height: 18,
            fit: BoxFit.fill,
          ),
          title: SizedBox(
            height: 40,
            width: 250,
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Image.asset(
                    "assets/images/Vector.png",
                    height: 12,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  hintText: "People Search",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12))),
            ),
          ),
          centerTitle: true,
          actions: [
            Container(
              height: 36,
              width: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21),
                  border: Border.all(color: Colors.black)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Icon(CupertinoIcons.eye), Text("20")],
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/Filter_icon.png"),
                appbtx(
                  onTap: () {
                    // online
                    controller.getData(from: {
                      "online": controller.isOnline.value ? "0" : "1"
                    });
                    controller.isOnline.value = !controller.isOnline.value;
                  },
                ),
                appbtx(
                  name: "Age",
                  onTap: () {
                    controller.getData(from: {"age1": "25", "age2": "30"});
                  },
                ),
                appbtx(
                  name: "Fresh",
                  onTap: () {
                    controller.getData();
                  },
                ),
                appbtx(name: "Position "),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Obx(
              () => controller.isLogin.value || controller.allUser == null
                  ? SizedBox(
                      height: 200,
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    )
                  : Expanded(
                      child: GridView.builder(
                        itemCount: controller.allUser!.allUsers?.length ?? 0,
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3, childAspectRatio: 1 / 1.5),
                        itemBuilder: (context, index) {
                          final data = controller.allUser!.allUsers![index];

                          return Container(
                            width: 119,
                            height: 218,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                    color: Color(0xff10694F38),
                                    blurRadius: 2,
                                    spreadRadius: 2,
                                    offset: Offset(0, 2))
                              ],
                              image: DecorationImage(
                                  image: NetworkImage(
                                    data.images![0],
                                  ),
                                  fit: BoxFit.fill
                                  // image:
                                  //     AssetImage("assets/images/grid_image.jpeg"),
                                  ),
                            ),
                            margin: const EdgeInsets.all(7),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      CupertinoIcons.heart,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Container(
                                  // height: 35,
                                  width: 100,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 4),
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.45),
                                      borderRadius: BorderRadius.circular(6)),
                                  child: Column(
                                    children: [
                                      const Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            CupertinoIcons.location_solid,
                                            size: 18,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            "2 kM away",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10),
                                          )
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              "Carla, 25",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          CircleAvatar(
                                            radius: 7,
                                            backgroundColor:
                                                const Color(0xff00FC9B)
                                                    .withOpacity(0.45),
                                            child: const CircleAvatar(
                                              radius: 3,
                                              backgroundColor:
                                                  Color(0xff00FC9B),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
            )
          ],
        ),
      ),
    );
  }

  Widget appbtx({String? name, void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21),
            border: Border.all(color: Colors.black)),
        child: Text(name ?? "Online"),
      ),
    );
  }
}
