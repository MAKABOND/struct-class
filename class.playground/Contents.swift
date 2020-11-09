import UIKit
// MARK: - Task

// 1. Создайте класс студент
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этого класса и заполните их данными.
// Положите их всех в массив (журнал).

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?

// 6. Сравните результаты после использования класса и структуры.

// TODO: - Напишите свое решение самостоятельно!!!

class Student {
    var name: String
    var surname: String
    var born: Int
    var averageMark: Float
    
    init(name: String, surname: String, born: Int, averageMark: Float) {
        self.name = name
        self.surname = surname
        self.born = born
        self.averageMark = averageMark
    }
}
let student1 = Student (name: "Makar", surname: "Erimeevich", born: 1999, averageMark: 8.22)
let student2 = Student (name: "Alexei", surname: "Movchan", born: 1998, averageMark: 7.7)
let student3 = Student (name: "Hanna", surname: "Petrusha", born: 2000, averageMark: 9.1)
let student4 = Student (name: "Nastya", surname: "Belochkina", born: 1995, averageMark: 6.8)
let student5 = Student (name: "Roman", surname: "Artemkov", born: 1988, averageMark: 5.6)

var journal: [Student] = []
journal.append(student1)
journal.append(student2)
journal.append(student3)
journal.append(student4)
journal.append(student5)

func journalOut ()  {
    for  (index,value) in journal.enumerated() {
        print ("\(index + 1) - name - \(value.name), surname - \(value.surname), year of born - \(value.born), averagescore - \(value.averageMark)\n")
    }
    print ("--------------------------------------------------------------")
}
 journalOut()
func journalSort () {
    journal.forEach {_ in
        journal.sort {$0.averageMark > $1.averageMark}
    }
}
journalSort()
journalOut()
func journalSortSurname () {
    journal.forEach {_ in
        journal.sort (by:{$0.surname == $1.surname ?  $0.name < $1.name: $0.surname < $1.surname})
    }
}
journalSortSurname()
journalOut()

var journal1: [Student] = journal

journal1[0].name = "IGOR"
journal1[0].surname = "ANANYEV"
journal1[0].averageMark = 10

journal
journal1
 // да, первоначальный изменился
