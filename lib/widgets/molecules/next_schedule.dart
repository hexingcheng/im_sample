import 'package:flutter/material.dart';
import 'package:onlylive/theme/theme.dart';
import 'package:onlylive/view/talent/vm/talent_detail_vm.dart';
import 'package:provider/provider.dart';

class NextSchedule extends StatelessWidget {
  const NextSchedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TalentDetailVM>(
        create: (context) => TalentDetailVM(),
        builder: (context, child) {
          final vm = context.watch<TalentDetailVM>();
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5),
                width: 89,
                height: 29,
                decoration: BoxDecoration(
                  color: OnlyliveColor.purple,
                  border: Border.all(color: OnlyliveColor.lightPurple),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(200),
                      bottomRight: Radius.circular(200)),
                ),
                child: Text(
                  vm.eventDate,
                  style: const TextStyle(
                    color: OnlyliveColor.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const SizedBox(width: 20),
                  Container(
                    child: Text(
                      vm.startTime,
                      style: const TextStyle(
                        color: OnlyliveColor.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(width: 23),
                  Container(
                    child: Text(
                      "${vm.secondsPerReservation}人限定",
                      style: const TextStyle(
                        color: OnlyliveColor.grey,
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              )
            ],
          );
        });
  }
}
