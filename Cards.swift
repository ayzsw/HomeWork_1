import Foundation
// Создать класс Client c параметрами firstname, lastname. Cоздать класс Card c параметрами bankName, cardNumber и bill. Добавить в класс Client еще один параметр cards: [Card]. Cоздать класс Bank, в котором имеется функция перевода или оплаты денег. Функция должна запрашивать "Выберите карту", создается поле для ввода номера карты, после чего она должна распознать имя банка и запринтить в консоль. Затем запрашивается номер счета другого Сlient, вы вводите номер карты, в консоль должна отобразиться ФИО клиента. После чего запрашивается сумма и происходит перевод денег. В main cоздать объекты, заполнить данными и произвести перевод.
class Cards{
    var bankName: String
    var cardNumber: Int
    var bill: Float
    
    init(bankName: String, cardNumber: Int, bill: Float) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
    func showInfoCard(){
        print("Ваш баланс - \(bill)")
    }
}
