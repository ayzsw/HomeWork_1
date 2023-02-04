import Foundation
// Создать класс Client c параметрами firstname, lastname. Cоздать класс Card c параметрами bankName, cardNumber и bill. Добавить в класс Client еще один параметр cards: [Card]. Cоздать класс Bank, в котором имеется функция перевода или оплаты денег. Функция должна запрашивать "Выберите карту", создается поле для ввода номера карты, после чего она должна распознать имя банка и запринтить в консоль. Затем запрашивается номер счета другого Сlient, вы вводите номер карты, в консоль должна отобразиться ФИО клиента. После чего запрашивается сумма и происходит перевод денег. В main cоздать объекты, заполнить данными и произвести перевод.
class Client{
    var firstName: String
    var lastName: String
    var cards: [Cards]

    init(firstName: String, lastName: String, cards: [Cards]) {
        self.firstName = firstName
        self.lastName = lastName
        self.cards = cards
    }
    
    func viewInfo(){
        print("Имя - \(firstName), фамилие - (lastName")
    }
}
