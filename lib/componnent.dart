import 'package:flutter/material.dart';
import 'package:pet_task/model.dart';

class ListItemHome extends StatelessWidget {
  final Pet pett;

  const ListItemHome({
    Key? key,
    required this.pett,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: Container(
        height: 120,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Image.network(
                pett.pic,
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                  width: 100,
                  child: Column(
                    children: [
                      const SizedBox(height: 8.0),
                      Text(
                        pett.petType,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        pett.name,
                        style: Theme.of(context).textTheme.caption!.copyWith(
                            fontWeight: FontWeight.w400, color: Colors.grey),
                      ),
                      const SizedBox(height: 6.0),
                      Text(
                        'PetLove:${pett.petLoveCount}',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
