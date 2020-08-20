//
//  BusinessRow.swift
//  BusinessTiles
//
//  Created by Anthony MARINGO on 8/19/20.
//  Copyright © 2020 Anthony Maringo. All rights reserved.
//

import SwiftUI

struct BusinessRow: View {
    var categoryName:String
    var businesses:[Business]
    
    
    var body: some View {
        VStack(alignment:.leading){
            
            Text(self.categoryName)
                .font(.title)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack(alignment:.top){
                    ForEach(self.businesses,id: \.name){ business in
                        
                        NavigationLink(destination: BusinessDetail(business: business)){
                            BusinessTile(business: business)
                                .frame(width:300)
                                .padding(.trailing,30)
                        }
                        
                        
                    }
                }
                
            }
        }
    }
}

struct BusinessRow_Previews: PreviewProvider {
    static var previews: some View {
        BusinessRow(categoryName: "Business", businesses: businessData)
    }
}
