//
// Created by Xander on 20.01.16.
// Copyright (c) 2016 handh. All rights reserved.
//

import Typhoon

public class ApplicationAssembly: TyphoonAssembly {

    public dynamic func appDelegate() -> AnyObject {
        return TyphoonDefinition.withClass(AppDelegate.self) {
            definition in
            definition.injectProperty("rootWireframe", with: self.rootWireframe())
        }
    }

    public dynamic func rootWireframe() -> AnyObject {
        return TyphoonDefinition.withClass(RootWireframe.self) {
            definition in
            definition.injectProperty("startWireframe", with: self.startWireframe())
        }
    }

    public dynamic func startWireframe() -> AnyObject {
        return TyphoonDefinition.withClass(StartWireframe.self)
    }
}
