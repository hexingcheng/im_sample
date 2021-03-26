import 'package:flutter/material.dart';
import 'package:onlylive/domain/entities/talent.dart';
import 'package:onlylive/widgets/atoms/schedule_label.dart';
import 'package:onlylive/widgets/molecules/category.dart';
import 'package:onlylive/widgets/molecules/talent_card.dart';

class ComingSoonTalentListView extends StatelessWidget {
  const ComingSoonTalentListView(this.talents);
  final List<Talent> talents;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Category(text: "今度お話する", onPressedArrow: () {}),
          Container(
            margin: const EdgeInsets.only(top: 5),
            height: 204,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                talents.length,
                (index) => GestureDetector(
                  onTap: () => {},
                  child: Container(
                    height: 204,
                    width: 120,
                    margin: const EdgeInsets.only(right: 12),
                    child: TalentCard(
                      imgHeight: 150,
                      imageSrc: talents[index].mainSquareImageUrl,
                      name: talents[index].displayName,
                      job: talents[index].genre,
                      filterColor: const Color.fromRGBO(196, 196, 196, 0.4),
                      label: Positioned(
                        bottom: 0,
                        child: SizedBox(
                          width: 120,
                          child: ScheduleLabel(),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
