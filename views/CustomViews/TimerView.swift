//
//  TimerView.swift
//  views
//
//  Created by Vincio on 7/17/21.
//

import SwiftUI

struct TimerView: View {
    @State private var timerDone = false
    @State private var timeRemaining = 30
    let timer = Timer.publish(every: 1, on: .main, in: .common) //a publisher type
        .autoconnect()
    var body: some View {
        Text("\(timeRemaining)")

            .font(.system(size: 50, design: .rounded)).foregroundColor(timeRemaining > 5 ? .black : .red)

            .onReceive(timer, perform: { _ in // countdown
                if self.timeRemaining > 0 {
                    self.timeRemaining -= 1 //stops at zero
                } else {timerDone = true}
            })
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TimerView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.light)
            TimerView()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
        }
    }
}
