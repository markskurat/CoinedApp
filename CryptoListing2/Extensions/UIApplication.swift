//
//  UIApplication.swift
//  CryptoListing2
//
//  Created by Mark Skurat on 5/5/22.
//

import Foundation
import SwiftUI

// DISMISSES KEYBOARD AFTER CLICKING XMARK

extension UIApplication {
    func endEdditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
