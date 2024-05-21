import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:whatsapp_clone/utils/colors.dart';
import 'package:whatsapp_clone/utils/spacing_utils.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 20, right: 20),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                   // Uncomment the following lines if needed
                    Row(
                      children: [
                        const Text(
                          'WhatsApp',
                          style: TextStyle(
                              fontSize: 24,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                        const Expanded(child: SpacingUtils.space10),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.qr_code_scanner,
                              size: 25,
                              color: blackColor,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              size: 25,
                              color: blackColor,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.more_vert,
                              size: 25,
                              color: blackColor,
                            )),
                      ],
                    ),
                    SpacingUtils.space10,
                    TextFormField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: const Color.fromRGBO(246, 245, 243, 1),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide.none,
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          size: 25,
                          color: Color.fromRGBO(106, 115, 120, 1),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        hintText: 'Search...',
                      ),
                    ),
                    SpacingUtils.space20,
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {}, child: const Text('All')),
                        SpacingUtils.wspace5,
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Unread')),
                        SpacingUtils.wspace5,
                        ElevatedButton(
                            onPressed: () {}, child: const Text('Group')),
                      ],
                    ),
                    SpacingUtils.space20,
                    ListTile(
                      onTap: () {},
                      leading: SvgPicture.asset(
                          height: 25, width: 25, 'assets/images/archived_icon.svg'),
                      title: const Text(
                        'Archived',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: blackColor),
                      ),
                    ),
                  ],
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ListTile(
                      onTap: () {},
                      leading: SvgPicture.asset(
                        'assets/images/profile_icon.svg',
                        height: 50,
                        width: 50,
                      ),
                      title: const Row(
                        children: [
                          Expanded(
                            child: Text(
                              'Chat 1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: blackColor,
                              ),
                            ),
                          ),
                          Text(
                            '10:00 pm',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                      subtitle: const Row(
                        children: [
                          Expanded(
                            child: Text('Last Chat Shows.....'),
                          ),
                        ],
                      ),
                    );
                  },
                  childCount: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
