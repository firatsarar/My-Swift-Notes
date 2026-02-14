// <{ SWİFT NOTLARI }-------- ------- ----- --- -- - -  -

import Cocoa

let tony = "Tony Stark"
let steve = "Steve Rogers"
let bruce = "Bruce Banner"
let natasha = "Natasha Romanoff"
//avengers adında bir array oluşturma ----
var avengers = [tony, steve, bruce, natasha, natasha]

//spider isminde bir string oluştur
let spider = "Peter Parker"

//onu avengers listesine ekle
avengers.append(spider)

//Set array oluştur
var civilwar = Set([tony, steve, bruce, natasha])

print(civilwar)
print(avengers)

//Set içerisindekilerin belli bir sırası olmaz. Ve içerideki her aynı item bir defa görüntülenir. Buda büyük item içeren array'lerde hızlı sonuç almaya yarar. Örneğin sözlükteki bir kelimeyi aramak.

var color = Set(["red", "green", "blue", "yellow", "blue", "red"])
print(color)
//sonuç rastgele ve her item bir kere sıralanıyor

//-------------      ------------- ------- ----   -- - -

var me = (name: "Fırat", surname: "Sarar")

//me, içerisinde "name: "Fırat, surname: "Sarar" " içeren bir değişken
//fakat me.name yazarsam, veya me.0
print(me.name)
print(me.0)
//Her ikiside me içerisindeki ilk değer olan name'i gösterecektir.

//Bu bir array değildir. Oluşturduktan sonra bir şey ekleyip çıkarılamaz. Aksi taktirde hata verir


///ARRAY
///* Sıralıdır
///* Aynı elemandan birden fazla olabilir
///* index ile erişilebilir
///* En sık kullanılan yapıdır
///
///SET
///* Bir sırası yoktur
///* Aynı elemanlar olabilir fakat bir defa listelenr
///* Hızlı arama yapılabilir
///* Bu var mı sorusu için en idali
///
///TUPLES
///* Sabit sayıda, farklı tipte veri tutar
///* Sonradan ekleme çıkarma yapılamaz
///* Koleksiyon gibi dolaşılmaz
///* Küçük ve anlamlı gruplar için ideal

let numbers = [1, 2, 2, 3] //ARRAY Örneği
let numbers2 = Set([1, 2, 3]) //SET Örneği
let user = (name: "Fırat", age: 27, isLearningSwift: true) //TUPLES Örneği



// DICTIONARIES ------------ ---------- --------- ----- -- - -

var ages = [
    "Fırat Sarar": 26,
]
// ages adında bir array oluşturdum. İçindeki Fırat Sarar elemanına 26 etiketini ekledim
ages["Dicle Sarar"] = 24
//Dicle Sarar adında 24 etiketli bir eleman ekledim

ages["Dicle Sarar"] = nil
//elemanı sildim

if let age = ages["Dicle Sarar"] { //Hiçbir sonuç vermez çünkü sildik
    print(age)
}

/// Optional = belirsiz demek
/// nil = bu değer için bir şey yok

//BOŞ KOLEKSIYON OLUŞTURMA ------------ ---------- ------- ----- --- -- -

var teams = [String: String] ()
//İçersinde sadece String nesneleri barındıracak, ve bu nesneler için sadece string etiketi kullanılacak boş bir liste açtım

teams["Ronaldo"] = "Madrid"
teams["Messi"] = "Barcelona"
teams["Arda"] = "Madrid"
//3 tane eleman ve etiket ekledim

teams["Arda"]  //Sonuç : Madrid
teams["Kaka"]  //Sonuç: Nil. Çünkü Kaka için bir etiketimiz yok


let kaka = teams["Kaka", default: "Not Found"]  //Sonuç: Not Found
//Bu kod; Kaka yı alır ve etiketi yoksa etiketi default olarak döndürür. Nil yapmaz

var movies = [String: Double] ()
//Bu listede String elemanlarının yani filmlerin, double etiketli imdb puanı var. Buna sadece Double nesneler etiket olarak eklenebilir.
movies["Interstellar"] = 10.0

enum Activity {     //enum kullanım örneği.
    case running(destination: String) //koşuyorsa hangi yöne olduğunu belirtiriz.
    case talking(topic: String)       //konuşuyorsa ne hakkında olduğunu belirtiriz.
    case singing(Volume: Int)         //Şarkı söylüyorsa ne kadar yüksek sesle söyleğini belirtiriz.
    case dancing                      //Dans ediyor fakat hiçbir şey belirtmedim. Hangi dansı ettiğin belirtebilirim.
}

let talking = Activity.talking(topic: "football") //Konuşuyor. Ne hakkında? Futbol hakkında.
let singing = Activity.singing(Volume: 100)       //Şarkı söylüyor. Sesin yüksekliği 100.


var firstNum: Int = 5  //ilk ifade
var secondNum: Int = 2 //ikinci ifade

var total = firstNum + secondNum  //burası iki ifadenin toplamını verir
var diffrence = firstNum - secondNum  //iki ifadenin farkını verir

var product = firstNum * secondNum  //iki ifadenin çarpımını verir
var divided = firstNum / secondNum  //iki ifadenin bölümünü verir

var percentace = (firstNum/secondNum) * 100  //birinci ifadenin ikinci ifadeye yüzdelik oranını verir. Fakat Int olduğu için 5/2'yi 2 olarak alır. Normalde %250 çıkması gereken sonuç %200 çıkar. Kesin sonuç için Double yada Float kullanmak daha mantıklı.

var remainder = 10 % secondNum  //Bu ifade 10'u 2. ifadeye böldüğümüzde kalanı verir. 10/2=5 yani kalan 0.

//Aşağıda 3 tane örnek verdim...
var firstMovie = "Lord of the Rings: The Fellowship of the Ring"
var secondMovie = "Lord of the Rings: The Two Towers"
var thirdMovie = "Lord of the Rings: The Return of the King"

var series = [firstMovie, secondMovie, thirdMovie] //Bu bir array
var firstTwo = firstMovie + " & " + secondMovie //Burada ilk iki filmi string oalrak topladım.
//Örnek 2 değişken daha atadım...
var firstTeamScore = 3  //ilk takım skoru 3
var secondTeamScore = 2 //ikinci takım skoru 2

//if, else if ve else kullanım örneği
if firstTeamScore > secondTeamScore {
    print("first team won")  //        Senaryo1:     İlk takım kazandı
} else if firstTeamScore == secondTeamScore {
    print("it's a draw")     //        Senaryo2:     Berabere
} else {
    print("second team won") //        Senaryo3:     İkinci takım kazandı
}
    
//İki değişken örneği daha atadım.
var age1 = 17
var age2 = 12
//&&(ve) ve ||(ya da) kullanım örneği.
if age1 > 18 && age2 > 18 {  //Her ik ifadenin de sağlanması lazım.
    print("İkiside 18 den büyük")
}
else if age1 > 18 || age2 > 18 { //iki ifadeden biri sağlanması lazım.
    print("birisi 18 den büyük")
} else {  //her ikside çalışmazsa
    print("her ikiside 18 den küçüktür")
}

//if else komutu kısaltılmış hali. Kodu kısaltır fakat okunabilirliği zorlaştırıyor. Ayrıca kodun çalışma hızında bir şeyi değiştirmiyor. Gerekmedikçe kullanmayı önermem.
print(age1 == age2 ? "Yaşlar aynı" : "yaşlar farklı")

//switch kullanım örneği için yaşımı sabit olarak atadım.
let myAge = 27

switch myAge {
case 18:
    print("18 yaşında")
case 27:
    print("27")
default:            //Default kullanmak zorunlu. Yoksa her bir koşulu yazmak gerekir.
    print("yaş belirtilmedi")
}

let examScore = 85 //Switch aralık örneği...

switch examScore {
case 0..<50:
    print("Notun kötü")
case 51..<84:
    print("Notunuz iyi")
default:
    print("Çok iyi")
}

//Switch aralık örneği 2...
var goalCount = 0

switch goalCount {
case 0..<1:
    print("hiç gol atılmadı")
case 1..<2:
    print("1 gol atıldı")
case 2..<3:
    print("2 gol atıldı")
default:
    print("hattrick yapıldı")
}

//aralık değerler de sabit veya değişken olarak atanabiliyor.
let passingGrade = 1...4

print(passingGrade)

// DÖNGÜLER
// --------------------------------------------


var numberss = 1...5 // 1 ile 5 arasında bir sayı aralığı tanımlanır

for number in numberss {  // numbers içindeki her değeri sırayla alır
    print(numbers)        // o anki değeri ekrana yazdırır
}

// Şarkıcı isimlerini tutan bir dizi (array) oluşturulur
var singers: [String] = ["The Weeknd", "Travis Scott", "SZA", "Billie Eilish"]

for singer in singers { // Dizideki her bir şarkıcıyı sırayla alır
    print("The singer is \(singer)") // Şarkıcı adını yazdırır
}

// Değer kullanılmayacaksa `_` tercih edilir
for _ in 1...5 {        // Sadece 5 kez çalışması istenir
    print("Play")       // Her turda "Play" yazdırılır
}
// numbers kullanılsaydı sonuç yine aynı olurdu


// WHILE
// --------------------------------------------

var number1 = 1 // Başlangıç değeri 1 olan değişken

while number1 <= 10 {  // Koşul sağlandığı sürece döngü devam eder
    print(number1)     // Mevcut değeri yazdırır
    number1 += 1       // Değeri 1 artırır
}

// Geri sayım örneği
var countdown = 10

while countdown >= 0 { // 0’a ulaşana kadar çalışır
    print(countdown)   // Mevcut değeri yazdırır
    countdown -= 1     // Değeri 1 azaltır
}

print("Zaman tükendi")


// REPEAT - WHILE
// --------------------------------------------

var number2 = 5 // Başlangıç değeri 5 olan değişken

repeat {
    print(number2)     // Önce çalışır
    number2 -= 1       // Sonra değer azaltılır
} while number2 >= 0   // Koşul en sonda kontrol edilir


// BREAK
// --------------------------------------------

var number3 = 8 // Başlangıç değeri 8 olan değişken

while number3 >= 0 {        // 0’a kadar geri sayar
    print(number3)
    number3 -= 1
    if number3 == 2 {       // Değer 2 olunca
        print("2 de durdu")
        break               // Döngüyü tamamen durdurur
    }
}

// Etiketli (labeled) iç içe döngü örneği
diskatman: for i in 1...10 {        // Dış döngü
    ickatman: for j in 1...10 {     // İç döngü
        print("\(i) * \(j) = \(i*j)")
        if i * j == 50 {            // Sonuç 50 olursa
            print("50 yi buldun")
            break diskatman         // Doğrudan dış döngüden çıkar
        }
        // Sadece `break` yazılsaydı yalnızca iç döngü dururdu
    }
}


// CONTINUE
// --------------------------------------------

// 1–10 arasındaki çift sayıları yazdırır
for i in 1...10 {
    if i % 2 == 1 {   // Tek sayıysa
        continue      // Bu tur atlanır
    }
    print(i)
}

// 1–10 arasındaki tek sayıları yazdırır
for i in 1...10 {
    if i % 2 == 0 {   // Çift sayıysa
        continue
    }
    print(i)
}


// SONSUZ DÖNGÜ
// --------------------------------------------

var songLength = 300 // Şarkı süresini temsil eden sayaç

while true {         // Manuel olarak durdurulana kadar çalışır
    print(". ")
    songLength -= 1
    if songLength == 0 {
        break        // Güvenli çıkış noktası
    }
}

func sayHello() {
    let helloText = """
        Merhaba. Ben Fırat. Burada ilk fonksiyon testimi yapıyorum
        """
    print(helloText)
}

sayHello()

func karesiniAl(number: Int) {
    print(number * number)
}
karesiniAl(number: 5)

func countBand(names : [String]) {
    for name in names {
        print("Üyelerden birisi \(name).")
    }
}

countBand(names: ["Fırat", "Emir", "Zeynep", "Ayşe"])

func calculateCube(number: Int) -> Int {
    return number * number * number
}

let cube = calculateCube(number: 3)
print(cube)

func aritmeticAverage(number: [Int]) -> Int {
    return number.reduce(0, +) / number.count
}
let average = aritmeticAverage(number: [1, 2, 3, 4, 10])
print(average)

func getUser() -> (first: String, midName: String, last: String) {
    (first: "Fırat", midName: "Emir", last: "Kaya")
}

//-Closure ----------- ---------- -------- ------- ----- ---- -- - -
//Clouser fonksiyon gibi çalışır fakat bilgi saklar.
let driving = {
    print("I'm Driving")
}

driving() //I'm Driving

var ClosureTotal = 0  //Clouser için örnek bir değişken atadım
var total2 = 0 //func için örnek bir değişken daha

@MainActor func addTotalFunc() {
    total2 += 1
    print(total2)
}
addTotalFunc() //1
addTotalFunc()//1  -  Sonuç hep aynı çünkü func data tutmaz

let addTotal = {
    ClosureTotal += 1
    print(ClosureTotal)
}

addTotal()  //1
addTotal()  //2  -  Sonuç sürekli değişiyor çünkü clouser data saklar


//place adında String parametreli bir clouser örneği. in koyduğum için datayı saklamakla kalmayıp geri dönüş te yapıyor.
let drivingWithReturn = { (place: String) -> String
    in
    return "Im driving to the \(place)"
}

//Burada ayrı bir clouser ile önceki clouser ı çağırıp döndürdüğü datayı kullandım
let message = drivingWithReturn("London")

print(message) //Im driving to the London

//Trailing clouser syntax örneği
func travel(action: () -> Void) {
    print("ilk işlem") //Burada fonksiyonun başı
    action()
    print("Son işlem")  //Ve sonu belli
} //fakat ortadaki action kısmı void bir parametre olduğu için belirsiz

travel {
    print("Ortadaki işlem") //fonksiyonu kullanarak ortadaki işlemi esnekleştirebilirim
}

//Çok basit bir örnek. Para çekerken sistemin başı ve sonu bellidir. Fakat çekkmek istediğiniz miktar sürekli değişkendir.
func paraCek(transaction: () -> Void) {
    print("kart yerleştirildi")
    transaction()
    print("kart çıkartıldı")
}
var miktar = 50
paraCek {
    print("kullanıcı \(miktar) TL para çekti.")
}
//Yukarıda fonksiyonun içine Void bir closure eklediğim için sistemin içindeki transaction bloğunu istediğim gibi değiştirebilirim.


// MARK: - Closure Parametreli Fonksiyon Örnekleri

// Parametre olarak bir closure alan fonksiyon
// action: String parametre alıp hiçbir şey döndürmeyen (Void) bir closure
func travel(action: (String) -> Void) {
    print("Im getting ready to go")
    // Closure'ı çağır ve "London" parametresini gönder
    action("London")
    print("Im arrived")
}

// Fonksiyonu trailing closure syntax ile çağırma
// Closure parametresinin tipini açıkça belirtiyoruz
travel { (place: String) in
    print("Im going to \(place)")
}


// MARK: - Değer Döndüren Closure Örneği

// String parametre alıp String döndüren bir closure alan fonksiyon
func travel2(action: (String) -> String) {
    print("Im preparing")
    // Closure'ı çağır ve dönen değeri description değişkenine ata
    let description = action("London")
    print(description)
    print("Im arrived")
}

// Tam syntax ile closure kullanımı
// Parametre tipi, dönüş tipi ve return anahtar kelimesi açıkça belirtilmiş
travel2 { (place: String) -> String in
    return "Im going to \(place) in my car"
}

// Kısaltılmış syntax kullanımı
// Swift tip çıkarımı sayesinde tipler ve return anahtar kelimesi ihmal edilebilir
// Tek satırlık closure'larda return otomatik olarak eklenir
travel2 { place in
    "Im going to \(place)"
}


// MARK: - Closure ile Capture (Yakalama) Örneği

// Closure döndüren bir fonksiyon
// Dönüş tipi: Parametre almayan ve Void döndüren bir closure
func testOlustur() -> () -> Void {
    // Yerel değişkenler
    var kullanilan = 10
    var kullanilmayan = 20
    
    // Closure döndür
    // Bu closure, sadece 'kullanilan' değişkenini "capture" (yakalar) eder
    // 'kullanilmayan' değişkeni closure içinde kullanılmadığı için yakalanmaz
    return {
        print(kullanilan)
    }
}

// --------------------------------------------------
// MARK: - CLOSURE (Fonksiyon parametresi olarak)
// --------------------------------------------------

// 1️⃣ Parametre alan ve String dönen closure
func travel3(action: (String, Int) -> String) {
    print("Im preparing")                 // İşlem öncesi
    let description = action("London", 80) // Closure çağrılıyor
    print(description)                    // Closure'dan gelen sonuç
    print("Im done")                      // İşlem sonrası
}

// Trailing closure kullanımı
travel3 {
    "Im going to \($0) with \($1) kmph"
}


// 2️⃣ Tek parametreli closure
func goingSchool(school: (String) -> String) {
    print("Im preparing for the school")
    let vehicle = school("bus")
    print(vehicle)
    print("I arrived to school")
}

goingSchool {
    "Im going to school with the \($0)."
}


// 3️⃣ İki parametreli closure
func moneyTransfer(account: (String, Int) -> String) {
    print("Para hesaplanıyor...")
    let result = account("Fırat Sarar", 5000)
    print(result)
    print("İşlem tamamlandı.")
}

moneyTransfer {
    "\($0) hesabına \($1) TL para transferi gerçekleşti."
}


// 4️⃣ Üç parametreli closure
func winner(account: (String, Int, Int) -> String) {
    print("Yarışma bitti.")
    let win = account("Ahmet", 50, 1)
    print(win)
    print("Ödül verildi")
}

winner {
    "\($0) \($1) puan ile yarışmayı \($2). bitirdi"
}


// --------------------------------------------------
// MARK: - Fonksiyonun closure döndürmesi
// --------------------------------------------------

// Fonksiyon bir closure döndürüyor
func travelTo() -> (String) -> Void {
    return {
        print("Im going to \($0)")
    }
}

let travel = travelTo()
travel("London")   // Closure çağrısı

// Tek satırda çağırma
travelTo()("Antalya")


// Çok parametreli closure döndürme
func readBook() -> (String, String, Int) -> Void {
    return {
        print("I bought a book named \($0) from \($1). It's \($2) USD.")
    }
}

let reading = readBook()
reading("The Swarm", "Frank Schatzing", 10)


// --------------------------------------------------
// MARK: - Closure içinde state saklama (Capture)
// --------------------------------------------------

func traveledTo() -> (String) -> Void {
    var counter = 1   // Closure bu değişkeni hafızada tutar
    
    return {
        print("\(counter)- \($0).")
        counter += 1
    }
}

let travelCounter = traveledTo()
travelCounter("Antalya")
travelCounter("London")
travelCounter("Izmir")


// --------------------------------------------------
// MARK: - Struct Temelleri
// --------------------------------------------------

struct Degree {
    var temperature: Int
}

let temp = Degree(temperature: 30)
print("Bugün hava \(temp.temperature) derece.")


// Struct kopyalama davranışı (Value Type)
struct Person {
    var name: String
    var age: Int
}

var person1 = Person(name: "Emir", age: 25)
var person2 = Person(name: "Zeynep", age: 30)

person1 = person2   // Değer kopyalanır


// --------------------------------------------------
// MARK: - Computed Property
// --------------------------------------------------

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    // Hesaplanan özellik
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an olympic sport."
        } else {
            return "\(name) is not an olympic sport."
        }
    }
}

let football = Sport(name: "Football", isOlympicSport: false)
print(football.olympicStatus)


// Adult kontrolü
struct AdultAge {
    var name: String
    var age: Int
    
    var isAdult: Bool {
        age >= 18
    }
    
    var adultStatus: String {
        isAdult ? "Yes, \(name) is an adult" :
                  "No, \(name) is not an adult"
    }
}


// --------------------------------------------------
// MARK: - Property Observer (didSet)
// --------------------------------------------------

struct Progress {
    var taskName: String
    var amount: Int {
        didSet {
            if amount < 100 {
                print("\(taskName) devam ediyor: \(amount)%")
            } else {
                print("\(taskName) tamamlandı.")
            }
        }
    }
}

var progress = Progress(taskName: "İndirme", amount: 0)
progress.amount = 50
progress.amount = 100


// --------------------------------------------------
// MARK: - Method Kullanımı
// --------------------------------------------------

struct MonthlyIncome {
    var people: Int
    var salary: Int
    
    func income() -> Int {
        salary * people
    }
}

let income1 = MonthlyIncome(people: 5, salary: 23000)
print(income1.income())


// --------------------------------------------------
// MARK: - Skill Level Sistemi
// --------------------------------------------------

struct LearningSwiftProgress {
    var languageName: String
    
    var progress: Int {
        didSet {
            switch progress {
            case 0..<20:
                print("Beginner")
            case 20...50:
                print("Mid")
            case 51...85:
                print("Expert")
            default:
                print("Senior")
            }
        }
    }
}

var coder = LearningSwiftProgress(languageName: "Swift", progress: 32)
coder.progress = 89


// --------------------------------------------------
// MARK: - String Fonksiyonları
// --------------------------------------------------

var string = "Hi my name is Fırat and Im 27 years old."

print(string.count)                // Karakter sayısı
print(string.uppercased())         // Büyük harf
print(string.lowercased())         // Küçük harf
print(string.hasPrefix("Hi"))      // Başlangıç kontrol
print(string.hasSuffix("old."))    // Bitiş kontrol
print(string.contains("Fırat"))    // İçeriyor mu


// --------------------------------------------------
// MARK: - Array Temelleri
// --------------------------------------------------

var toys = ["SpiderMan"]

toys.append("Xmen")     // Eleman ekleme
print(toys.sorted())    // Alfabetik sıralama
toys.remove(at: 1)      // Index ile silme
print(toys.count)       // Eleman sayısı


// MARK: - Temel Init Örneği
struct Phone {
    var brand: String
    var price: Int
    var storage: Int
    
    // Parametresiz init - varsayılan değerler
    init() {
        brand = "iPhone"
        price = 30000
        storage = 128
    }
}

// MARK: - Çoklu Init Örneği
struct Coffee {
    var name: String
    var size: String
    var price: Double
    
    // Varsayılan init
    init() {
        name = "Americano"
        size = "Medium"
        price = 15.0
    }
    
    // Parametreli init
    init(name: String, size: String, price: Double) {
        self.name = name
        self.size = size
        self.price = price
    }
}

let coffee1 = Coffee(name: "Espresso", size: "Large", price: 13.0)
print("Kahve: \(coffee1.name), Boyut: \(coffee1.size), Fiyat: \(coffee1.price)₺")

// MARK: - Init İçinde Koşullu Mantık
struct BankAccount {
    var accountNumber: String
    var balance: Double
    var isActive: Bool
    
    init(accountNumber: String, initialDeposit: Double) {
        self.accountNumber = accountNumber
        self.balance = initialDeposit
        // Ternary operator ile daha temiz
        self.isActive = initialDeposit > 1000
    }
    
    func displayInfo() {
        print("Hesap: \(accountNumber), Bakiye: \(balance)₺, Aktif: \(isActive ? "Evet" : "Hayır")")
    }
}

let account1 = BankAccount(accountNumber: "TR123", initialDeposit: 1500)
account1.displayInfo()

// MARK: - Computed Property Örneği (Area stored değil computed olmalı)
struct Rectangle {
    var width: Double
    var height: Double
    
    // Computed property - her çağrıldığında hesaplanır
    var area: Double {
        return width * height
    }
    
    // Normal init
    init(width: Double, height: Double) {
        self.width = width
        self.height = height
    }
    
    // Kare için convenience init
    init(squareSide: Double) {
        self.width = squareSide
        self.height = squareSide
    }
    
    func displayArea() {
        print("Alan: \(area) birim kare")
    }
}

let rect = Rectangle(width: 5, height: 10)
rect.displayArea()

let square = Rectangle(squareSide: 5)
square.displayArea()

// MARK: - Validasyon ile Init
struct Temperature {
    var celsius: Double // İngilizce doğru yazımı "celsius"
    
    // Computed property
    var fahrenheit: Double {
        return (celsius * 9/5) + 32
    }
    
    init(celsius: Double) {
        // Mutlak sıfırın altına izin verme
        if celsius < -273.15 {
            self.celsius = -273.15
            print("⚠️ Uyarı: Mutlak sıfırın altına ayarlanamaz. -273.15°C olarak ayarlandı.")
        } else {
            self.celsius = celsius
        }
    }
    
    func display() {
        print("Sıcaklık: \(celsius)°C / \(fahrenheit)°F")
    }
}

let antalya = Temperature(celsius: 23)
antalya.display()

let invalidTemp = Temperature(celsius: -300) // Validasyon çalışacak
invalidTemp.display()

// MARK: - İsimlendirme Tutarlılığı
struct Personal {
    var name: String
    
    init(name: String) {
        self.name = name
        // Init içinde print kullanmak genelde önerilmez
        // Ama eğitim amaçlı bırakıldı
        print("\(name) adlı kişi oluşturuldu.")
    }
}

let personal1 = Personal(name: "Fırat")

// MARK: - Lazy Property Örneği
struct FamilyTree {
    init() {
        print("🌳 Aile ağacı oluşturuldu.")
    }
}

struct PersonWithFamily {
    var name: String
    
    // Lazy: İlk erişimde oluşturulur
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
        print("\(name) adlı kişi oluşturuldu (aile ağacı henüz yüklenmedi)")
    }
}

var firat = PersonWithFamily(name: "Fırat")
print("Aile ağacına erişiliyor...")
firat.familyTree // İlk erişimde FamilyTree init'i çalışacak
firat.familyTree // İkinci erişimde init çalışmayacak

// MARK: - Lazy Property ile Expensive Operation
struct Website {
    var url: String
    var content: String
    
    init(url: String, content: String) {
        self.url = url
        self.content = content
    }
    
    func load() {
        print("🌐 \(content) sayfası \(url) adresinden yükleniyor...")
    }
}

let website1 = Website(url: "www.apple.com", content: "Apple Inc.")
website1.load()

// MARK: - Lazy Closure ile Hesaplama
struct Game {
    var name: String
    
    // Lazy closure: İlk erişimde çalışır
    lazy var mapData: String = {
        print("🗺️ Harita yükleniyor...")
        return "Büyük Açık Dünya Haritası"
    }()
}

var game = Game(name: "Roblox")
print("Oyun adı: \(game.name)")
print("İlk harita erişimi: \(game.mapData)") // Closure çalışacak
print("İkinci harita erişimi: \(game.mapData)") // Closure çalışmayacak

// MARK: - Static Property Örneği
@MainActor
struct Student {
    static var classSize = 0 // Tüm Student instance'ları için ortak
    var name: String
    
    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
    
    static func displayClassInfo() {
        print("📚 Toplam öğrenci sayısı: \(classSize)")
    }
}

let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
let john = Student(name: "John")

Student.displayClassInfo()

// MARK: - Private Property ve Encapsulation
struct SecureID {
    private var id: String // Dışarıdan erişilemez
    
    init(id: String) {
        self.id = id
    }
    
    // Public getter - kontrollü erişim
    func getID() -> String {
        return "ID: ***\(id.suffix(3))" // Son 3 hane göster
    }
    
    // ID'yi doğrula
    func validateID(input: String) -> Bool {
        return input == id
    }
}

let secureUser = SecureID(id: "123456789")
print(secureUser.getID()) // Maskelenmiş ID
print("ID doğru mu? \(secureUser.validateID(input: "123456789"))")
// print(secureUser.id) // ❌ Hata verir - private property

// MARK: - Bonus: Failable Init Örneği
struct User {
    var username: String
    var age: Int
    
    // Failable init - geçersiz değerlerde nil döner
    init?(username: String, age: Int) {
        guard !username.isEmpty, age >= 13 else {
            return nil // Init başarısız
        }
        self.username = username
        self.age = age
    }
}

if let validUser = User(username: "Fırat", age: 25) {
    print("✅ Kullanıcı oluşturuldu: \(validUser.username)")
} else {
    print("❌ Kullanıcı oluşturulamadı")
}

if let invalidUser = User(username: "", age: 10) {
    print("Kullanıcı: \(invalidUser.username)")
} else {
    print("❌ Geçersiz kullanıcı - yaş 13'ten küçük veya username boş")
}

// MARK: - 1. Temel Class Örneği ve Kalıtım (Inheritance)

/// Temel köpek sınıfı - Tüm köpeklerin ortak özelliklerini içerir
class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    /// Köpek havlama sesi - Child class'lar bu metodu override edebilir
    func bark() {
        print("🐕 Hav Hav!")
    }
}

// Normal köpek oluşturma
let poppy = Dog(name: "Poppy", breed: "French Bulldog")
print("İsim: \(poppy.name)")
print("Irk: \(poppy.breed)")
poppy.bark()
// Çıktı: 🐕 Hav Hav!

print("\n--- Kalıtım Örneği ---")

/// Poodle sınıfı - Dog'dan türer (Child class)
class Poodle: Dog {
    /// Poodle için özel init - breed otomatik "Poodle" olur
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
    
    /// Parent class'ın bark metodunu override ediyoruz
    /// Poodle'lar farklı havlar!
    override func bark() {
        print("🐩 Yip Yip!")
    }
}

let max = Poodle(name: "Max")
print("\nMax (Poodle):")
max.bark() // 🐩 Yip Yip! (Override edilmiş metod)

print("\nPoppy (French Bulldog):")
poppy.bark() // 🐕 Hav Hav! (Orijinal metod)


// MARK: - 2. Struct vs Class: Kopyalama Davranışı Farkı

print("\n\n=== STRUCT ÖRNEĞİ (Value Type) ===")

/// Struct - Value Type (Değer Tipi)
/// Kopyalandığında tamamen YENİ bir kopya oluşturulur
struct SingerStruct {
    var name = "Taylor Swift"
}

var singer = SingerStruct()
print("Orijinal: \(singer.name)")

// Kopya oluşturuyoruz
var singerCopy = singer
singerCopy.name = "Ed Sheeran"

// Sonuç: İki FARKLI nesne var
print("Orijinal singer: \(singer.name)")      // Taylor Swift ✅
print("Kopya singerCopy: \(singerCopy.name)") // Ed Sheeran ✅
print("→ Struct: Her biri FARKLI kopya!")


print("\n=== CLASS ÖRNEĞİ (Reference Type) ===")

/// Class - Reference Type (Referans Tipi)
/// Kopyalandığında AYNI nesneye yeni bir referans oluşturulur
class SingerClass {
    var name = "Taylor Swift"
}

var singer1 = SingerClass()
print("Orijinal: \(singer1.name)")

// "Kopya" oluşturuyoruz (aslında aynı nesneye referans)
var singerCopy1 = singer1
singerCopy1.name = "Ed Sheeran"

// Sonuç: İKİSİ DE AYNI nesneyi gösteriyor!
print("Orijinal singer1: \(singer1.name)")       // Ed Sheeran 😱
print("'Kopya' singerCopy1: \(singerCopy1.name)") // Ed Sheeran 😱
print("→ Class: Her ikisi de AYNI nesneyi gösteriyor!")


// MARK: - 3. Deinitializer (Yıkıcı Metod) Örneği

print("\n\n=== DEINİTİALİZER ÖRNEĞİ ===")

/// Book sınıfı - Deinitializer ile bellek yönetimini gösterir
class Book {
    var name: String
    
    init(name: String) {
        self.name = name
        print("📖 '\(name)' kitabı oluşturuldu")
    }
    
    /// Deinitializer - Nesne bellekten silinirken otomatik çağrılır
    /// Sadece class'larda kullanılabilir, struct'larda YOKTUR
    deinit {
        print("🗑️ '\(name)' kitabı bellekten silindi")
    }
}

/// Fonksiyon bitince book1 ve book2 otomatik yok edilir
func testScope() {
    print("\n--- Fonksiyon Başlatılıyor ---")
    
    let book1 = Book(name: "iOS Geliştirme")
    let book2 = Book(name: "Swift Öğreniyorum")
    
    print("--- Fonksiyon Sona Eriyor ---")
    // Fonksiyon bitince deinit otomatik çağrılacak
}

testScope()
print("--- Fonksiyon Tamamlandı, Bellek Temizlendi ---\n")

// Beklenen Çıktı:
// --- Fonksiyon Başlatılıyor ---
// 📖 'iOS Geliştirme' kitabı oluşturuldu
// 📖 'Swift Öğreniyorum' kitabı oluşturuldu
// --- Fonksiyon Sona Eriyor ---
// 🗑️ 'Swift Öğreniyorum' kitabı bellekten silindi
// 🗑️ 'iOS Geliştirme' kitabı bellekten silindi
// --- Fonksiyon Tamamlandı, Bellek Temizlendi ---


// MARK: - 4. Class Constant Enforcement (Sabit Zorlama)

print("\n=== CLASS: LET İLE OLUŞTURULSA BİLE VAR PROPERTY DEĞİŞİR ===")

/// Dancer sınıfı - let property değişmez
class Dancer {
    let name = "Taylor Swift"  // let - değiştirilemez
    var age = 33               // var - değiştirilebilir
}

// let ile instance oluşturduk
let dancer = Dancer()

// let property değiştirilemez
// dancer.name = "Ed Sheeran" // ❌ HATA! Property let

// Ama var property değiştirilebilir!
dancer.age = 34 // ✅ ÇALIŞIR! Property var

print("İsim: \(dancer.name)")  // Taylor Swift
print("Yaş: \(dancer.age)")    // 34

print("→ Class: let instance olsa bile, var property'ler değiştirilebilir!")


// MARK: - 5. Kapsamlı Karşılaştırma Örneği

print("\n\n=== STRUCT VS CLASS KAPSAMLI KARŞILAŞTIRMA ===")

// STRUCT ÖRNEK
struct GameCharacterStruct {
    var name: String
    var health: Int
    
    mutating func takeDamage(amount: Int) {
        health -= amount
        print("💔 \(name) hasar aldı. Kalan can: \(health)")
    }
}

print("\n--- Struct Testi ---")
var warrior1 = GameCharacterStruct(name: "Savaşçı-1", health: 100)
var warrior2 = warrior1  // YENİ KOPYA
warrior2.name = "Savaşçı-2"
warrior2.takeDamage(amount: 30)

print("warrior1: \(warrior1.name), Can: \(warrior1.health)") // 100 ✅
print("warrior2: \(warrior2.name), Can: \(warrior2.health)") // 70 ✅
print("→ İki FARKLI karakter!")


// CLASS ÖRNEK
class GameCharacterClass {
    var name: String
    var health: Int
    
    init(name: String, health: Int) {
        self.name = name
        self.health = health
    }
    
    func takeDamage(amount: Int) {
        health -= amount
        print("💔 \(name) hasar aldı. Kalan can: \(health)")
    }
    
    deinit {
        print("👋 \(name) oyundan ayrıldı")
    }
}

print("\n--- Class Testi ---")
let mage1 = GameCharacterClass(name: "Büyücü-1", health: 100)
let mage2 = mage1  // AYNI nesneye referans
mage2.name = "Büyücü-2"
mage2.takeDamage(amount: 30)

print("mage1: \(mage1.name), Can: \(mage1.health)") // 70 😱
print("mage2: \(mage2.name), Can: \(mage2.health)") // 70 😱
print("→ AYNI karaktere iki referans!")


// MARK: - 6. Final Class Örneği

print("\n\n=== FINAL CLASS ÖRNEĞİ ===")

/// Final class - Bu class'tan türetilemez (inheritance yapılamaz)
final class PaymentProcessor {
    private var balance: Double
    
    init(balance: Double) {
        self.balance = balance
    }
    
    func processPayment(amount: Double) -> Bool {
        guard amount > 0, amount <= balance else {
            print("❌ Ödeme başarısız!")
            return false
        }
        balance -= amount
        print("✅ \(amount)₺ ödeme yapıldı. Kalan bakiye: \(balance)₺")
        return true
    }
}

let processor = PaymentProcessor(balance: 1000)
processor.processPayment(amount: 250)

// Bu class'tan türeyemezsiniz!
// class MyPaymentProcessor: PaymentProcessor { } // ❌ HATA!
print("→ Final class: Kalıtım alınamaz, kritik işlemler korunur!")


// MARK: - 7. Özet ve Karşılaştırma

print("\n\n=== ÖZET ===")
print("""
📊 STRUCT vs CLASS FARKLARI:

1️⃣ Kalıtım:
   • Struct: ❌ Kalıtım YOK
   • Class:  ✅ Kalıtım VAR (override, super, final)

2️⃣ Kopyalama:
   • Struct: 📦 Value Type - Gerçek kopya oluşur
   • Class:  🔗 Reference Type - Aynı nesneye referans

3️⃣ Deinitializer:
   • Struct: ❌ deinit YOK
   • Class:  ✅ deinit VAR - Temizlik işlemleri

4️⃣ Constant Enforcement:
   • Struct: let instance → Hiçbir şey değişmez
   • Class:  let instance → var property'ler değişir

5️⃣ Ne zaman kullanmalı:
   • Struct: Basit veri, değer semantiği, varsayılan seçim
   • Class:  Kalıtım, referans semantiği, deinit gerekiyorsa
""")
