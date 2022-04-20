//
//  VideoListVC.swift
//  VideosList
//
//  Created by admin on 20/04/22.
//

import UIKit

class VideoListVC: UIViewController {
    var videos:[Video] = []
    
    @IBOutlet weak var videoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
   videos = createArray()
//        videoTableView.delegate = self
//        videoTableView.dataSource = self
    }
    func createArray() -> [Video] {
        var tempVideos: [Video] = []
        let vdo1 = Video(image: UIImage.init(imageLiteralResourceName: "beginner-first-app.png") , title: "this is starting app ")
        let vdo2 = Video(image:UIImage.init(imageLiteralResourceName: "dev-setup.png"), title: "this video contain setup")
        let vdo3 = Video(image: UIImage.init(imageLiteralResourceName: "int-overview.png"), title: "overview")
        let vdo4 = Video(image: UIImage.init(imageLiteralResourceName: "ss-delegates.png"), title: "delegate")
        let vdo5 = Video(image: UIImage.init(imageLiteralResourceName: "ss-uipickerview-card"), title: "ui picker view")
//        let vdo6 =
        tempVideos.append(vdo1)
        tempVideos.append(vdo2)
        tempVideos.append(vdo3)
        tempVideos.append(vdo4)
        tempVideos.append(vdo5)
//        tempVideos.append(vdo1)
    return tempVideos
    }
}
extension VideoListVC: UITableViewDelegate,UITableViewDataSource{
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return videos.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let vdo = videos[indexPath.row]
    let cell =  tableView.dequeueReusableCell(withIdentifier: "videoCell") as! VideoCell
    cell.setVideo(video: vdo)
    
    
    return cell
    
}
    
}

