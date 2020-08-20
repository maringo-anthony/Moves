//
//  BusinessItem.swift
//  BusinessTiles
//
//  Created by Anthony MARINGO on 8/19/20.
//  Copyright © 2020 Anthony Maringo. All rights reserved.
//

import SwiftUI

struct BusinessTile: View {
    var business:Business
    
    var body: some View {
        VStack(alignment:.leading,spacing: 16.0){
            Image(business.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            
            VStack(alignment:.leading,spacing: 5.0){
                
            Text(business.name)
                .foregroundColor(.primary)
                .font(.headline)
            Text(business.description)
                .font(.subheadline)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(height:40)
            }
        }
        
    }
}

struct BusinessTile_Previews: PreviewProvider {
    static var previews: some View {
        BusinessTile(business: businessData[0])
    }
}
