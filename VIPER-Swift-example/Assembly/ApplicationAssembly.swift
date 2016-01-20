//
// Created by Xander on 20.01.16.
// Copyright (c) 2016 handh. All rights reserved.
//

import Typhoon

public class ApplicationAssembly: TyphoonAssembly {

    public dynamic func appDelegate() -> AnyObject {
        return TyphoonDefinition.withClass(AppDelegate.self) {
            (definition) in

            definition.injectProperty("rootViewController", with: self.rootViewController())
        }
    }

    public dynamic func rootViewController() -> AnyObject {
        return TyphoonDefinition.withClass(ViewController.self)
    }
}
