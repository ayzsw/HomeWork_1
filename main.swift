import Foundation

// Создать класс Client c параметрами firstname, lastname. Cоздать класс Card c параметрами bankName, cardNumber и bill. Добавить в класс Client еще один параметр cards: [Card]. Cоздать класс Bank, в котором имеется функция перевода или оплаты денег. Функция должна запрашивать "Выберите карту", создается поле для ввода номера карты, после чего она должна распознать имя банка и запринтить в консоль. Затем запрашивается номер счета другого Сlient, вы вводите номер карты, в консоль должна отобразиться ФИО клиента. После чего запрашивается сумма и происходит перевод денег. В main cоздать объекты, заполнить данными и произвести перевод.


let card1 = Cards(bankName: "Optima", cardNumber: 423473, bill: 238477824.3)
let card2 = Cards(bankName: "Kompanion", cardNumber: 2348231, bill: 238748.9)
let card3 = Cards(bankName: "MBank", cardNumber: 3274627, bill: 39999.8)

let client1 = Client(firstName: "Ayaz", lastName: "Sharshenbekov", cards: [card1, card2])
let client2 = Client(firstName: "Erjan", lastName: "Tokochev", cards: [card3])

Bank.transaction(from: client1, to: client2)

client1.viewInfo()
client2.viewInfo()

card1.showInfoCard()
card2.showInfoCard()
card3.showInfoCard()
