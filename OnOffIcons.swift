//
//  OnOffIcons.swift
//  CombineApp
//
//  Created by Abdullah Kardas on 29.06.2022.
//

import SwiftUI

struct OnOffIcons: View {
    
    
    var imageName:String = "bell"
    var color:Color = Color.red
    @State var insetAmount:Double
    var isOn:Bool
    
    init(imageName: String, color: Color,isOn:Bool) {
        self.imageName = imageName
        self.color = color
        
        self.isOn = isOn
        self.insetAmount = self.isOn ? 34.0 : 0.0
        
    }
    
    var body: some View {
        ZStack{
            Image(systemName: imageName).font(.title).foregroundColor(color)
            DiognalLine(insetAmount: insetAmount)

                .stroke(color.opacity(0.8),style: StrokeStyle(lineWidth: 3, lineCap: .round, lineJoin: .round))
                .frame(width: 24, height: 24).glow(glowColor: .white)
        }.onTapGesture {
            withAnimation(.easeInOut(duration: 0.3)) {
                insetAmount = insetAmount == 0 ? 34 : 0

            }
        }
    }
}

struct OnOffIcons_Previews: PreviewProvider {
    static var previews: some View {
        OnOffIcons(imageName: "bell", color: .blue, isOn: false)
    }
}


struct DiognalLine: Shape {
  
    var insetAmount:Double
    
    var animatableData: Double {
        get { insetAmount }
        set { insetAmount = newValue }
    }

    func path(in rect: CGRect) -> Path {
        
        
       Path{path in
            path.move(to: CGPoint(x: rect.minX, y: rect.minY))
           if insetAmount < rect.maxY {
               path.addLine(to: CGPoint(x: rect.maxX - insetAmount, y: rect.maxY - insetAmount))
           }
           
        }
     
        
     

   }
}
extension View {
    func glow(glowColor:Color,opac:CGFloat) -> some View{
        var opac1 = opac
       return self.shadow(color: glowColor, radius: 8)
            .shadow(color: glowColor.opacity(0.8), radius: 16)
            .shadow(color: glowColor.opacity(opac1), radius: 24).animation(.linear(duration: 0.8).repeatForever(), value: opac1).onAppear {
                opac1 = 0.8
            }
    }
    
    func glow(glowColor:Color) -> some View{
        self.shadow(color: glowColor, radius: 1)
            .shadow(color: glowColor, radius: 1)
            .shadow(color: glowColor, radius: 1)
            .shadow(color: glowColor, radius: 1)
          
    }
}
