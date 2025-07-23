//
//  XcodebuildNvimPreview.swift
//
//  Created by Wojciech Kulik on 23/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

import Foundation

public enum XcodebuildNvimPreview {
    static let isInPreview = ProcessInfo.processInfo.arguments.contains("--xcodebuild-nvim-snapshot")
}
