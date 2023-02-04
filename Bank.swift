import Foundation
//Создать класс Client c параметрами firstname, lastname. Cоздать класс Card c параметрами bankName, cardNumber и bill. Добавить в класс Client еще один параметр cards: [Card]. Cоздать класс Bank, в котором имеется функция перевода или оплаты денег. Функция должна запрашивать "Выберите карту", создается поле для ввода номера карты, после чего она должна распознать имя банка и запринтить в консоль. Затем запрашивается номер счета другого Сlient, вы вводите номер карты, в консоль должна отобразиться ФИО клиента. После чего запрашивается сумма и происходит перевод денег. В main cоздать объекты, заполнить данными и произвести перевод.
class Bank {

    static func transaction(from: Client, to: Client) {

        print("Выберите карту:")

        for (index, card) in from.cards.enumerated() {

            print("\(index + 1). \(card.bankName) \(card.cardNumber)")

        }

        

        let vyborIndex = Int(readLine()!)! - 1

        let vyborCard = from.cards[vyborIndex]

        

        print("\(vyborCard.bankName) \(vyborCard.cardNumber) выбран")

        print("Введите номер карты получателя:")

        

        var placeCardNumber = Int(readLine()!)

        var placeCard: Cards!

        for card in to.cards {

            if card.cardNumber == placeCardNumber {

                placeCard = card

                break

            }

        }

        if placeCard == nil {

            print("Транзакция не удалась: карта получателя не найдена")

            return

        }

        print("Получатель: \(to.firstName) \(to.lastName)")

        print("Введите сумму:")

        

        let amount = Float(readLine()!)!

        

        if amount < vyborCard.bill {

            print("Транзакция не удалась: недостаточно средств")

            

            vyborCard.bill -= amount

            placeCard.bill += amount

            

            print("Транзакция прошла успешно")

            

        }

    }

}
