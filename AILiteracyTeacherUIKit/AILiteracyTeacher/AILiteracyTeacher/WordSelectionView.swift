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
    let extraSmallPadding = 6.0
    let smallPadding = 10.0
    let mediumPadding = 24.0
    let textFieldHeight = 40.0
    let textFieldWidth = 84.0
    let contentViewHeight = 400.0
    let contentViewWidth = 400.0
    let createButtonPadding = 60.0
    
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
    
    let firstStoryTextField: UITextField = {
        let firstStoryTextField = UITextField()
        firstStoryTextField.backgroundColor = UIColor.orange
        firstStoryTextField.textColor = UIColor.white
        firstStoryTextField.attributedPlaceholder = NSAttributedString(string: "space girl", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        firstStoryTextField.textAlignment = .center
        firstStoryTextField.layer.cornerRadius = 8.0
        firstStoryTextField.clipsToBounds = true
        firstStoryTextField.translatesAutoresizingMaskIntoConstraints = false

        return firstStoryTextField
    }()
    
    lazy var secondStoryLabel: UILabel = {
        let secondStoryLabel = UILabel()
        secondStoryLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        secondStoryLabel.text = "in a"
        secondStoryLabel.textAlignment = .center
        secondStoryLabel.translatesAutoresizingMaskIntoConstraints = false

        return secondStoryLabel
    }()
    
    let secondStoryTextField: UITextField = {
        let secondStoryTextField = UITextField()
        secondStoryTextField.backgroundColor = UIColor.orange
        secondStoryTextField.textColor = UIColor.white
        secondStoryTextField.attributedPlaceholder = NSAttributedString(string: "place", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        secondStoryTextField.textAlignment = .center
        secondStoryTextField.layer.cornerRadius = 8.0
        secondStoryTextField.clipsToBounds = true
        secondStoryTextField.translatesAutoresizingMaskIntoConstraints = false

        return secondStoryTextField
    }()

    let firstDescriptiveLabel: UILabel = {
        let firstDescriptiveLabel = UILabel()
        firstDescriptiveLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        firstDescriptiveLabel.text = "Space girl is"
        firstDescriptiveLabel.textAlignment = .center
        firstDescriptiveLabel.translatesAutoresizingMaskIntoConstraints = false

        return firstDescriptiveLabel
    }()
    
    let firstDescriptiveTextField: UITextField = {
        let firstDescriptiveTextField = UITextField()
        firstDescriptiveTextField.backgroundColor = UIColor.orange
        firstDescriptiveTextField.textColor = UIColor.white
        firstDescriptiveTextField.attributedPlaceholder = NSAttributedString(string: "brave", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        firstDescriptiveTextField.textAlignment = .center
        firstDescriptiveTextField.layer.cornerRadius = 8.0
        firstDescriptiveTextField.clipsToBounds = true
        firstDescriptiveTextField.translatesAutoresizingMaskIntoConstraints = false

        return firstDescriptiveTextField
    }()
    
    let secondDescriptiveTextField: UITextField = {
        let secondDescriptiveTextField = UITextField()
        secondDescriptiveTextField.backgroundColor = UIColor.orange
        secondDescriptiveTextField.textColor = UIColor.white
        secondDescriptiveTextField.attributedPlaceholder = NSAttributedString(string: "funny", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        secondDescriptiveTextField.textAlignment = .center
        secondDescriptiveTextField.layer.cornerRadius = 8.0
        secondDescriptiveTextField.clipsToBounds = true
        secondDescriptiveTextField.translatesAutoresizingMaskIntoConstraints = false

        return secondDescriptiveTextField
    }()
    
    let secondDescriptiveLabel: UILabel = {
        let secondDescriptiveLabel = UILabel()
        secondDescriptiveLabel.font = UIFont.systemFont(ofSize: 22, weight: .medium)
        secondDescriptiveLabel.text = "and"
        secondDescriptiveLabel.textAlignment = .center
        secondDescriptiveLabel.translatesAutoresizingMaskIntoConstraints = false

        return secondDescriptiveLabel
    }()
    
    let thirdDescriptiveTextField: UITextField = {
        let thirdDescriptiveTextField = UITextField()
        thirdDescriptiveTextField.backgroundColor = UIColor.orange
        thirdDescriptiveTextField.textColor = UIColor.white
        thirdDescriptiveTextField.attributedPlaceholder = NSAttributedString(string: "smart", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        thirdDescriptiveTextField.textAlignment = .center
        thirdDescriptiveTextField.layer.cornerRadius = 8.0
        thirdDescriptiveTextField.clipsToBounds = true
        thirdDescriptiveTextField.translatesAutoresizingMaskIntoConstraints = false

        return thirdDescriptiveTextField
    }()
    
    let createButton: UIButton = {
        let createButton = UIButton()
        createButton.setTitle("CREATE", for: .normal)
        createButton.setTitleColor(UIColor.white, for: .normal)
        createButton.backgroundColor = UIColor.black
        createButton.layer.cornerRadius = 8.0
        createButton.clipsToBounds = true
        createButton.translatesAutoresizingMaskIntoConstraints = false
        
        return createButton
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(contentView)
        addSubview(firstStoryLabel)
        addSubview(firstStoryTextField)
        addSubview(secondStoryLabel)
        addSubview(secondStoryTextField)
        addSubview(firstDescriptiveLabel)
        addSubview(firstDescriptiveTextField)
        addSubview(secondDescriptiveTextField)
        addSubview(secondDescriptiveLabel)
        addSubview(thirdDescriptiveTextField)
        addSubview(createButton)
        
        self.backgroundColor = UIColor.white
        layoutSubviews()
    }
    
    // Will not use because we are not using storyboard
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        
        NSLayoutConstraint.activate([
            // layout contentView
            contentView.topAnchor.constraint(equalTo: topAnchor, constant: mediumPadding),
            contentView.heightAnchor.constraint(equalToConstant: contentViewHeight),
            contentView.centerXAnchor.constraint(equalTo: centerXAnchor),
            contentView.widthAnchor.constraint(equalToConstant: contentViewWidth),
              
            // layout firstStoryLabel
            firstStoryLabel.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: mediumPadding),
            firstStoryLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: mediumPadding),
              
            // layout firstStoryTextField
            firstStoryTextField.centerYAnchor.constraint(equalTo: firstStoryLabel.centerYAnchor),
            firstStoryTextField.leadingAnchor.constraint(equalTo: firstStoryLabel.trailingAnchor, constant: extraSmallPadding),
            firstStoryTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),
            firstStoryTextField.widthAnchor.constraint(equalToConstant: textFieldWidth),
              
            // layout secondStoryLabel
            secondStoryLabel.topAnchor.constraint(equalTo: firstStoryLabel.bottomAnchor, constant: smallPadding),
            secondStoryLabel.leadingAnchor.constraint(equalTo: firstStoryLabel.leadingAnchor),
            
            // layout secondStoryTextField
            secondStoryTextField.centerYAnchor.constraint(equalTo: secondStoryLabel.centerYAnchor),
            secondStoryTextField.leadingAnchor.constraint(equalTo: secondStoryLabel.trailingAnchor, constant: extraSmallPadding),
            secondStoryTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),
            secondStoryTextField.widthAnchor.constraint(equalToConstant: textFieldWidth),
            
            // layout firstDescriptiveLabel
            firstDescriptiveLabel.topAnchor.constraint(equalTo: secondStoryLabel.bottomAnchor, constant: mediumPadding),
            firstDescriptiveLabel.leadingAnchor.constraint(equalTo: secondStoryLabel.leadingAnchor),
            
            // layout firstDescriptiveTextField
            firstDescriptiveTextField.centerYAnchor.constraint(equalTo: firstDescriptiveLabel.centerYAnchor),
            firstDescriptiveTextField.leadingAnchor.constraint(equalTo: firstDescriptiveLabel.trailingAnchor, constant: extraSmallPadding),
            firstDescriptiveTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),
            firstDescriptiveTextField.widthAnchor.constraint(equalToConstant: textFieldWidth),
            
            // layout secondDescriptiveTextField
            secondDescriptiveTextField.centerYAnchor.constraint(equalTo: firstDescriptiveTextField.centerYAnchor),
            secondDescriptiveTextField.leadingAnchor.constraint(equalTo: firstDescriptiveTextField.trailingAnchor, constant: extraSmallPadding),
            secondDescriptiveTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),
            secondDescriptiveTextField.widthAnchor.constraint(equalToConstant: textFieldWidth),
            
            // layout secondDescriptiveLabel
            secondDescriptiveLabel.topAnchor.constraint(equalTo: firstDescriptiveLabel.bottomAnchor, constant: mediumPadding),
            secondDescriptiveLabel.leadingAnchor.constraint(equalTo: firstDescriptiveLabel.leadingAnchor),
            
            // layout thirdDescriptiveTextField
            thirdDescriptiveTextField.centerYAnchor.constraint(equalTo: secondDescriptiveLabel.centerYAnchor),
            thirdDescriptiveTextField.leadingAnchor.constraint(equalTo: secondDescriptiveLabel.trailingAnchor, constant: extraSmallPadding),
            thirdDescriptiveTextField.heightAnchor.constraint(equalToConstant: textFieldHeight),
            thirdDescriptiveTextField.widthAnchor.constraint(equalToConstant: textFieldWidth),
            
            // layout createButton
            createButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            createButton.topAnchor.constraint(equalTo: thirdDescriptiveTextField.bottomAnchor, constant:createButtonPadding),
            createButton.widthAnchor.constraint(equalToConstant: textFieldWidth)
            ])
    }
    
    //custom views should override this to return true if
    //they cannot layout correctly using autoresizing.
    //from apple docs https://developer.apple.com/documentation/uikit/uiview/1622549-requiresconstraintbasedlayout
    override class var requiresConstraintBasedLayout: Bool {
      return true
    }
}
