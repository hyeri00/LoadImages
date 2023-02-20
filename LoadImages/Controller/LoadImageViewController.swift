//
//  LoadImageViewController.swift
//  LoadImages
//
//  Created by 혜리 on 2023/02/20.
//

import UIKit

class LoadImageViewController: UIViewController {
    
    private let loadImagesView = LoadImagesView()
    
    override func loadView() {
        view = loadImagesView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        addTarget()
    }
    
    func addTarget() {
        loadImagesView.firstLoadButton.addTarget(self, action: #selector(firstLoadButtonTapped), for: .touchUpInside)
        loadImagesView.secondLoadButton.addTarget(self, action: #selector(secondLoadButtonTapped), for: .touchUpInside)
        loadImagesView.thirdLoadButton.addTarget(self, action: #selector(thirdLoadButtonTapped), for: .touchUpInside)
        loadImagesView.fourthLoadButton.addTarget(self, action: #selector(fourthLoadButtonTapped), for: .touchUpInside)
        loadImagesView.fifthLoadButton.addTarget(self, action: #selector(fifthLoadButtonTapped), for: .touchUpInside)
        loadImagesView.loadAllButton.addTarget(self, action: #selector(loadAllButtonTapped), for: .touchUpInside)
    }
    
    @objc func firstLoadButtonTapped() {
        let url = URL(string: "https://pds.joongang.co.kr//news/component/htmlphoto_mmdata/201807/04/fbc64469-49c5-42a2-9491-6d2e36f8288e.jpg")
        loadImagesView.firstImageView.load(url: url!)
    }
    
    @objc func secondLoadButtonTapped() {
        let url = URL(string: "https://lh3.googleusercontent.com/KbpUls7uruOP4CtPOTd2jfT18X1gKuhiVAibqV7e-7cRYL2QbvQmfVtdNk7nrj_W_CQ3SdHguR4auMD-KkZYkQ127pIrsZAH5HFCxB2wwWTnPyJoPDNQLQ=w800")
        loadImagesView.secondImageView.load(url: url!)
    }
    
    @objc func thirdLoadButtonTapped() {
        let url = URL(string: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA12TPAb.img?h=0&w=600&m=6&q=60&u=t&o=f&l=f")
        loadImagesView.thirdImageView.load(url: url!)
    }
    
    @objc func fourthLoadButtonTapped() {
        let url = URL(string: "https://post-phinf.pstatic.net/MjAxOTEwMThfMTgx/MDAxNTcxMzk0OTk4MDQw.Wass8TXh8g1aCjJSYaZmzqYYAJYE7LP5LauXGBRPekIg.RKsKSQvW_cx44AiZE_LLONEwG3-eW7SYOJ8fW_Ipu1kg.JPEG/3.jpg?type=w1200")
        loadImagesView.fourthImageView.load(url: url!)
    }
    
    @objc func fifthLoadButtonTapped() {
        let url = URL(string: "https://www.sisajournal.com/news/photo/202212/252077_166121_2211.jpg")
        loadImagesView.fifthImageView.load(url: url!)
    }
    
    @objc func loadAllButtonTapped() {
        let firstUrl = URL(string: "https://pds.joongang.co.kr//news/component/htmlphoto_mmdata/201807/04/fbc64469-49c5-42a2-9491-6d2e36f8288e.jpg")
        loadImagesView.firstImageView.load(url: firstUrl!)
        
        let secondUrl = URL(string: "https://lh3.googleusercontent.com/KbpUls7uruOP4CtPOTd2jfT18X1gKuhiVAibqV7e-7cRYL2QbvQmfVtdNk7nrj_W_CQ3SdHguR4auMD-KkZYkQ127pIrsZAH5HFCxB2wwWTnPyJoPDNQLQ=w800")
        loadImagesView.secondImageView.load(url: secondUrl!)
        
        let thirdUrl = URL(string: "https://img-s-msn-com.akamaized.net/tenant/amp/entityid/AA12TPAb.img?h=0&w=600&m=6&q=60&u=t&o=f&l=f")
        loadImagesView.thirdImageView.load(url: thirdUrl!)
        
        let fourthUrl = URL(string: "https://post-phinf.pstatic.net/MjAxOTEwMThfMTgx/MDAxNTcxMzk0OTk4MDQw.Wass8TXh8g1aCjJSYaZmzqYYAJYE7LP5LauXGBRPekIg.RKsKSQvW_cx44AiZE_LLONEwG3-eW7SYOJ8fW_Ipu1kg.JPEG/3.jpg?type=w1200")
        loadImagesView.fourthImageView.load(url: fourthUrl!)
        
        let fifthUrl = URL(string: "https://www.sisajournal.com/news/photo/202212/252077_166121_2211.jpg")
        loadImagesView.fifthImageView.load(url: fifthUrl!)
    }
}


extension UIImageView {
    func load(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
