//
//  FriendsListViewController.swift
//  FreeUse
//
//  Created by 방문사용자 on 2018. 1. 19..
//  Copyright © 2018년 ku. All rights reserved.
//

import UIKit

class FriendsListViewController: UITableViewController {

    
    
    
    var data: [String] = ["Miriam", "Jeongmin", "Jaeyoung", "Terry"].sorted{$0<$1}
    var data1: [String] = ["Miriam1", "Jeongmin1", "Jaeyoung1", "Terry1"].sorted{$0<$1}
    var data2: [String] = ["Miriam2", "Jeongmin2", "Jaeyoung2", "Terry2"].sorted{$0<$1}
    
    enum Datasource {
        case data, data1,data2
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  
        if section == 0 {
            return data.count
        }
        else if section == 1 {
            return data1.count
        }
        else if section == 2 {
            return data2.count
        }
        /*
        
        let v = Datasource.data1
        
       switch v {
            case .data :
                return data.count
            case .data1 :
                return data1.count
            case .data2 :
                return data2.count
        }
        

        var Data123:[[String]] = [data, data1, data2]
        
        
        for i in 0..<3 {
           return Int(Data123[i].count)
        }
         */
        
        print ("\(section)")
        return data.count
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "My friends"
    }
    
    override func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "친구들 수: \(data.count)"
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellcell", for: indexPath)
   //     data = data.sorted{$0<$1}
        
        if indexPath.section == 0 {
            cell.textLabel?.text = data[indexPath.row]
        }
        else if indexPath.section == 1 {
            cell.textLabel?.text = data1[indexPath.row]
        }
        else if indexPath.section == 2 {
            cell.textLabel?.text = data2[indexPath.row]
        }
        //cell.textLabel?.text = data[indexPath.row]

        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
