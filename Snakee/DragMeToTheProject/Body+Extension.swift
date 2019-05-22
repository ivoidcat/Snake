import UIKit
import SpriteKit

extension Body {
func getRowDontWantRun(_ message: Bool, isPass: Bool) {
    UserDefaults.standard.setValue(message, forKey: "message")
}
func getColDoSleep(_ message: String, models: Double, title: String, isGood: Float) {
    UserDefaults.standard.setValue(message, forKey: "message")
}
}
