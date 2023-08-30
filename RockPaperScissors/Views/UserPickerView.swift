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
        Text(label)
            .font(.system(.headline, weight: .semibold))
            .frame(width: 150, height: 150)
            .border(.black)
    }
}

struct UserPickerView: View {
    var body: some View {
        HStack {
            ForEach(0 ... 3, id: \.self) { _ in
                UserPickerItem(label: "object")
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct UserPickerView_Previews: PreviewProvider {
    static var previews: some View {
        UserPickerView()
    }
}
