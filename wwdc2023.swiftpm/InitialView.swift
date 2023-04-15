//
//  InitialView.swift
//  wwdc2023
//
//  Created by 이성민 on 2023/04/15.
//

import SwiftUI

struct InitialView: View {
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            HStack {
                Spacer()
                    .frame(width: 160)
                VStack(alignment: .leading) {
                    Text("test")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    Spacer()
                        .frame(height: 40)
                    Text(
                        """
                        testefajeoi;fjaowejf;oajwf;ojawfeiojfjeijfiwjfi
                        test
                        test
                        test
                        test
                        test
                        test
                        test
                        """
                    )
                    .font(.body)
                    .foregroundColor(.white)
                    .frame(alignment: .leading)
                } // VStack
                Spacer()
                Image("DiabeticRetinopathy")
                    .frame(width: 360, height:480)
                    .clipped()
                    .cornerRadius(20)
                Spacer()
                    .frame(width: 160)
            } // HStack
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Button("Next") {
                        print("test")
                    }
                    .padding([.horizontal], 20)
                    .padding([.vertical], 10)
                    .foregroundColor(.white)
                    .background(.orange)
                    .cornerRadius(50)
                    Spacer()
                        .frame(width: 160)
                } // HStack
                Spacer()
                    .frame(height: 100)
            } // VStack
        } // ZStack
    }
}

struct InitialView_Previews: PreviewProvider {
    static var previews: some View {
        InitialView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
