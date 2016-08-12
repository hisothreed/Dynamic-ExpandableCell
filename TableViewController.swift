//
//  TableViewController.swift
//  Expandable-Cells
//
//  Created by Hiso3D on 8/12/16.
//  Copyright © 2016 Hiso3D. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    // HERE IS A VAR TRACKING THE SELECTED CELL INDEXPATH
    var selectedRow : NSIndexPath?
    
    
    struct cellStuff {
        var name: String!
        var descr: String!
    }

    var arrayOfData = [cellStuff]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrayOfData.append(cellStuff(name: "Hiso", descr: "this is cell one hello there i'm expandable and self sizing cell thats cool right ? this is cell one hello there i'm expandable and self sizing cell thats cool right ? this is cell one hello there i'm expandable and self sizing cell thats cool right ? this is cell one hello there i'm expandable and self sizing cell thats cool right ? this is cell one hello there i'm expandable and self sizing cell thats cool right ?"))
        arrayOfData.append(cellStuff(name: "Hiso again", descr: "this is cell two hello there i'm just like cell 1"))
        arrayOfData.append(cellStuff(name: "Not Hiso haha", descr: "this is cell two hello there i'm just like cell 2 but i'm just bit taller cause i love to speak alot so forgive me LoL :P"))
        
        
        
        /// should use this for making your tableView to AutoResize later
        
        tableView.estimatedRowHeight = 60.0
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayOfData.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! ExpandableTableViewCell
        
        
        cell.desc.hidden = true
        cell.desc.text = arrayOfData[indexPath.row].descr
        cell.name.text = arrayOfData[indexPath.row].name
        cell.selectionStyle = UITableViewCellSelectionStyle.None
        
        return cell
    }
   

    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
       let cell = tableView.cellForRowAtIndexPath(indexPath) as! ExpandableTableViewCell
        
        if selectedRow == nil {
        
            selectedRow = indexPath
            cell.desc.hidden = false
            
        }else if selectedRow != nil && indexPath != selectedRow {
            
            selectedRow = indexPath
            cell.desc.hidden = false
            
        }else if indexPath == selectedRow {
        
            selectedRow = nil
           cell.desc.hidden = true
            
        }
        
        tableView.beginUpdates()
        tableView.endUpdates()
        
        
    }
    
    override func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
      
        let cell = tableView.cellForRowAtIndexPath(indexPath) as! ExpandableTableViewCell
        cell.desc.hidden = true
        
        
    }
   
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath == selectedRow {
            
           return UITableViewAutomaticDimension

            
        }else{
        
            return 60.0
            
        }
    }
    
    
   }
