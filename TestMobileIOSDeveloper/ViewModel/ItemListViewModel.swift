//
//  ItemListViewModel.swift
//  TestMobileIOSDeveloper
//
//  Created by Puji Wahono on 13/08/20.
//  Copyright © 2020 Puji Wahono. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

class ItemListViewModel {
    
    public let listBuah = BehaviorRelay<[ItemList]>(value: [])
    
    func showListBuah(){
        let alpukat = ItemList(name: "Alpukat", image: UIImage.init(named: "Alpukat"))
        let apel = ItemList(name: "Apel", image: UIImage.init(named: "Apel"))
        let blueBerry = ItemList(name: "Blue Berry", image: UIImage.init(named: "Blueberry"))
        let grapeFruit = ItemList(name: "GrapeFruit", image: UIImage.init(named: "grapeFruit"))
        let jambuBiji = ItemList(name: "Jambu Biji", image: UIImage.init(named: "JambuBiji"))
        let mangga = ItemList(name: "Mangga", image: UIImage.init(named: "Mangga"))
        let nanas = ItemList(name: "Nanas", image: UIImage.init(named: "Nanas"))
        let pepaya = ItemList(name: "Pepaya", image: UIImage.init(named: "Pepaya"))
        let pisang = ItemList(name: "Pisang", image: UIImage.init(named: "Pisang"))
        let semangka = ItemList(name: "Semangka", image: UIImage.init(named: "Semangka"))
        
        listBuah.accept([alpukat,apel, blueBerry, grapeFruit,jambuBiji,mangga,nanas,pepaya,pisang,semangka])
    }
    
}


