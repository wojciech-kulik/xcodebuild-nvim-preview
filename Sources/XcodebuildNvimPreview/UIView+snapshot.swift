//
//  UIView+snapshot.swift
//
//  Created by Wojciech Kulik on 23/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

#if canImport(UIKit)
    import UIKit

    extension UIView {
        func snapshot() {
            let targetSize = sizeThatFits(UIScreen.main.bounds.size)
            let bounds = CGRect(origin: .zero, size: targetSize)
            self.bounds = bounds

            let renderer = UIGraphicsImageRenderer(size: targetSize)
            let image = renderer.image { _ in
                drawHierarchy(in: bounds, afterScreenUpdates: true)
            }

            let name = Bundle.main.executableURL.flatMap { "\($0.lastPathComponent).png" } ?? "snapshot.png"
            let url = URL(fileURLWithPath: "/tmp/xcodebuild.nvim/\(name)")

            try? image.pngData()?.write(to: url)
        }
    }
#endif
