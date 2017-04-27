//
//  EventLine.swift
//  ManagementEvents
//
//  Created by hoangdv on 4/27/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import Foundation

class EventLine {
    
    var name: String
    var events: [Event]
    var dates: String
    
    init(named: String, includeEvents: [Event], date: String) {
        
        name = named
        events = includeEvents
        dates = date
        
    }
    
    
    class func eventLines() -> [EventLine] {
        
        return [self.Sunday(), self.Monday(), self.Tuesday(), self.Wednesday(), self.Thursday(), self.Friday(), self.Saturday()]
        
    }
    
    
    private class func Sunday() -> EventLine {
        
        var events = [Event]()
        
        events.append(Event(titled: "06h00-07h00", details: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(titled: "07h00-10h30", details: "Học ở trường."))
        events.append(Event(titled: "10h30-10h45", details: "Về nhà."))
        events.append(Event(titled: "10h45-12h30", details: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(titled: "12h30-16h00", details: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(titled: "16h00-17h00", details: "Đi chơi."))
        events.append(Event(titled: "17h00-17h30", details: "Giải trí: Chơi guitar."))
        events.append(Event(titled: "17h30-18h30", details: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(titled: "18h30-19h00", details: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(titled: "19h00-23h30", details: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(titled: "23h30-06h00", details: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return EventLine(named: "Sunday", includeEvents: events, date: "Chủ Nhật")
        
    }
    
    
    private class func Monday() -> EventLine {
        
        var events = [Event]()
        
        events.append(Event(titled: "06h00-07h00", details: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(titled: "07h00-10h30", details: "Học ở trường."))
        events.append(Event(titled: "10h30-10h45", details: "Về nhà."))
        events.append(Event(titled: "10h45-12h30", details: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(titled: "12h30-16h00", details: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(titled: "16h00-17h00", details: "Đi chơi."))
        events.append(Event(titled: "17h00-17h30", details: "Giải trí: Chơi guitar."))
        events.append(Event(titled: "17h30-18h30", details: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(titled: "18h30-19h00", details: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(titled: "19h00-23h30", details: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(titled: "23h30-06h00", details: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return EventLine(named: "Monday", includeEvents: events, date: "Thứ Hai")
        
    }
    
    
    private class func Tuesday() -> EventLine {
        
        var events = [Event]()
        
        events.append(Event(titled: "06h00-07h00", details: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(titled: "07h00-10h30", details: "Học ở trường."))
        events.append(Event(titled: "10h30-10h45", details: "Về nhà."))
        events.append(Event(titled: "10h45-12h00", details: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(titled: "12h30-16h00", details: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(titled: "16h00-17h00", details: "Đi chơi."))
        events.append(Event(titled: "17h00-17h30", details: "Giải trí: Chơi guitar."))
        events.append(Event(titled: "17h30-18h30", details: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(titled: "18h30-19h00", details: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(titled: "19h00-23h30", details: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(titled: "23h30-06h00", details: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return EventLine(named: "Tuesday", includeEvents: events, date: "Thứ Ba")
        
    }
    
    
    private class func Wednesday() -> EventLine {
        
        var events = [Event]()
        
        events.append(Event(titled: "06h00-07h00", details: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(titled: "07h00-10h30", details: "Học ở trường."))
        events.append(Event(titled: "10h30-10h45", details: "Về nhà."))
        events.append(Event(titled: "10h45-12h30", details: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(titled: "12h30-16h00", details: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(titled: "16h00-17h00", details: "Đi chơi."))
        events.append(Event(titled: "17h00-17h30", details: "Giải trí: Chơi guitar."))
        events.append(Event(titled: "17h30-18h30", details: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(titled: "18h30-19h00", details: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(titled: "19h00-23h30", details: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(titled: "23h30-06h00", details: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return EventLine(named: "Wednesday", includeEvents: events, date: "Thứ Tư")
        
    }
    
    
    private class func Thursday() -> EventLine {
        
        var events = [Event]()
        
        events.append(Event(titled: "06h00-07h00", details: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(titled: "07h00-10h30", details: "Học ở trường."))
        events.append(Event(titled: "10h30-10h45", details: "Về nhà."))
        events.append(Event(titled: "10h45-12h30", details: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(titled: "12h30-16h00", details: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(titled: "16h00-17h00", details: "Đi chơi."))
        events.append(Event(titled: "17h00-17h30", details: "Giải trí: Chơi guitar."))
        events.append(Event(titled: "17h30-18h30", details: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(titled: "18h30-19h00", details: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(titled: "19h00-23h30", details: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(titled: "23h30-06h00", details: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        
        return EventLine(named: "Thursday", includeEvents: events, date: "Thứ Năm")
        
    }
    
    
    private class func Friday() -> EventLine {
        
        var events = [Event]()
        
        events.append(Event(titled: "06h00-07h00", details: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(titled: "07h00-10h30", details: "Học ở trường."))
        events.append(Event(titled: "10h30-10h45", details: "Về nhà."))
        events.append(Event(titled: "10h45-12h30", details: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(titled: "12h30-16h00", details: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(titled: "16h00-17h00", details: "Đi chơi."))
        events.append(Event(titled: "17h00-17h30", details: "Giải trí: Chơi guitar."))
        events.append(Event(titled: "17h30-18h30", details: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(titled: "18h30-19h00", details: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(titled: "19h00-23h30", details: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(titled: "23h30-06h00", details: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return EventLine(named: "Friday", includeEvents: events, date: "Thứ Sáu")
        
    }
    
    
    private class func Saturday() -> EventLine {
        
        var events = [Event]()
        
        events.append(Event(titled: "06h00-07h00", details: "Thức dậy sau đó vệ sinh cá nhân và ăn sáng. Đi học."))
        events.append(Event(titled: "07h00-10h30", details: "Học ở trường."))
        events.append(Event(titled: "10h30-10h45", details: "Về nhà."))
        events.append(Event(titled: "10h45-12h30", details: "Nghỉ ngơi, lướt web và ăn trưa."))
        events.append(Event(titled: "12h30-16h00", details: "Học tiếng anh. Cứ học 1 tiếng thì giải lao 5 phút"))
        events.append(Event(titled: "16h00-17h00", details: "Đi chơi."))
        events.append(Event(titled: "17h00-17h30", details: "Giải trí: Chơi guitar."))
        events.append(Event(titled: "17h30-18h30", details: "Vệ sinh cá nhân và ăn tối."))
        events.append(Event(titled: "18h30-19h00", details: "Nghỉ ngơi và nghe nhạc."))
        events.append(Event(titled: "19h00-23h30", details: "Học bài. Làm bài tập trong ngày và chuẩn bị bài mới."))
        events.append(Event(titled: "23h30-06h00", details: "Vệ sinh cá nhân sau đó đi ngủ."))
        
        return EventLine(named: "Saturday", includeEvents: events, date: "Thứ Bảy")
        
    }
    
}
