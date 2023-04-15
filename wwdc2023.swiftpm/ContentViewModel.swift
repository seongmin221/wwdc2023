//
//  ContentViewModel.swift
//  wwdc2023
//
//  Created by 이성민 on 2023/04/15.
//

import CoreImage

class ContentViewModel: ObservableObject {
    
    @Published var frame: CGImage?
    
    private let frameManager = FrameManager.shared
    
    init() {
        setupSubscriptions()
    }
    
    private func setupSubscriptions() {
        frameManager.$current
            .receive(on: RunLoop.main)
            .compactMap { buffer in
                return CGImage.create(from)
            }
    }
}
