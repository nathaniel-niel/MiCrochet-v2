//
//  LargeTableViewCell.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 06/12/21.
//

import UIKit

class LargeTableViewCell: UITableViewCell {
    
    // MARK: - UI Components
    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.layer.cornerRadius = 8.0
        image.clipsToBounds = true
        image.backgroundColor = Constant.hexStringToUIColor(hex: Constant.mauvelous)
        return image
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: Constant.fontPoppinsSemibold, size: Constant.fontsizeTitle2)
        label.text = "Pattern"
        return label
    }()
    
    let hookSizeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: Constant.fontPoppinsRegular, size: Constant.fontsizeBody)
        label.text = "Hook Size"
        return label
    }()
    
    let yarnLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont(name: Constant.fontPoppinsRegular, size: Constant.fontsizeBody)
        label.text = "Yarn"
        return label
    }()
    
    
    
    // MARK: - Life Cycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setup()
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    private func setup(){
        // MARK: Add Subview
        self.addSubview(image)
        self.addSubview(titleLabel)
        self.addSubview(hookSizeLabel)
        self.addSubview(yarnLabel)
        
        // MARK: Set Auto Layout
        setImageAutoLayout()
        setTitleLabelAutoLayout()
        setHookSizeLabelAutoLayout()
        setYarnAutoLayout()
    }
    
    // MARK: - Auto Layout
    private func setImageAutoLayout(){
        image.topAnchor.constraint(equalTo: topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20.0).isActive = true
        image.widthAnchor.constraint(equalToConstant: 144.0).isActive = true
    }
    
    private func setTitleLabelAutoLayout(){
        titleLabel.topAnchor.constraint(equalTo: topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor,constant: 18.0).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    private func setHookSizeLabelAutoLayout(){
        hookSizeLabel.centerYAnchor.constraint(equalTo: centerYAnchor, constant: -10).isActive = true
        hookSizeLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor,constant: 18.0).isActive = true
        hookSizeLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    private func setYarnAutoLayout(){
        yarnLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20.0).isActive = true
        yarnLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor,constant: 18.0).isActive = true
        yarnLabel.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    

}
