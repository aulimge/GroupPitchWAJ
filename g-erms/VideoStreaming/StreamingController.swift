//
//  StreamingController.swift
//  g-erms
//
//  Created by Jae Kee Li on 10/5/17.
//  Copyright © 2017 Audrey Lim. All rights reserved.
//

import UIKit

class StreamingController: UIViewController {

    @IBOutlet weak var streamingTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        streamingTableView.dataSource = self
//        streamingTableView.delegate = self


    }

}

extension StreamingController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = streamingTableView.dequeueReusableCell(withIdentifier: "playingVideoCell", for: indexPath) as? StreamingTableViewCell  else { return UITableViewCell() }
        
        return cell
    }
}