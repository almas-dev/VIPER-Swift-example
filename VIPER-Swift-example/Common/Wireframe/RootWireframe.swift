//
// Created by Xander on 21.01.16.
// Copyright (c) 2016 handh. All rights reserved.
//

import UIKit

class RootWireframe: NSObject {

    var startWireframe: StartWireframe?

    func installRootViewControllerIntoWindow(window: UIWindow) {
        guard let startWireframe = self.startWireframe else {
            NSLog("Wrong config")
            return
        }

        startWireframe.presentStartInterface()

        let navigationController = UINavigationController(rootViewController: startWireframe.startViewController!)
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
