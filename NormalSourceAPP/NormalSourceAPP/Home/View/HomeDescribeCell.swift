//
//  HomeDescribeCell.swift
//  NormalSourceAPP
//
//  Created by Sunfairy136 on 2021/7/5.
//

import UIKit
import SnapKit

class HomeDescribeCell: UITableViewCell {
    
    var _desLabel:UILabel?
    lazy var _box = UIView()
    lazy var _titleLabel = UILabel()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addUI()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    func addUI() {
        //底部view
        _box = UIView.init(frame: CGRect.zero)
        self.contentView.addSubview(_box)
        _box.snp.makeConstraints { (make) in
            make.top.equalTo(self.contentView);
            make.width.equalTo(self.contentView);
            make.centerX.equalTo(self.contentView);
            make.bottom.equalTo(self.contentView).offset(-1);
        }
        //TODO: 需要提醒的文字
        _titleLabel = UILabel.init();
        _titleLabel.text = "标题";
        _box.addSubview(_titleLabel)
        _titleLabel.numberOfLines = 0;
        _titleLabel.textColor = UIColor.color333();
        _titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(_box.snp_topMargin).offset(15)
            make.left.equalTo(_box.snp_leftMargin).offset(15)
        }
        
        //FIXME: 需要修改bug的相关说明
        
        // 描述
        _desLabel = UILabel.init();
        _desLabel?.text = "描述文字";
        _desLabel?.numberOfLines = 0;
        _box.addSubview(_desLabel!)
        _desLabel?.textColor = UIColor.color999();
        _desLabel?.snp.makeConstraints({ (make) in
            make.top.equalTo(_titleLabel.snp.bottom).offset(5);
            make.left.equalTo(_titleLabel.snp.left);
            make.right.equalTo(_box.snp.right).offset(-15);
            make.height.lessThanOrEqualTo(50);
            make.height.greaterThanOrEqualTo(30);
            make.bottom.equalTo(_box.snp.bottom).offset(-15);
        })
        
        
        
    }
    
}
