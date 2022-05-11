//
//  HapticManager.swift
//  CryptoListing2
//
//  Created by Mark Skurat on 5/9/22.
//

import Foundation
import UIKit

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
