//
//  ViewController.swift
//  AILiteracyTeacher
//
//  Created by Hassan Khan on 2023-05-15.
//

import UIKit

class ViewController: UIViewController {
    
//    public init() {
//        super.init()
//        self.view.addSubview(wordSelectionView())
//    }
//
//    public required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        self.view.addSubview(wordSelectionView())
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.addSubview(wordSelectionView())
        
    }

    func wordSelectionView() -> UIView {
        let wordSelectionView = WordSelectionView(); // TODO (hassank): Replace With New View.
        wordSelectionView.frame = self.view.frame
        return wordSelectionView;
    }
}

