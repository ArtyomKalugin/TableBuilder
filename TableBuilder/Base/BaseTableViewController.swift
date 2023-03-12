import Foundation
import UIKit

/// Базовый класс для работы с таблицей
public class BaseTableViewController: UIViewController {
    
    var tableDirector = TableDirector()
    var tableView = UITableView()
    
    public override func viewDidLoad() {
        // Override
        super.viewDidLoad()
        
        tableView.delegate = tableDirector
        tableView.dataSource = tableDirector
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
