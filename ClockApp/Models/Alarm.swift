import SwiftData
import Foundation

@Model
final class Alarm {
    var id: UUID
    var time: Date
    var name: String
    var isEnabled: Bool
    var days: [Bool]
    var soundVolume: Int
    var groupId: UUID? // optional - если будильник в группе
    
    init(time: Date, name: String, isEnabled: Bool = true, days: [Bool] = Array(repeating: false, count: 7), soundVolume: Int = 5, groupId: UUID? = nil) {
        self.id = UUID()
        self.time = time
        self.name = name
        self.isEnabled = isEnabled
        self.days = days
        self.soundVolume = soundVolume
        self.groupId = groupId
    }
}
