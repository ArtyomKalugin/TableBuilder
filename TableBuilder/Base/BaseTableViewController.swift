import Foundation
import UIKit

/// Базовый класс для работы с таблицей
public class BaseTableViewController: UIViewController {
    
    var tableDirector: TableDirector
    var tableView: UITableView
    
    public required init?(coder: NSCoder) {
        tableView = UITableView()
        tableDirector = TableDirector(tableView: tableView)
        
        tableView.delegate = tableDirector
        tableView.dataSource = tableDirector
        
        super.init(coder: coder)
    }
    
    public override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        updateSections()
    }
    
    public func updateSections() -> [TableSection] {
        // Override
        []
    }
}
