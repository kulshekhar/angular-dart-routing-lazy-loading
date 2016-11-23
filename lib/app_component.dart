// Copyright (c) 2016, kulshekhar. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';
import 'package:angular2/router.dart';
import 'package:lazy_loading_ng2/home.dart';
import 'package:lazy_loading_ng2/mycomponent1.dart';
import 'package:lazy_loading_ng2/mycomponent2.dart' deferred as c2;

@Component(
  selector: 'my-app',
  styleUrls: const ['app_component.css'],
  templateUrl: 'app_component.html',
  directives: const [ROUTER_DIRECTIVES],
)
@RouteConfig(const [
  const Route(
    path: '/',
    name: 'Home',
    component: HomeComponent,
  ),
  const Route(
    path: '/c1',
    name: 'C1',
    component: C1Component,
  ),
])
class AppComponent {
  final Router _r;

  bool lazyLoaded = false;

  AppComponent(this._r);

  /// To automatically load a component place this code in `ngOnInit`. That will
  /// decrease the initial payload and response time.
  loadC2() async {
    await c2.loadLibrary();
    _r.config([new Route(path: '/c2', name: 'C2', component: c2.C2Component)]);
    lazyLoaded = true;
  }
}
