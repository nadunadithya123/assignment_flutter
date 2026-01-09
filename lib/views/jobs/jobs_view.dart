import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:assignment/views/jobs/jobs_controller.dart';
import 'package:assignment/views/widgets/job_card.dart';
import 'package:intl/intl.dart';
import 'package:assignment/l10n/app_localizations.dart';

class JobsView extends StatefulWidget {
  const JobsView({super.key});

  @override
  State<JobsView> createState() => _JobsViewState();
}

class _JobsViewState extends State<JobsView> {
  final JobsController controller = Get.find();
  String selectedFilter = "ACTION";

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: _appBar(),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }

        if (controller.errorMessage.value.isNotEmpty) {
          return Center(child: Text(controller.errorMessage.value));
        }

        if (controller.jobs.isEmpty) {
          return Center(child: Text(local.no_job_found));
        }
        return Column(
          children: [
            _buildFilterBar(),
            filterSection(),
            Expanded(
              child: ListView.builder(
                itemCount: controller.jobs.length,
                itemBuilder: (context, index) {
                  final job = controller.jobs[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                    child: JobCard(
                      title: job.title ?? '',
                      location: job.address ?? '',
                      jobNumber: "#${job.jobNumber}",
                      postedDate: DateFormat(
                        'd MMM yyyy',
                      ).format(job.postedDateTime?.toLocal() ?? DateTime.now()),
                      tags: [
                        job.statusId?.toInt() == 4 ? local.tenant_posted_label : local.unsheduled,
                        job.primaryJobType ?? '',
                        if (job.urgencyTypeId?.toInt() == 2) local.job_urgency_urgent,
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      }),
      bottomNavigationBar: _bottomNavigationBar(local),
    );
  }

  BottomNavigationBar _bottomNavigationBar(AppLocalizations local) {
    return BottomNavigationBar(
      selectedFontSize: 10,
      unselectedFontSize: 10,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.blue, // selected icon & text color
      unselectedItemColor: Colors.grey, // unselected icons
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.work_outline, // briefcase
            size: 24,
          ),
          label: local.jobs_tab,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/icon_im_inspections.svg",
              width: 24),
          label: local.inspections_tab,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/chat.svg", width: 24),
          label: local.chat_tab,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/notifications.svg", width: 24),
          label: local.notifications_tab,
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset("assets/icons/menu.svg", width: 24),
          label: local.more_tab,
        ),
      ],
    );
  }

  Padding filterSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Showing ${controller.jobs.length} jobs",
            style: const TextStyle(
              color: Color.fromARGB(255, 134, 132, 132),
              fontStyle: FontStyle.italic,
              fontSize: 12,
            ),
          ),
          TextButton.icon(
            onPressed: () {
              // your action
            },
            icon: const Icon(
              Icons.flash_on_outlined,
              color: Colors.blue,
              size: 18,
            ),
            // icon: SvgPicture.asset(
            //   'assets/icons/flash_outlined.svg', // make sure you have this SVG in your assets
            //   width: 18,
            //   height: 18,
            //   color: Colors.blue,
            // ),
            label: const Text(
              "Filter",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 14,
              ),
            ),
            style: TextButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          AppLocalizations.of(context)!.job_main_title,
          style: TextStyle(fontSize: 24),
        ),
      ),
      actions: [
        SvgPicture.asset(
          'assets/icons/people.svg',
          width: 32,
          height: 32,
        ),
        SizedBox(width: 16),
        SvgPicture.asset(
          'assets/icons/search.svg',
          width: 32,
          height: 32,
        ),
        SizedBox(width: 16),
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.circle,
          ),
          child: const Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        SizedBox(width: 24),
      ],
    );
  }

  Widget _buildFilterBar() {
    final List<String> options = ["ACTION", "FOLLOW UP", "REVIEW"];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: options.map((option) {
            final bool isSelected = option == selectedFilter;

            BorderRadius borderRadius;
            if (isSelected) {
              borderRadius = BorderRadius.circular(20);
            } else if (option == options.first) {
              borderRadius = const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              );
            } else if (option == options.last) {
              borderRadius = const BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              );
            } else {
              borderRadius = BorderRadius.zero;
            }

            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectedFilter = option;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? Colors.blue : Colors.white,
                    borderRadius: borderRadius,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    option,
                    style: TextStyle(
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  BorderRadius _getBorderRadius(String option) {
    if (option == "ACTION") {
      return const BorderRadius.only(
        topLeft: Radius.circular(20),
        bottomLeft: Radius.circular(20),
      );
    } else if (option == "REVIEW") {
      return const BorderRadius.only(
        topRight: Radius.circular(20),
        bottomRight: Radius.circular(20),
      );
    }
    return BorderRadius.zero;
  }
}
