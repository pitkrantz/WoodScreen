//
//  TestView.swift
//  WoodScreen
//
//  Created by Pit Krantz on 03/07/2022.
//

import SwiftUI

struct TestView: View {
    let spacing: CGFloat = 5
    var body: some View {
        let columns = Array(repeating: GridItem(.flexible(minimum: 100, maximum: 100), spacing: spacing), count: 3)
        
        LazyVGrid(columns: columns, spacing: spacing){
            ForEach(0..<9){ _ in
                PixelView()
                
            }
            
            HStack {
                Spacer()
                Button {
                    print("Hello")
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 150, height: 50, alignment: .center)
            }
                Spacer()
            }

        }
    }
}

struct PixelView: View{
    @State var status: Bool = false
    var body: some View{
        Button {
            status.toggle()
        } label: {
            if(status){
                Color.black
                    .frame(height: 100)
            }
            else{
                Color.gray
                    .frame(height: 100)
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
