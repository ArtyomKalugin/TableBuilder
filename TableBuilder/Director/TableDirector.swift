import Foundation
import UIKit

/// Класс-делегат таблицы
public class TableDirector: NSObject {
}

// MARK: - UITableViewDelegate, UITableViewDataSource

extension TableDirector: UITableViewDelegate, UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        .zero
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        UITableViewCell()
    }
}
