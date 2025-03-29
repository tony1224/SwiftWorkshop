//
//  ScreenProviderProtocol.swift
//  SwiftWorkshop
//
//  Created by Jun Morita on 2025/03/30.
//

import UIKit

public protocol ScreenProviderProtocol {
    associatedtype ScreenType
    func make(_ screenType: ScreenType) -> UIViewController
}

public class ScreenProvider<T>: ScreenProviderProtocol {
    public init() {}

    open func make(_ screenType: T) -> UIViewController {
        fatalError("Subclasses should implement `make`")
    }
}
