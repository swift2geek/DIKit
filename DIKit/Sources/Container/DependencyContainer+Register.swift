//
//  DependencyContainer+Register.swift
//  DIKit
//
//  Created by Ben John on 01.02.18.
//  Copyright © 2018 Ben John. All rights reserved.
//

import Foundation

extension DependencyContainer {
    public func register<T>(as scope: Scope = .prototype, _ factory: @escaping () -> T) {
        precondition(!bootstrapped, "After boostrap no more components can be registered.")
        let component = Component(scope: scope, type: T.self, factory: factory)
        self.componentStack[component.tag] = component
    }
}
