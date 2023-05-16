//
//  wordSelectionView.swift
//  AILiteracyTeacher
//
//  Created by Hassan Khan on 2023-05-15.
//

import Foundation
import UIKit

class WordSelectionView: UIView {
    
    // constants
    let smallPadding = 4.0
    let mediumPadding = 15.0
    let firstStoryButtonHeight = 40.0
    let contentViewHeight = 400.0
    let contentViewWidth = 400.0
    
    lazy var contentView: UIImageView = {
      let contentView = UIImageView()
      contentView.contentMode = .scaleAspectFit
      contentView.image = UIImage(named: "BoyWalking")
      contentView.translatesAutoresizingMaskIntoConstraints = false
      return contentView
    }()
    
    lazy var firstStoryLabel: UILabel = {
        let firstStoryLabel = UILabel()
        firstStoryLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        firstStoryLabel.text = "Create a story about a"
        firstStoryLabel.textAlignment = .center
        firstStoryLabel.translatesAutoresizingMaskIntoConstraints = false

        return firstStoryLabel
    }()
    
    let firstStoryButton: UIButton = {
        let firstStoryButton = UIButton()
        firstStoryButton.setTitle("space girl", for: .normal)
        firstStoryButton.backgroundColor = UIColor.orange
        firstStoryButton.setTitleColor(UIColor.white, for: .normal)
        firstStoryButton.layer.cornerRadius = 8
        firstStoryButton.clipsToBounds = true
        firstStoryButton.translatesAutoresizingMaskIntoConstraints = false
        
        return firstStoryButton
    }()
    
    lazy var secondStoryLabel: UILabel = {
        let secondStoryLabel = UILabel()//frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        secondStoryLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        secondStoryLabel.text = "in a"
        secondStoryLabel.textAlignment = .center
        secondStoryLabel.translatesAutoresizingMaskIntoConstraints = false

        return secondStoryLabel
    }()
//    let secondStoryButton: UIButton
//
//    let firstDescriptiveLabel: UILabel
//    let firstDescriptiveButton: UIButton
//    let secondDescriptiveButton: UIButton
//    let secondDescriptiveLabel: UILabel
//    let thirdDescriptiveButton: UIButton
//
//    let createButton: UIButton

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(contentView)
        addSubview(firstStoryLabel)
        addSubview(firstStoryButton)
        addSubview(secondStoryLabel)
        self.backgroundColor = UIColor.white
        layoutSubviews()
    }
    
    // Will not use because we are not using storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        NSLayoutConstraint.activate([
            //layout contentView
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: mediumPadding),
            contentView.heightAnchor.constraint(equalToConstant: contentViewHeight),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.widthAnchor.constraint(equalToConstant: contentViewWidth),
              
            //layout firstStoryLabel
            firstStoryLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: mediumPadding),
            firstStoryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: mediumPadding),
              
            //layout firstStoryButton
            firstStoryButton.centerYAnchor.constraint(equalTo: firstStoryLabel.centerYAnchor),
            firstStoryButton.leadingAnchor.constraint(equalTo: firstStoryLabel.trailingAnchor, constant: smallPadding),
            firstStoryButton.heightAnchor.constraint(equalToConstant: firstStoryButtonHeight),
              
            //layout secondStoryLabel
            secondStoryLabel.topAnchor.constraint(equalTo: firstStoryLabel.bottomAnchor, constant: smallPadding),
            secondStoryLabel.leadingAnchor.constraint(equalTo: firstStoryLabel.leadingAnchor)
            ])
    }
    
    //custom views should override this to return true if
    //they cannot layout correctly using autoresizing.
    //from apple docs https://developer.apple.com/documentation/uikit/uiview/1622549-requiresconstraintbasedlayout
    override class var requiresConstraintBasedLayout: Bool {
      return true
    }
}
