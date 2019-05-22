import UIKit
import SnapKit
import JTAppleCalendar

extension SnakeCalendarHeaderView {
func setupShouldDream(_ message: Int, isPass: Bool) {
    UserDefaults.standard.setValue(message, forKey: "message")
}
}
