import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String title;
  final String location;
  final String jobNumber;
  final String postedDate;
  final List<String> tags;

  const JobCard({
    super.key,
    required this.title,
    required this.location,
    required this.jobNumber,
    required this.postedDate,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 10), // 10px from both sides
      child: Container(
        height: 118, // fixed height
        padding: const EdgeInsets.all(12), // internal padding
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            Text(
              title,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 4),

            // Location
            Text(
              location,
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 8),

            Wrap(
              spacing: 6,
              runSpacing: 4,
              children: [
                _TagChip(
                  text: jobNumber,
                  color: Colors.green.shade100,
                  fontSize: 10,
                ),
                ...tags.map(
                  (tag) {
                    if (tag == "Urgent") {
                      return _TagChip(
                        text: tag,
                        color: Color.fromRGBO(222, 76, 57, 0.25),
                        textColor: Colors.red,
                        fontSize: 10,
                      );
                    } else if (tag == "Tenant Posted" || tag == "Unscheduled") {
                      return _TagChip(
                        text: tag,
                        color: Colors.black,
                        textColor: Colors.white,
                        fontSize: 10,
                      );
                    } else {
                      return _TagChip(
                        text: tag,
                        color: Colors.grey.shade200,
                        fontSize: 10,
                      );
                    }
                  },
                ),
              ],
            ),

            const Spacer(),

            Text(
              'Posted on $postedDate',
              style: TextStyle(
                fontSize: 12,
                color: Colors.grey.shade500,
                fontStyle: FontStyle.italic
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TagChip extends StatelessWidget {
  final String text;
  final Color color;
  final Color? textColor;
  final double fontSize;

  const _TagChip({
    required this.text,
    required this.color,
    this.textColor,
    this.fontSize = 10,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(3),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: textColor ?? Colors.black,
        ),
      ),
    );
  }
}
