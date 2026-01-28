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
