# SwiftUI-Animatable-SF-Symbols


# USAGE

Add OnOffIcons file in your project and give a try below code

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

https://user-images.githubusercontent.com/28716129/176537798-b4e978c5-7fdb-4352-93aa-c482ab2e8163.mov

