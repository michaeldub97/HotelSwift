//
//  ModelBuilder.swift
//  HotelSwift
//
//  Created by Михаил on 11.04.2022.
//

import UIKit

protocol AssemblyBuilderProtocol {
    func createHotelListModule(router: RouterProtocol) -> UIViewController
    func createDetailModule(hotels: Hotel, router: RouterProtocol) -> UIViewController
}

class AssemblyModelBuilder: AssemblyBuilderProtocol {
    func createHotelListModule(router: RouterProtocol) -> UIViewController {
        let view = HotelsListViewController()
        let networkProvider = NetworkProvider()
        let database = LocalStorageProvider()
        let presenter = HotelsListPresenter(view: view, networkProvider: networkProvider, database: database, router: router)
        view.presenter = presenter
        return view
    }
    
    func createDetailModule(hotels: Hotel, router: RouterProtocol) -> UIViewController {
        let view = DetailHotelViewController()
        let presenter = DetailPresenter(view: view, router: router, hotel: hotels)
        view.presenter = presenter
        return view
    }
}

