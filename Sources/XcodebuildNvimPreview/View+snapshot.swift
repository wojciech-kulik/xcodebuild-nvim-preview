//
//  View+snapshot.swift
//
//  Created by Wojciech Kulik on 23/02/2025.
//  Copyright © 2025 Wojciech Kulik. All rights reserved.
//

#if canImport(SwiftUI)
    import SwiftUI

    #if canImport(UIKit)
        extension View {
            func snapshot() {
                UIHostingController(rootView: self).view.snapshot()
            }
        }
    #endif

    #if canImport(AppKit)
        extension View {
            func snapshot() {
                NSHostingView(rootView: self).snapshot()
            }
        }
    #endif
#endif
