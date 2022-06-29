//
//  SwiftUIExamples.swift
//  CombineApp
//
//  Created by Abdullah Kardas on 29.06.2022.
//

import SwiftUI

struct SwiftUIExamples: View {
    
    @State private var insetAmount = 0.0
  
    var body: some View {
        VStack (spacing: 45){
            HStack{
              
                OnOffIcons(imageName: "hand.raised", color: .black, isOn: true)
                OnOffIcons(imageName: "bell", color: .red, isOn: true)
                OnOffIcons(imageName: "volume", color: .orange, isOn: false)
                OnOffIcons(imageName: "wifi", color: .blue, isOn: false)
                
            }
            
            HStack{
                OnOffIcons(imageName: "eye", color: .black, isOn: true)
                OnOffIcons(imageName: "bolt.fill", color: .red, isOn: true)
                OnOffIcons(imageName: "mic", color: .orange, isOn: false)
                OnOffIcons(imageName: "video", color: .blue, isOn: false)
                
            }
            
          
        }
    }
}

struct SwiftUIExamples_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIExamples()
            //.preferredColorScheme(.dark)
    }
}



struct Pacman:Shape {
    var offsetAmount:Double
    
    var animatableData: Double {
        get{offsetAmount}
        set{offsetAmount = newValue}
    }
    
    func path(in rect: CGRect) -> Path {
        Path{path in
            path.move(to: CGPoint(x: rect.midX, y: rect.midY))
            path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 2, startAngle: Angle(degrees: offsetAmount), endAngle: Angle(degrees: 360 - offsetAmount), clockwise: false)
        }
    }
}

