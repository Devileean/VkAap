//
//  LikeControlView.swift
//  VkAap
//
//  Created by Алексей Логинов on 28.12.2021.
//

import UIKit

class LikeControlView: UIView {
    
    //кнопка like
    @IBOutlet weak var likeButton: UIButton!
    //счетчик лайков
    @IBOutlet weak var likeCountLabel: UILabel!
    
    
    //создаём приватное свойство с помощью которого будем даставать Views из xib
    private var view: UIView?
    //деалаем кнопку лайка изначально не закрашенную
    var isLikeHeartActive = false
    //переменная для счетчика количества like
    var countLike = 0
    
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
        let nib = UINib(nibName: "LikeControlView", bundle: bundle)
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
        //если прошло вс] удачно выставляем фрэйм по bounds текущему
        view.frame = bounds
        //навсякий случай делаем чтобы она расширялась в соответствии со своей родительской view, можно и не делать
        view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        addSubview(view)
    }

//создаём саму активность кнопки
    @IBAction func pressLikeButton(_ sender: UIButton) {
        if isLikeHeartActive {
            //чтобы отменть сердечко при нажатии
            likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
            //чтобы убрать лайк по нажатию
            countLike -= 1
            likeCountLabel.text = String(countLike)
            
        }
        else {
            //чтобы закрасить сердечко при нажатии
            likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            //чтобы добавлялись лайк по нажатию
            countLike += 1
            likeCountLabel.text = String(countLike)
        }
        //нужно для того чтобы отменять нажатие лайка
        isLikeHeartActive = !isLikeHeartActive
    
    
    }
    
}
