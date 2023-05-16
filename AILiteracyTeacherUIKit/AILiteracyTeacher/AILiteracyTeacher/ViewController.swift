//
//  ViewController.swift
//  AILiteracyTeacher
//
//  Created by Hassan Khan on 2023-05-15.
//

import UIKit

class ViewController: UIViewController {
    
    public required init?(coder: NSCoder) {
        super.init(coder: coder);
        
        self.view.addSubview(wordSelectionView());
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func wordSelectionView() -> UIView {
        let wordSelectionView = UIView(); // TODO (hassank): Replace With New View.
        
        return wordSelectionView;
    }
}

