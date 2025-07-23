//
//  XcodebuildNvimPreview+AppKit.swift
//
//  Created by Wojciech Kulik on 23/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

#if canImport(AppKit)
    import AppKit

    public extension XcodebuildNvimPreview {
        static func setup(viewController controller: NSViewController) {
            setup(view: controller.view)
        }

        static func setup(view: NSView) {
            if isInPreview { view.snapshot() }
        }
    }
#endif
