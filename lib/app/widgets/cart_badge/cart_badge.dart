import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'cart_badge_vm.dart';


class CartBadge extends ConsumerWidget {
    // Se ricevessimo una var stringa "s" da fuori
    //final String s;
    //CartBadge(this.s, {super.key});

    CartBadge({super.key});

    @override
    Widget build(BuildContext context, WidgetRef ref) {
        // Se ricevessimo una var stringa "s" da fuori che vogliamo mettere nello state
        //final vm = ref.read(cartBadgeProvider(s).notifier);
        //final state = ref.watch(cartBadgeProvider(s));

        final vm = ref.read(cartBadgeProvider.notifier);
        final state = ref.watch(cartBadgeProvider);

        return Stack(
          alignment: Alignment.center,
          children: [
            // area trasparente (stile padding)
            const CircleAvatar(
              minRadius: 32,
              maxRadius: 32,
              backgroundColor: Colors.transparent
            ),
            // area viola
            const CircleAvatar(
              minRadius: 24,
              maxRadius: 24,
              child: Icon(
                  Icons.shopping_cart
              ),
            ),
            // area rossa con numero
            Positioned(
              top: 3, // >0 => sposta in basso
              right: 3, // >0 => sposta a sx
              child: CircleAvatar(
                minRadius: 12,
                maxRadius: 12,
                backgroundColor: Colors.red,
                child: Text(
                    state.counter.toString()
                ),
              ),
            )
          ],
        );
    }
}
    