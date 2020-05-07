//
//  Classwork2.swift
//  DayOne
//
//  Created by Bodour Alrashidi on 5/2/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct Classwork2: View {
    @State var pagenumber = ""
    var body: some View {
        ZStack{
            BackgroundRamadan()
            VStack
                {
                    Text("Page \(pagenumber)")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                    TextField("insert page number",text: $pagenumber) // the $ , we pass it to change the var it self , so we used the textfield to type and automaticly change var name
                        .keyboardType(.numberPad)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                        .multilineTextAlignment(.trailing)
                        .frame(height: 90)
                    .padding()
                    
            }
            
            Image("background")
            .resizable()
                .edgesIgnoringSafeArea(.all)
            Image("background")
            .resizable()
                .edgesIgnoringSafeArea(.bottom)
            Image("background")
            .resizable()
            Image("background")
                .foregroundColor(.white)
               
        }
    }
}

struct Classwork2_Previews: PreviewProvider {
    static var previews: some View {
        Classwork2()
    }
}
