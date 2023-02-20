//
//  LoadImagesView.swift
//  LoadImages
//
//  Created by 혜리 on 2023/02/20.
//

import UIKit

class LoadImagesView: UIView {
    
    // MARK: - First

    lazy var firstImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "photo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var firstProgressView: UIProgressView = {
        let view = UIProgressView()
        view.trackTintColor = .lightGray
        view.progressTintColor = .systemBlue
        view.progress = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var firstLoadButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Load", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    // MARK: - Second

    lazy var secondImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "photo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var secondProgressView: UIProgressView = {
        let view = UIProgressView()
        view.trackTintColor = .lightGray
        view.progressTintColor = .systemBlue
        view.progress = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var secondLoadButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Load", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Third
    
    lazy var thirdImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "photo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var thirdProgressView: UIProgressView = {
        let view = UIProgressView()
        view.trackTintColor = .lightGray
        view.progressTintColor = .systemBlue
        view.progress = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var thirdLoadButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Load", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Fourth

    lazy var fourthImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "photo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var fourthProgressView: UIProgressView = {
        let view = UIProgressView()
        view.trackTintColor = .lightGray
        view.progressTintColor = .systemBlue
        view.progress = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var fourthLoadButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Load", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - Fifth

    lazy var fifthImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "photo"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var fifthProgressView: UIProgressView = {
        let view = UIProgressView()
        view.trackTintColor = .lightGray
        view.progressTintColor = .systemBlue
        view.progress = 0.5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var fifthLoadButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Load", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    // MARK: - AllButton

    lazy var loadAllButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setTitle("Load All Images", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 4
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setup()
        addViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    func addViews() {
        [firstImageView, firstProgressView, firstLoadButton,
         secondImageView, secondProgressView, secondLoadButton,
         thirdImageView, thirdProgressView, thirdLoadButton,
         fourthImageView, fourthProgressView, fourthLoadButton,
         fifthImageView, fifthProgressView, fifthLoadButton, loadAllButton].forEach { addSubview($0) }
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            firstImageView.topAnchor.constraint(equalTo: topAnchor, constant: 70),
            firstImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            firstImageView.widthAnchor.constraint(equalToConstant: 150),
            firstImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            firstProgressView.topAnchor.constraint(equalTo: topAnchor, constant: 120),
            firstProgressView.leadingAnchor.constraint(equalTo: firstImageView.trailingAnchor, constant: 5),
            firstProgressView.trailingAnchor.constraint(equalTo: firstLoadButton.leadingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            firstLoadButton.topAnchor.constraint(equalTo: topAnchor, constant: 105),
            firstLoadButton.leadingAnchor.constraint(equalTo: firstProgressView.trailingAnchor, constant: 5),
            firstLoadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            firstLoadButton.widthAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            secondImageView.topAnchor.constraint(equalTo: firstImageView.bottomAnchor, constant: 20),
            secondImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            secondImageView.widthAnchor.constraint(equalToConstant: 150),
            secondImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            secondProgressView.topAnchor.constraint(equalTo: firstProgressView.bottomAnchor, constant: 120),
            secondProgressView.leadingAnchor.constraint(equalTo: secondImageView.trailingAnchor, constant: 5),
            secondProgressView.trailingAnchor.constraint(equalTo: secondLoadButton.leadingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            secondLoadButton.topAnchor.constraint(equalTo: firstLoadButton.bottomAnchor, constant: 90),
            secondLoadButton.leadingAnchor.constraint(equalTo: secondProgressView.trailingAnchor, constant: 5),
            secondLoadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            secondLoadButton.widthAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            thirdImageView.topAnchor.constraint(equalTo: secondImageView.bottomAnchor, constant: 20),
            thirdImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            thirdImageView.widthAnchor.constraint(equalToConstant: 150),
            thirdImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            thirdProgressView.topAnchor.constraint(equalTo: secondProgressView.bottomAnchor, constant: 120),
            thirdProgressView.leadingAnchor.constraint(equalTo: thirdImageView.trailingAnchor, constant: 5),
            thirdProgressView.trailingAnchor.constraint(equalTo: thirdLoadButton.leadingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            thirdLoadButton.topAnchor.constraint(equalTo: secondLoadButton.bottomAnchor, constant: 90),
            thirdLoadButton.leadingAnchor.constraint(equalTo: thirdProgressView.trailingAnchor, constant: 5),
            thirdLoadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            thirdLoadButton.widthAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            fourthImageView.topAnchor.constraint(equalTo: thirdImageView.bottomAnchor, constant: 20),
            fourthImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fourthImageView.widthAnchor.constraint(equalToConstant: 150),
            fourthImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            fourthProgressView.topAnchor.constraint(equalTo: thirdProgressView.bottomAnchor, constant: 120),
            fourthProgressView.leadingAnchor.constraint(equalTo: fourthImageView.trailingAnchor, constant: 5),
            fourthProgressView.trailingAnchor.constraint(equalTo: fourthLoadButton.leadingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            fourthLoadButton.topAnchor.constraint(equalTo: thirdLoadButton.bottomAnchor, constant: 90),
            fourthLoadButton.leadingAnchor.constraint(equalTo: fourthProgressView.trailingAnchor, constant: 5),
            fourthLoadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            fourthLoadButton.widthAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            fourthImageView.topAnchor.constraint(equalTo: thirdImageView.bottomAnchor, constant: 20),
            fourthImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fourthImageView.widthAnchor.constraint(equalToConstant: 150),
            fourthImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            fourthProgressView.topAnchor.constraint(equalTo: thirdProgressView.bottomAnchor, constant: 120),
            fourthProgressView.leadingAnchor.constraint(equalTo: fourthImageView.trailingAnchor, constant: 5),
            fourthProgressView.trailingAnchor.constraint(equalTo: fourthLoadButton.leadingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            fourthLoadButton.topAnchor.constraint(equalTo: thirdLoadButton.bottomAnchor, constant: 90),
            fourthLoadButton.leadingAnchor.constraint(equalTo: fourthProgressView.trailingAnchor, constant: 5),
            fourthLoadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            fourthLoadButton.widthAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            fifthImageView.topAnchor.constraint(equalTo: fourthImageView.bottomAnchor, constant: 20),
            fifthImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            fifthImageView.widthAnchor.constraint(equalToConstant: 150),
            fifthImageView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            fifthProgressView.topAnchor.constraint(equalTo: fourthProgressView.bottomAnchor, constant: 120),
            fifthProgressView.leadingAnchor.constraint(equalTo: fifthImageView.trailingAnchor, constant: 5),
            fifthProgressView.trailingAnchor.constraint(equalTo: fifthLoadButton.leadingAnchor, constant: -5)
        ])
        
        NSLayoutConstraint.activate([
            fifthLoadButton.topAnchor.constraint(equalTo: fourthLoadButton.bottomAnchor, constant: 90),
            fifthLoadButton.leadingAnchor.constraint(equalTo: fifthProgressView.trailingAnchor, constant: 5),
            fifthLoadButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            fifthLoadButton.widthAnchor.constraint(equalToConstant: 75)
        ])
        
        NSLayoutConstraint.activate([
            loadAllButton.topAnchor.constraint(equalTo: fifthImageView.bottomAnchor, constant: 40),
            loadAllButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            loadAllButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)
        ])
    }
    
}
