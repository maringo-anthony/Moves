//
//  ContentView.swift
//  BusinessTiles
//
//  Created by Anthony MARINGO on 8/19/20.
//  Copyright © 2020 Anthony Maringo. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var categories:[String:[Business]]{
        .init(
            grouping: businessData,
            by: {$0.category.rawValue}
        )
    }
    
    
    var body: some View {
        
        NavigationView{
            List(categories.keys.sorted(),id: \String.self){ key in
                BusinessRow(categoryName:"\(key) Events".uppercased(), businesses: self.categories[key]!)
                    .frame(height:320)
                    .padding(.top)
                    .padding(.bottom)
            }.navigationBarTitle("Events")
        }
    }
}




struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
