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
            Text(label)
                .font(.system(.headline, weight: .semibold))
                .frame(width: 90, height: 90, alignment: .center)
                .aspectRatio(1, contentMode: .fit)
                .padding()
                .overlay(
                    Circle()
                        .stroke(Color.black)
                        .padding(6)
                )
        }
    }
}

struct UserPickerView: View {
    var optionList: [String]

    var body: some View {
        HStack {
            ForEach(optionList, id: \.self) { option in
                UserPickerItem(label: option)
            }
        }
    }
}

struct UserPickerView_Previews: PreviewProvider {
    static var previews: some View {
        UserPickerView(optionList: ["item 1", "item 2", "item 3"])
    }
}
