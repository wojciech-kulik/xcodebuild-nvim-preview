//
//  HotReload.swift
//
//  Created by Wojciech Kulik on 25/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

import Combine
import Foundation

public func observeHotReload() -> AnyPublisher<Void, Never> {
    NotificationCenter.default
        .publisher(for: .init("INJECTION_BUNDLE_NOTIFICATION"))
        .map { _ in }
        .eraseToAnyPublisher()
}
