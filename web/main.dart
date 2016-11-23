// Copyright (c) 2016, kulshekhar. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/platform/browser.dart';
import 'package:angular2/router.dart';

import 'package:lazy_loading_ng2/app_component.dart';

main() {
  bootstrap(AppComponent, [
    ROUTER_PROVIDERS,
  ]);
}
