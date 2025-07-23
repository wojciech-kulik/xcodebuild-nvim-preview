//
//  XcodebuildNvimPreview+UIKit.swift
//
//  Created by Wojciech Kulik on 23/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

#if canImport(UIKit)
    import UIKit

    public extension XcodebuildNvimPreview {
        static func setup(viewController controller: UIViewController) {
            setup(view: controller.view)
        }

        static func setup(view: UIView) {
            if isInPreview { view.snapshot() }
        }
    }
#endif
