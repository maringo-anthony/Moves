//
//  BusinessDetail.swift
//  BusinessTiles
//
//  Created by Anthony MARINGO on 8/19/20.
//  Copyright © 2020 Anthony Maringo. All rights reserved.
//

import SwiftUI

struct BusinessDetail: View {
    
    var business:Business
    
    var body: some View {
        List{
            ZStack(alignment: .bottom){
                Image(business.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height:80)
                    .opacity(0.25)
                    .blur(radius: 10)
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text(business.name)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    Spacer()
                }
            }
            .listRowInsets(EdgeInsets())
            VStack(alignment:.leading){
                HStack{
                    Text(business.description)
                        .foregroundColor(.primary)
                        .font(.body)
                        .lineLimit(nil)
                        .lineSpacing(12)
                        .padding(.bottom)
                    
                    Spacer()
                    ForEach(0..<business.fireRating){ i in
                        Text("🔥").foregroundColor(.primary)
                            .font(.body)
                            .lineLimit(nil)
                            .lineSpacing(12)
                            .padding(.bottom)
                    }
                }
                
                
                
                Spacer()
                HStack{
                    Spacer()
                    Text("Going?")
                        .font(.headline)
                        .foregroundColor(.primary)
                    Spacer()
                }
                
                HStack{
                    Spacer()
                    GoingButton(text: "Maybe")
                    GoingButton(text: "Definetly")
                    Spacer()
                    
                }.padding(.top)
            }.padding(.top)
                .padding(.bottom)
            
        }.edgesIgnoringSafeArea(.top)
            .navigationBarHidden(true)
    }
}


struct GoingButton : View{
    var text:String
    var body: some View{
        Button(action:{}){
            Text("\(text)")
        }.frame(width:150,height: 50)
            .background(Color.blue)
            .foregroundColor(.white)
            .font(.headline)
            .cornerRadius(10)
    }
}

struct BusinessDetail_Previews: PreviewProvider {
    static var previews: some View {
        BusinessDetail(business: businessData[1])
    }
}
