//
//  RegularTableViewCell.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 06/12/21.
//

import UIKit

class RegularTableViewCell: UITableViewCell {

    // MARK: - UI Components
    let backView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = Constant.hexStringToUIColor(hex: Constant.light_red)
        view.layer.cornerRadius = 10.0
        return view
    }()
    
    let chevronImage: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(systemName: "chevron.right")
        image.tintColor = .lightGray
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: Constant.fontPoppinsSemibold, size: Constant.fontsizeBody)
        label.text = "title"
        return label
    }()
    
    // MARK: - Life Cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    
    // MARK: - Setup
    private func setup(){
        // MARK: Add Subview
        self.addSubview(backView)
        self.backView.addSubview(chevronImage)
        self.backView.addSubview(titleLabel)
       
        // MARK: Set Auto Layout
        setViewAutoLayout()
        setChevronAutoLayout()
        setTitleLabelAutoLayout()        
    }
    
    // MARK: - Auto Layout
    private func setViewAutoLayout(){
        backView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        backView.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        backView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10.0).isActive = true
    }
    private func setChevronAutoLayout(){
        chevronImage.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -5.0).isActive = true
        chevronImage.trailingAnchor.constraint(equalTo: backView.trailingAnchor, constant: -20.0).isActive = true
    }
    
    private func setTitleLabelAutoLayout(){
        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -5.0).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: backView.leadingAnchor, constant: 20.0).isActive = true
    }
    

}
