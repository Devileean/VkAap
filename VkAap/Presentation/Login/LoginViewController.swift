//
//  LoginViewController.swift
//  VkAap
//
//  Created by Devileean on 13.07.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var titleImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    var right = "Right"
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        animateTitleAppearing() //анимация Эмблема
        animateFieldsAppearing() //анимация Текстфилды
        animateAuthButton() //анимация кнопки
        animateTitlesAppearing() //анимамация логин и пароль
        animateVKclient() // анимация вк клиент
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Подписываемся на два уведомления: оно приходит при появлении клавиатуры
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Второе - когда пропадает клавиатура
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
    }
    
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        // Отписываемся от клавиатуры
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    @IBAction func backToLoginScreen (_ segue: UIStoryboardSegue){
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "loginVkAap" {
            guard
                let login = loginTextField.text,
                let password = passwordTextField.text
            else {
                print("Вы забыли указать ID или password")
                showLoginAlert (message: "Поля не заполнены")
                return false
            }
            
            // Проверяем, верны ли они
            if login == "" && password == "" {
                print("успешная авторизация")
                //                UIView.transition(with: loginLabel , duration: 1, options: [.transitionCurlUp], animations: {
                //                    self.loginLabel.text = self.right
                //                }, completion: nil)
                //                UIView.transition(with: passwordLabel , duration: 1, options: [.transitionCurlUp], animations: {
                //                    self.passwordLabel.text = self.right
                //                }, completion: nil)
                //
                return true
            } else {
                print("неуспешная авторизация")
                showLoginAlert (message: "Введен не правильно login ID или password ID")
                return false
            }
        }
        showLoginAlert (message: "не верный identifier segue")
        return false
    }
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
    }
    
    //  Когда клавиатура появляется
    @objc private func keyboardWasShown(notification: Notification) {
        
        // Получаем размер клавиатуры
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        // Добавляем отступ внизу UIscrollView, равный размеру клавиатуры
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    // Когда клавиатура исчезает
    @objc private func keyboardWillBeHidden(notification: Notification) {
        
        // Устанавливаем отступ внизу UIScrollView, равный 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    @objc private func hideKeyboard() {
        self.scrollView?.endEditing(true)
    }
    //немного дизайна
    private func setViews() {
        loginButton.layer.cornerRadius = 5
        loginButton.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        titleImageView.layer.cornerRadius = 25
        titleImageView.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        
        
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        scrollView.addGestureRecognizer(tapGesture)
    }
    private func showLoginAlert (message: String) {
        //Создаем контроллер
        let alert = UIAlertController(title: "Ошибка", message: message, preferredStyle: .alert)
        //Создаем кнопку для UIAlertController
        let action = UIAlertAction(title: "OK", style: .cancel) {_ in
            //Делаем пустые поля после не правильных
            self.loginTextField.text = ""
            self.passwordTextField.text = ""
        }
        alert.addAction(action)
        //Показываем UIAlertController
        present(alert, animated: true, completion: nil)
        
    }
    
    //MARK: Animations
    
    //анимация главной эмблемы
    func animateTitleAppearing() {
        self.titleImageView.transform = CGAffineTransform(translationX: 0,
                                                          y: -self.view.bounds.height/2)
        
        UIView.animate(withDuration: 1,
                       delay: 1,
                       usingSpringWithDamping: 0.5,
                       initialSpringVelocity: 0,
                       options: .curveEaseOut,
                       animations: {
            self.titleImageView.transform = .identity
        },
                       completion: nil)
    }
    
    
    //анимация тексфилдов
    func animateFieldsAppearing() {
        let fadeInAnimation = CABasicAnimation(keyPath: "opacity")
        fadeInAnimation.fromValue = 0
        fadeInAnimation.toValue = 1
        fadeInAnimation.duration = 1
        fadeInAnimation.beginTime = CACurrentMediaTime() + 1
        fadeInAnimation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeOut)
        fadeInAnimation.fillMode = CAMediaTimingFillMode.backwards
        
        self.loginTextField.layer.add(fadeInAnimation, forKey: nil)
        self.passwordTextField.layer.add(fadeInAnimation, forKey: nil)
    }
    
    //анимация кнопки
    func animateAuthButton() {
        let animation = CASpringAnimation(keyPath: "transform.scale")
        animation.fromValue = 0
        animation.toValue = 1
        animation.stiffness = 200
        animation.mass = 2
        animation.duration = 2
        animation.beginTime = CACurrentMediaTime() + 1
        animation.fillMode = CAMediaTimingFillMode.backwards
        
        self.loginButton.layer.add(animation, forKey: nil)
    }
    
    //анимация логин и папроль
    func animateTitlesAppearing() {
        let offset = view.bounds.width
        loginLabel.transform = CGAffineTransform(translationX: offset, y: 0)
        passwordLabel.transform = CGAffineTransform(translationX: offset, y: 0)
        
        UIView.animate(withDuration: 1,
                       delay: 1,
                       options: .curveEaseOut,
                       animations: {
            self.loginLabel.transform = .identity
            self.passwordLabel.transform = .identity
        },
                       completion: nil)
    }
    
    //анимация вк клиент
    func animateVKclient() {
        let offset = view.bounds.width
        titleLabel.transform = CGAffineTransform(translationX: -offset, y: 0)
        
        UIView.animate(withDuration: 1,
                       delay: 1,
                       options: .curveEaseOut,
                       animations: {
            self.titleLabel.transform = .identity
        },
                       completion: nil)
    }
    
}


