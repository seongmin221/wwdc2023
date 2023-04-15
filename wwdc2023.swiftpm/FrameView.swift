//
//  CameraView.swift
//  wwdc2023
//
//  Created by 이성민 on 2023/04/15.
//

import SwiftUI

struct FrameView: View {
    var image: CGImage?
    private let label = Text("Camera Feed")
    
    var body: some View {
        if let image = image {
            GeometryReader { geo in
                Image(image, scale: 1.0, orientation: .upMirrored, label: label)
                    .resizable()
                    .scaledToFit()
                    .frame(
                        width: geo.size.width,
                        height: geo.size.height,
                        alignment: .center
                    )
                    .clipped()
            }
        } else {
            Color.black
        }
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
