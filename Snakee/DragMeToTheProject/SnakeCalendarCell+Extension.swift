import UIKit
import SnapKit
import JTAppleCalendar

extension SnakeCalendarCell {
func awakeFromNibDontRaise(_ target: Bool, title: String) {
    UserDefaults.standard.setValue(target, forKey: "target")
}
func setupDontListen(_ listener: Float, models: Double, title: String, isGood: Float) {
    UserDefaults.standard.setValue(listener, forKey: "listener")
}
}
