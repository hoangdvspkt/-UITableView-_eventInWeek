//
//  EventTableViewController.swift
//  ManagementEvent
//
//  Created by hoangdv on 4/27/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class EventTableViewController: UITableViewController {
    
    lazy var eventLines: [EventLine] = {
        
        //createEventArray
        return EventLine.eventLines()
        
    }()
    
    
    // addHeader
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let eventLine = eventLines[section]
        return eventLine.name
        
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        //createEditButton
        navigationItem.rightBarButtonItem = editButtonItem
        
    }
    
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return eventLines.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let eventLine = eventLines[section]
        //returnEventCountInEverySection
        return eventLine.events.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as! EventTableViewCell
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        
        cell.configureCellWith(event: event)
        
        return cell
        
    }
    
    
    //editEvent
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.delete){
            
            let eventLine = eventLines[indexPath.section]
            eventLine.events.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableViewRowAnimation.automatic)
            
        }
        
    }
    
    
    //sortEvent
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let eventLine = eventLines[sourceIndexPath.section]
        let event = eventLine.events[sourceIndexPath.row]
        eventLine.events.remove(at: sourceIndexPath.row)
        
        let evenLineDes = eventLines[destinationIndexPath.section]
        evenLineDes.events.insert(event, at: destinationIndexPath.row)
        
    }
    
    
    //showDetail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let identifier = segue.identifier {
            
            switch identifier {
                
            case "Show Detail":
                let eventDetailVC = segue.destination as! EventDetailViewController
                if let indexPath = self.tableView.indexPath(for: sender as! UITableViewCell) {
                    
                    eventDetailVC.event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
                    eventDetailVC.dateEvent = dateAtIndexPath(indexPath: indexPath as NSIndexPath)
                    
                }
                
            default: break
                
            }
            
        }
        
    }
    
    
    //makeEvent
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event{
        
        let eventLine = eventLines[indexPath.section]
        return eventLine.events[indexPath.row]
        
    }
    
    
    //showDate
    func dateAtIndexPath(indexPath: NSIndexPath) -> String{
        
        let eventLine = eventLines[indexPath.section]
        return eventLine.dates
        
    }
    
}
