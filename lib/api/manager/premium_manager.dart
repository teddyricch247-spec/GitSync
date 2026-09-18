import 'dart:async';
import 'package:flutter/foundation.dart';

enum GhSponsorCheck { sponsor, notSponsor, notLinked, tokenRejected, unreachable }

class PremiumManager {
  final ValueNotifier<bool?> hasPremiumNotifier = ValueNotifier(true);

  Future<void> init() async {
    hasPremiumNotifier.value = true;
  }

  Future<GhSponsorCheck> updateGitHubSponsorPremium() async {
    hasPremiumNotifier.value = true;
    return GhSponsorCheck.sponsor;
  }

  Future<bool> cullNonPremium() async {
    return false;
  }

  void dispose() async {
    hasPremiumNotifier.dispose();
  }
}
