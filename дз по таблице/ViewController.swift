
import SnapKit
import UIKit

class ViewController: UITableViewCell {
    
    lazy var name: UILabel = {
        let label = UILabel()
        label.text = ""
        return label
    }()
    
    lazy var surName: UILabel = {
        let label = UILabel()
        label.text = ""
        return label
    }()
    
    lazy var wand: UILabel = {
        let label = UILabel()
        label.text = ""
        return label
    }()
    
  
    lazy var house: UILabel = {
        let label = UILabel()
        label.text = ""
        return label
    }()
    
  
    
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier reuseIdentifer: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifer)
        setUp()
    }
    
    
    
    func setUp() {
        contentView.addSubview(name)
        contentView.addSubview(surName)
        contentView.addSubview(wand)
        contentView.addSubview(house)
        
        
        name.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(12)
        }
        
        surName.snp.makeConstraints { make in
            make.top.equalTo(name.snp.bottom).offset(4)
            make.bottom.equalToSuperview().inset(12)
        }
        
        wand.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().inset(12)
            make.leading.equalToSuperview().inset(80)
            
        }
        
        house.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(wand.snp.bottom).offset(12)
        }
        
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
