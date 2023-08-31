//
//  UserPickerView.swift
//  RockPaperScissors
//
//  Created by Maraj Hossain on 8/30/23.
//

import SwiftUI

struct UserPickerItem: View {
    var label: String

    var body: some View {
        Button {} label: {
            Text("🪨")
                .font(.system(.headline, weight: .semibold))
                .padding(25)
                .border(.black)
        }
    }
}

struct UserPickerView: View {
    var body: some View {
        HStack {
            ForEach(0 ... 2, id: \.self) { _ in
                UserPickerItem(label: "object")
            }
            .padding()
        }
    }
}

struct UserPickerView_Previews: PreviewProvider {
    static var previews: some View {
        UserPickerView()
    }
}
