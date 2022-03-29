//
//  ViewCountIndicatorControlView.swift
//  VkAap
//
//  Created by Алексей Логинов on 29.03.2022.
//

import UIKit

class ViewCountIndicatorControlView: UIView {

        
        //кнопка share
        @IBOutlet weak var shareButton: UIButton!
        //счетчик share
        @IBOutlet weak var shareCountLabel: UILabel!
        
        
        //создаём приватное свойство с помощью которого будем даставать Views из xib
        private var view: UIView?
        //деалаем кнопку share изначально не закрашенную
        var isShareActive = false
        //переменная для счетчика количества share
        var countShare = 0
        
    // -------------------------------------------------------------------------------------
        //MARK: потом нам надо эту view вызвать т.к. особого viewDidLoad у View нет
        //можно с помощью кода:
        override init(frame: CGRect) {
            super.init(frame: frame)
            setup()
        }
        //можно из StoryBoard
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            setup()
        }
    // -------------------------------------------------------------------------------------
        
        
    //пишем функцию loadfromnib достать с xib файла
        private func loadFromNib() -> UIView {
            let bundle = Bundle(for: type(of: self))
            //определяем nib файл
            let nib = UINib(nibName: "ViewCountIndicatorControlView", bundle: bundle)
            //дальше во view дистанцируем этот файл
            guard let view = nib.instantiate(withOwner: self, options: nil).first as? UIView
            else {return UIView()}
            return view
            }
    //затем нам надо её установить в текущуюю (у нас же есть self view)
        private func setup() {
            view = loadFromNib()
            guard let view = view
            else {
                return
            }
            //если прошло всё удачно выставляем фрэйм по bounds текущему
            view.frame = bounds
            //навсякий случай делаем чтобы она расширялась в соответствии со своей родительской view, можно и не делать
            view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
            addSubview(view)
        }

    //создаём саму активность кнопки share
        @IBAction func pressLikeButton(_ sender: UIButton) {
           //анимация share icon
            UIView.transition(with: shareButton ,
                              duration: 1,
                              options: [.transitionFlipFromRight],
                              animations: {},
                              completion: nil)

            if isShareActive {
                //чтобы отменть share при нажатии
                shareButton.setImage(UIImage(systemName: "heart"), for: .normal)
                //чтобы убрать лайк по нажатию
                countShare -= 1
                shareCountLabel.text = String(countShare)
                
            }
            else {
                //чтобы закрасить share при нажатии
                shareButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
                //чтобы добавлялись лайк по нажатию
                countShare += 1
                shareCountLabel.text = String(countShare)
            }
            //нужно для того чтобы отменять нажатие share
            isShareActive = !isShareActive
        
        
        }
        
    }
