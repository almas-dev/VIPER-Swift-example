//
// Created by Xander on 20.01.16.
// Copyright (c) 2016 handh. All rights reserved.
//

import Foundation

class StartWireframe: NSObject {

    var startViewController : StartViewController?

    func presentStartInterface() {
        let viewController = StartViewController()

        startViewController = viewController
    }
}
