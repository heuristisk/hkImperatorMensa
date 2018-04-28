//
//  HomeViewController.swift
//  hkImperatorMensa
//
//  Created by Anderson Gusmao on 27/04/18.
//  Copyright © 2018 Anderson Gusmao. All rights reserved.
//

import UIKit

class GenericTableViewController<T: DescriptiveProtocol>: UITableViewController {

    var didSelect: (T) -> () = { _ in }
    private var source: [T] = [T]()

    init(source: [T], title: String) {
        self.source = source
        super.init(style: .plain)
        self.title = title
        self.tableView.tableFooterView = UIView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        register()
    }

    private func register() {
        Set(source.compactMap({$0.descriptor.reuseIdentifier})).forEach({
            tableView.register(UINib(nibName: $0, bundle: nil), forCellReuseIdentifier: $0)
        })
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return source.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let descriptor = source[indexPath.row].descriptor
        let cell = tableView.dequeueReusableCell(withIdentifier: descriptor.reuseIdentifier, for: indexPath)
        descriptor.configure(cell)
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = source[indexPath.row]
        didSelect(item)
    }
}

