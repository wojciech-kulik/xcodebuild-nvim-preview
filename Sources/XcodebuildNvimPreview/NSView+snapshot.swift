//
//  NSView+snapshot.swift
//
//  Created by Wojciech Kulik on 23/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

#if canImport(AppKit)
    import AppKit

    extension NSView {
        func snapshot() {
            let scale = NSScreen.main?.backingScaleFactor ?? 1
            let targetSize = fittingSize
            let bounds = CGRect(origin: .zero, size: targetSize)

            frame = bounds

            let bitmapRep = NSBitmapImageRep(
                bitmapDataPlanes: nil,
                pixelsWide: Int(targetSize.width * scale),
                pixelsHigh: Int(targetSize.height * scale),
                bitsPerSample: 16,
                samplesPerPixel: 4,
                hasAlpha: true,
                isPlanar: false,
                colorSpaceName: .deviceRGB,
                bytesPerRow: 0,
                bitsPerPixel: 0
            )!

            bitmapRep.size = targetSize
            cacheDisplay(in: bounds, to: bitmapRep)

            let image = NSImage(size: targetSize)
            image.addRepresentation(bitmapRep)

            let pngData = bitmapRep.representation(using: .png, properties: [.compressionFactor: 1.0])
            let name = Bundle.main.executableURL.flatMap { "\($0.lastPathComponent).png" } ?? "snapshot.png"
            let url = URL(fileURLWithPath: "/tmp/xcodebuild.nvim/\(name)")

            try? pngData?.write(to: url)
        }
    }
#endif
