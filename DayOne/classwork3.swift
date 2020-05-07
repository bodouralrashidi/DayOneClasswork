//
//  classwork3.swift
//  DayOne
//
//  Created by Bodour Alrashidi on 5/3/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct classwork3: View {
    @State var thekr = athkar.randomElement()!
    @State var counter = "0"
    
    var body: some View {
        ZStack{
            BackgroundRamadan()
            VStack{
                Text("اذكار").modifier(athkarlayout())
                    .font(.largeTitle)
                    .padding()
                Text(thekr).modifier(athkarlayout())
                    .padding()
                Text(counter).modifier(counterlayout())
                   
                
            }}
            .onTapGesture {
                self.counter = String (Int( self.counter)! + 1)}
            .onLongPressGesture {
                self.thekr = athkar.randomElement()!
                self.counter = "0"
            }
        }}



struct athkarlayout :ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .padding()
        
    }
}

struct counterlayout :ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
                       .font(.custom("Al Tarikh", size: 60))
                       .padding(.horizontal, 50)
                       .padding(.vertical,3)
                       .padding(.bottom, -3)
                       .background(Color.init( #colorLiteral(red: 0.5489003658, green: 0.8530963063, blue: 0.7255270481, alpha: 0.25)))
                        .clipShape(Capsule())

        
    }
}















struct classwork3_Previews: PreviewProvider {
    static var previews: some View {
        classwork3()
        
    }
}
