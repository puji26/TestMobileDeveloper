//
//  ViewController.swift
//  TestMobileIOSDeveloper
//
//  Created by Puji Wahono on 13/08/20.
//  Copyright © 2020 Puji Wahono. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    @IBOutlet weak var tableBuah: UITableView!
    let viewModelItemList = ItemListViewModel()
    let disposeBag = DisposeBag()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModelBinding()
    }
    
    func viewModelBinding(){
        bindView()
        bindState()
        
    }
    
    func bindView(){
        let nib = UINib(nibName: "BuahTableViewCell", bundle: nil)
        tableBuah.register(nib, forCellReuseIdentifier: "BuahCell")
        viewModelItemList.listBuah.bind(to: tableBuah.rx.items(cellIdentifier: "BuahCell", cellType: BuahTableViewCell.self)) {
            row,menu,cell in
            cell.setup(viewModel:menu)
        }.disposed(by: disposeBag)
    }
    
    func bindState(){
        viewModelItemList.showListBuah()
    }
    
    
}

