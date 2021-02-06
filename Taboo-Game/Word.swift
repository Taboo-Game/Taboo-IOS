//
//  Word.swift
//  Taboo-Game
//
//  Created by Hüseyin GÜLECEN on 19.01.2021.
//

import Foundation
import UIKit
import CoreData

var wordsArray : [Word] = []
var myWordDescribe : [String] = []
var myWordForbidden1 : [String] = []
var myWordForbidden2 : [String] = []
var myWordForbidden3 : [String] = []
var myWordForbidden4 : [String] = []
var myWordForbidden5 : [String] = []


class Word{
    
    var wordDescribe: String
    var wordForbidden1: String
    var wordForbidden2: String
    var wordForbidden3: String
    var wordForbidden4: String
    var wordForbidden5: String

    

    init(wordDescribe: String,wordForbidden1: String,wordForbidden2: String,wordForbidden3: String,wordForbidden4: String,wordForbidden5: String ) {
    
        self.wordDescribe = wordDescribe
        
        self.wordForbidden1 = wordForbidden1
        
        self.wordForbidden2 = wordForbidden2
        
        self.wordForbidden3 = wordForbidden3
        
        self.wordForbidden4 = wordForbidden4
        self.wordForbidden5 = wordForbidden5
        
    }
   
}
func getDataFromCore(){
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let context = appDelegate.persistentContainer.viewContext
            
    let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Words")
    fetchRequest.returnsObjectsAsFaults = false
            
    do {
        let results = try context.fetch(fetchRequest)
        if results.count > 0 {
            for result in results as! [NSManagedObject] {
                if let wDescribe = result.value(forKey: "wordDescribe") as? String {
                    myWordDescribe.append(wDescribe)
                    print(wDescribe)
                }
                if let wForbidden = result.value(forKey: "wordForbidden1") as? String {
                    myWordForbidden1.append(wForbidden)
                }
                if let wForbidden = result.value(forKey: "wordForbidden2") as? String {
                    myWordForbidden2.append(wForbidden)
                }
                if let wForbidden = result.value(forKey: "wordForbidden3") as? String {
                    myWordForbidden3.append(wForbidden)
                }
                if let wForbidden = result.value(forKey: "wordForbidden4") as? String {
                    myWordForbidden4.append(wForbidden)
                }
                if let wForbidden = result.value(forKey: "wordForbidden5") as? String {
                    myWordForbidden5.append(wForbidden)
                }
            }
        }
    } catch {
        print("error")
    }
}

func wordLists ()
{

    wordsArray.append(Word(wordDescribe: "FİİL", wordForbidden1: "İŞ", wordForbidden2: "OLUŞ", wordForbidden3: "HAREKET", wordForbidden4: "EYLEM", wordForbidden5: "SÖZCÜK"))
    
    wordsArray.append(Word(wordDescribe: "UYAK", wordForbidden1: "ŞİİR", wordForbidden2: "DİZE", wordForbidden3: "BENZERLİK", wordForbidden4: "KAFİYE", wordForbidden5: "SES"))
    wordsArray.append(Word(wordDescribe: "SÖZLÜK", wordForbidden1: "ANLAM", wordForbidden2: "KELİME", wordForbidden3: "SÖZCÜK", wordForbidden4: "AÇIKLAMA", wordForbidden5: "LÜGAT"))
    wordsArray.append(Word(wordDescribe: "KUŞBAKIŞI ", wordForbidden1: "HARİTA", wordForbidden2: "TEPE", wordForbidden3: "YUKARI", wordForbidden4: "GÖRMEK", wordForbidden5: "KROKİ"))
    wordsArray.append(Word(wordDescribe: "OKKA", wordForbidden1: "AĞIRLIK", wordForbidden2: "ÖLÇÜ", wordForbidden3: "BİRİM", wordForbidden4: "KİLO", wordForbidden5: "TARTI"))
    wordsArray.append(Word(wordDescribe: "KÖK", wordForbidden1: "SÖZCÜK", wordForbidden2: "YAPIM", wordForbidden3: "ÇEKİM", wordForbidden4: "EK", wordForbidden5: "KELİME"))
    wordsArray.append(Word(wordDescribe: "ŞİİR", wordForbidden1: "ŞAİR", wordForbidden2: "MISRA", wordForbidden3: "DİZE", wordForbidden4: "KITA", wordForbidden5: "DÖRTLÜK"))
    wordsArray.append(Word(wordDescribe: "ÖYKÜ", wordForbidden1: "HİKÂYE", wordForbidden2: "KAHRAMAN", wordForbidden3: "YAZAR", wordForbidden4: "YER", wordForbidden5: "KİTAP"))
    wordsArray.append(Word(wordDescribe: "MASAL", wordForbidden1: "OLAĞANÜSTÜ", wordForbidden2: "KAHRAMAN", wordForbidden3: "YAZAR", wordForbidden4: "KELOĞLAN", wordForbidden5: "KİTAP"))
    wordsArray.append(Word(wordDescribe: "FAY", wordForbidden1: "HAT", wordForbidden2: "DEPREM", wordForbidden3: "KIRILMAK", wordForbidden4: "SARSILMAK", wordForbidden5: "İSTANBUL"))
    wordsArray.append(Word(wordDescribe: "KÜÇÜMSEME", wordForbidden1: "NİTELİK", wordForbidden2: "DEĞERSİZ", wordForbidden3: "YARGI", wordForbidden4: "CÜMLE", wordForbidden5: "AZIMSAMA"))
    wordsArray.append(Word(wordDescribe: "METRES", wordForbidden1: "KARI KOCA", wordForbidden2: "EVLİ", wordForbidden3: "ALDATMAK", wordForbidden4: "YASAK", wordForbidden5: "İLİŞKİ"))
    wordsArray.append(Word(wordDescribe: "FAX", wordForbidden1: "ÇEKMEK", wordForbidden2: "GÖNDERMEK", wordForbidden3: "YAZI", wordForbidden4: "KAĞIT", wordForbidden5: "FOTOKOPİ"))
    wordsArray.append(Word(wordDescribe: "GAZİ", wordForbidden1: "SAVAŞ", wordForbidden2: "YARALANMAK", wordForbidden3: "ŞEHİT", wordForbidden4: "İSTİKLAL MADALYASI", wordForbidden5: "ATATÜRK"))
    wordsArray.append(Word(wordDescribe: "VEKTÖR", wordForbidden1: "YÖN", wordForbidden2: "FİZİK", wordForbidden3: "SKALER", wordForbidden4: "ÇİZMEK", wordForbidden5: "DOĞRU"))
    wordsArray.append(Word(wordDescribe: "HASIRALTI ETMEK", wordForbidden1: "SAKLAMAK", wordForbidden2: "GİZLEMEK", wordForbidden3: "KORUMAK", wordForbidden4: "YOK ETMEK", wordForbidden5: "ÖRTBAS"))
    wordsArray.append(Word(wordDescribe: "VENEDİK", wordForbidden1: "GONDOL", wordForbidden2: "ÜLKE", wordForbidden3: "SU", wordForbidden4: "İTALYA", wordForbidden5: "YÜZMEK"))
    wordsArray.append(Word(wordDescribe: "SELÜLİT", wordForbidden1: "BACAK", wordForbidden2: "KADIN", wordForbidden3: "CİLT", wordForbidden4: "YAĞ", wordForbidden5: "PORTAKAL"))
    wordsArray.append(Word(wordDescribe: "NORM", wordForbidden1: "KURAL", wordForbidden2: "YERLEŞMİŞ", wordForbidden3: "İLKE", wordForbidden4: "YASA", wordForbidden5: "DÜZEN"))
    wordsArray.append(Word(wordDescribe: "ALT", wordForbidden1: "ÜST", wordForbidden2: "YER", wordForbidden3: "TABAN", wordForbidden4: "DERECE", wordForbidden5: "SINIF"))
    wordsArray.append(Word(wordDescribe: "ABONE", wordForbidden1: "YONCA EVCİMİK", wordForbidden2: "SATIN ALMAK", wordForbidden3: "ÜYE", wordForbidden4: "DERGİ", wordForbidden5: "GAZETE"))
    wordsArray.append(Word(wordDescribe: "TEZGAH", wordForbidden1: "KURMAK", wordForbidden2: "MASA", wordForbidden3: "MUTFAK", wordForbidden4: "SATICI", wordForbidden5: "BÜFE"))
    wordsArray.append(Word(wordDescribe: "TEMAS", wordForbidden1: "FİZİKSEL", wordForbidden2: "DEĞME", wordForbidden3: "DOKUNMA", wordForbidden4: "MÜNASEBET", wordForbidden5: "BULUŞMAK"))
    wordsArray.append(Word(wordDescribe: "EFSANE", wordForbidden1: "HAYALİ", wordForbidden2: "YARADILIŞ", wordForbidden3: "ÖYKÜ", wordForbidden4: "ABARTMAK", wordForbidden5: "SÖYLENCE"))
    wordsArray.append(Word(wordDescribe: "İMLA", wordForbidden1: "KURAL", wordForbidden2: "YAZIM", wordForbidden3: "DİL BİLGİSİ", wordForbidden4: "HATA", wordForbidden5: "TERİM"))
    wordsArray.append(Word(wordDescribe: "SAKAL", wordForbidden1: "KIL", wordForbidden2: "YÜZ", wordForbidden3: "TIRAŞ", wordForbidden4: "KESMEK", wordForbidden5: "TOP"))
    wordsArray.append(Word(wordDescribe: "LOSYON", wordForbidden1: "TIRAŞ", wordForbidden2: "KOLONYA", wordForbidden3: "PARFÜM", wordForbidden4: "KOKU", wordForbidden5: "BERBER"))
    wordsArray.append(Word(wordDescribe: "BARBAR", wordForbidden1: "KABA", wordForbidden2: "İLKEL", wordForbidden3: "KIRICI", wordForbidden4: "UYGARLAŞMA", wordForbidden5: "AKIN"))
    wordsArray.append(Word(wordDescribe: "FABL", wordForbidden1: "MASAL", wordForbidden2: "HAYVAN", wordForbidden3: "HİKAYE", wordForbidden4: "ÖYKÜ", wordForbidden5: "DERS"))
    wordsArray.append(Word(wordDescribe: "ABDESTHANE", wordForbidden1: "TUVALET", wordForbidden2: "WC", wordForbidden3: "HELA", wordForbidden4: "YÜZNUMARA", wordForbidden5: "ALMAK"))
    wordsArray.append(Word(wordDescribe: "HAKİ", wordForbidden1: "RENK", wordForbidden2: "YEŞİL", wordForbidden3: "KAHVERENGİ", wordForbidden4: "ÇALMAK", wordForbidden5: "KAÇMAK"))
    wordsArray.append(Word(wordDescribe: "LATİN AMERİKA", wordForbidden1: "GÜNEY", wordForbidden2: "KITA", wordForbidden3: "BREZİLYA", wordForbidden4: "ÜLKE", wordForbidden5: "ARJANTİN"))
    wordsArray.append(Word(wordDescribe: "DEFİNE", wordForbidden1: "HARİTA", wordForbidden2: "PARA", wordForbidden3: "ALTIN", wordForbidden4: "ALİ", wordForbidden5: "BABA"))
    wordsArray.append(Word(wordDescribe: "ARAMAK", wordForbidden1: "SAÇ", wordForbidden2: "ARAŞTIRMAK", wordForbidden3: "DERLEMEK", wordForbidden4: "ATEŞLEMEK", wordForbidden5: "AYIKLAMAK"))
    wordsArray.append(Word(wordDescribe: "İPUCU", wordForbidden1: "İZ", wordForbidden2: "EMARE", wordForbidden3: "VERMEK", wordForbidden4: "DEDEKTİF", wordForbidden5: "SIR"))
    wordsArray.append(Word(wordDescribe: "ALTIN", wordForbidden1: "TAKMAK", wordForbidden2: "DEĞERLİ", wordForbidden3: "KUYUMCU", wordForbidden4: "SARRAF", wordForbidden5: "ÇEYREK"))
    wordsArray.append(Word(wordDescribe: "AÇISAL HIZ", wordForbidden1: "FİZİK", wordForbidden2: "VEKTÖREL", wordForbidden3: "HAREKET", wordForbidden4: "DAİRESEL", wordForbidden5: "TARAMAK"))
    wordsArray.append(Word(wordDescribe: "SÜZMEK", wordForbidden1: "SU", wordForbidden2: "AYIRMAK", wordForbidden3: "SIVI", wordForbidden4: "MAKARNA", wordForbidden5: "KATI"))
    wordsArray.append(Word(wordDescribe: "KABAKULAK", wordForbidden1: "HASTALIK", wordForbidden2: "İLTİHAP", wordForbidden3: "ŞİŞMEK", wordForbidden4: "BEZ", wordForbidden5: "TÜKÜRÜK"))
    wordsArray.append(Word(wordDescribe: "KÜF", wordForbidden1: "EKMEK", wordForbidden2: "YEŞİL", wordForbidden3: "MANTAR", wordForbidden4: "BAKTERİ", wordForbidden5: "KURT"))
    wordsArray.append(Word(wordDescribe: "ANATOMİ", wordForbidden1: "VÜCUT", wordForbidden2: "SİSTEM", wordForbidden3: "İNCELEMEK", wordForbidden4: "ORGAN", wordForbidden5: "DİŞ"))
    wordsArray.append(Word(wordDescribe: "KARL MARX", wordForbidden1: "SOSYALİZM", wordForbidden2: "KOMÜNİZM", wordForbidden3: "FELSEFE", wordForbidden4: "MANİFESTO", wordForbidden5: "KAPİTAL"))
    wordsArray.append(Word(wordDescribe: "ALTERNATİF AKIM", wordForbidden1: "DOĞRU", wordForbidden2: "ELEKTRİK", wordForbidden3: "DEĞİŞKEN", wordForbidden4: "NİKOLA TESLA", wordForbidden5: "SİNÜS"))
    wordsArray.append(Word(wordDescribe: "FOTOKOPİ", wordForbidden1: "KOPYA", wordForbidden2: "MAKİNE", wordForbidden3: "FAX", wordForbidden4: "TARAMAK", wordForbidden5: "KIRTASİYE"))
    wordsArray.append(Word(wordDescribe: "BARKOD", wordForbidden1: "ÜRÜN", wordForbidden2: "FİYAT", wordForbidden3: "İMZA", wordForbidden4: "ÇİZGİ", wordForbidden5: "ALT"))
    wordsArray.append(Word(wordDescribe: "ODAK", wordForbidden1: "OPTİK", wordForbidden2: "IŞIK", wordForbidden3: "KAYNAK", wordForbidden4: "TOPLANMAK", wordForbidden5: "MİHRAK"))
    wordsArray.append(Word(wordDescribe: "MAKAS", wordForbidden1: "KUMAŞ", wordForbidden2: "KESMEK", wordForbidden3: "KAĞIT", wordForbidden4: "NİŞAN", wordForbidden5: "TERZİ"))
    wordsArray.append(Word(wordDescribe: "KANTİN", wordForbidden1: "OKUL", wordForbidden2: "TOST", wordForbidden3: "KAFETERYA ", wordForbidden4: "ÖĞRENCİ ", wordForbidden5: "YEMEK"))
    wordsArray.append(Word(wordDescribe: "İMA ETMEK", wordForbidden1: "ANLAM ", wordForbidden2: "İZ ", wordForbidden3: "DURUM ", wordForbidden4: "DAVRANIŞ ", wordForbidden5: "ALAMET"))
    wordsArray.append(Word(wordDescribe: "MÜHİMMAT", wordForbidden1: "DEPO ", wordForbidden2: "SAVAŞ ", wordForbidden3: "CEPHANE ", wordForbidden4: "ORDU ", wordForbidden5: "SİLAH"))
    wordsArray.append(Word(wordDescribe: "HIÇKIRIK", wordForbidden1: "SES ", wordForbidden2: "TUTMAK ", wordForbidden3: "DİYAFRAM ", wordForbidden4: "SU ", wordForbidden5: "NEFES"))
    wordsArray.append(Word(wordDescribe: "BUZ DEVRİ", wordForbidden1: "ESKİ ÇAĞ", wordForbidden2: "SOĞUK ", wordForbidden3: "ERİMEK ", wordForbidden4: "KAR ", wordForbidden5: "ÇİZGİ FİLM"))
    wordsArray.append(Word(wordDescribe: "SALSA", wordForbidden1: "SOS ", wordForbidden2: "DANS ", wordForbidden3: "LATİN ", wordForbidden4: "İSPANYOL ", wordForbidden5: "PARTİ"))
    wordsArray.append(Word(wordDescribe: "BONCUK", wordForbidden1: "KOLYE ", wordForbidden2: "TAKI ", wordForbidden3: "RENKLİ ", wordForbidden4: "KÜÇÜK ", wordForbidden5: "YUVARLAK"))
    wordsArray.append(Word(wordDescribe: "TRAVESTİ", wordForbidden1: "ERKEK ", wordForbidden2: "KADIN ", wordForbidden3: "TRANSSEKSÜEL ", wordForbidden4: "KILIK ", wordForbidden5: "GİRMEK"))
    wordsArray.append(Word(wordDescribe: "DAKTİLO", wordForbidden1: "YAZMAK ", wordForbidden2: "HARF ", wordForbidden3: "KAĞIT ", wordForbidden4: "TUŞ ", wordForbidden5: "STİLO"))
    wordsArray.append(Word(wordDescribe: "TELSİZ", wordForbidden1: "TELEFON ", wordForbidden2: "KONUŞMAK ", wordForbidden3: "POLİS ", wordForbidden4: "İLETİŞİM ", wordForbidden5: "BASMAK"))
    wordsArray.append(Word(wordDescribe: "SANDAL", wordForbidden1: "MOTOR ", wordForbidden2: "DENİZ ", wordForbidden3: "KÜREK ", wordForbidden4: "SEFA ", wordForbidden5: "BALIKÇI"))
    wordsArray.append(Word(wordDescribe: "HAÇ", wordForbidden1: "HRİSTİYANLIK", wordForbidden2: "ÇAĞLA ŞİKEL", wordForbidden3: "ARTI İŞARETİ", wordForbidden4: "İSA ", wordForbidden5: "ÇARMIH"))
    wordsArray.append(Word(wordDescribe: "ASİT", wordForbidden1: "MAVİ ", wordForbidden2: "KIRMIZI ", wordForbidden3: "TURNUSOL ", wordForbidden4: "BAZ ", wordForbidden5: "MİDE"))
    wordsArray.append(Word(wordDescribe: "KUŞ BAKIŞI", wordForbidden1: "YÜKSEK ", wordForbidden2: "GENEL ", wordForbidden3: "HAYVAN ", wordForbidden4: "GÖRMEK ", wordForbidden5: "ALAN"))
    wordsArray.append(Word(wordDescribe: "HATIR", wordForbidden1: "GÖNÜL", wordForbidden2: "KALP ", wordForbidden3: "HAFIZA ", wordForbidden4: "ZİHİN", wordForbidden5: "KIRMAK"))
    wordsArray.append(Word(wordDescribe: "İMRENMEK", wordForbidden1: "KISKANMAK ", wordForbidden2: "GIPTA ETMEK", wordForbidden3: "ÖZENMEK ", wordForbidden4: "CANI ÇEKMEK", wordForbidden5: "İSTEMEK"))
    wordsArray.append(Word(wordDescribe: "DUMUR", wordForbidden1: "KÖRELMEK ", wordForbidden2: "APTALLAŞMAK ", wordForbidden3: "ŞOK OLMAK ", wordForbidden4: "ŞAŞIRMAK ", wordForbidden5: "ŞAŞKINA DÖNMEK"))
    wordsArray.append(Word(wordDescribe: "KAHIR", wordForbidden1: "MAHVETME ", wordForbidden2: "PERİŞAN ", wordForbidden3: "EZME ", wordForbidden4: "ÇEKMEK ", wordForbidden5: "ETMEK"))
    
    
    print("yeayyy")
    print(wordsArray.count)
    

    wordsArray.append(Word(wordDescribe: "FİİL", wordForbidden1: "İŞ", wordForbidden2: "OLUŞ", wordForbidden3: "HAREKET", wordForbidden4: "EYLEM", wordForbidden5: "SÖZCÜK"))
    wordsArray.append(Word(wordDescribe: "UYAK", wordForbidden1: "ŞİİR", wordForbidden2: "DİZE", wordForbidden3: "BENZERLİK", wordForbidden4: "KAFİYE", wordForbidden5: "SES"))
    wordsArray.append(Word(wordDescribe: "SÖZLÜK", wordForbidden1: "ANLAM", wordForbidden2: "KELİME", wordForbidden3: "SÖZCÜK", wordForbidden4: "AÇIKLAMA", wordForbidden5: "LÜGAT"))
    wordsArray.append(Word(wordDescribe: "KUŞBAKIŞI ", wordForbidden1: "HARİTA", wordForbidden2: "TEPE", wordForbidden3: "YUKARI", wordForbidden4: "GÖRMEK", wordForbidden5: "KROKİ"))
    wordsArray.append(Word(wordDescribe: "OKKA", wordForbidden1: "AĞIRLIK", wordForbidden2: "ÖLÇÜ", wordForbidden3: "BİRİM", wordForbidden4: "KİLO", wordForbidden5: "TARTI"))
    wordsArray.append(Word(wordDescribe: "KÖK", wordForbidden1: "SÖZCÜK", wordForbidden2: "YAPIM", wordForbidden3: "ÇEKİM", wordForbidden4: "EK", wordForbidden5: "KELİME"))
    wordsArray.append(Word(wordDescribe: "ŞİİR", wordForbidden1: "ŞAİR", wordForbidden2: "MISRA", wordForbidden3: "DİZE", wordForbidden4: "KITA", wordForbidden5: "DÖRTLÜK"))
    wordsArray.append(Word(wordDescribe: "ÖYKÜ", wordForbidden1: "HİKÂYE", wordForbidden2: "KAHRAMAN", wordForbidden3: "YAZAR", wordForbidden4: "YER", wordForbidden5: "KİTAP"))
    wordsArray.append(Word(wordDescribe: "MASAL", wordForbidden1: "OLAĞANÜSTÜ", wordForbidden2: "KAHRAMAN", wordForbidden3: "YAZAR", wordForbidden4: "KELOĞLAN", wordForbidden5: "KİTAP"))
    wordsArray.append(Word(wordDescribe: "FAY", wordForbidden1: "HAT", wordForbidden2: "DEPREM", wordForbidden3: "KIRILMAK", wordForbidden4: "SARSILMAK", wordForbidden5: "İSTANBUL"))
    wordsArray.append(Word(wordDescribe: "KÜÇÜMSEME", wordForbidden1: "NİTELİK", wordForbidden2: "DEĞERSİZ", wordForbidden3: "YARGI", wordForbidden4: "CÜMLE", wordForbidden5: "AZIMSAMA"))
    wordsArray.append(Word(wordDescribe: "METRES", wordForbidden1: "KARI KOCA", wordForbidden2: "EVLİ", wordForbidden3: "ALDATMAK", wordForbidden4: "YASAK", wordForbidden5: "İLİŞKİ"))
    wordsArray.append(Word(wordDescribe: "FAX", wordForbidden1: "ÇEKMEK", wordForbidden2: "GÖNDERMEK", wordForbidden3: "YAZI", wordForbidden4: "KAĞIT", wordForbidden5: "FOTOKOPİ"))
    wordsArray.append(Word(wordDescribe: "GAZİ", wordForbidden1: "SAVAŞ", wordForbidden2: "YARALANMAK", wordForbidden3: "ŞEHİT", wordForbidden4: "İSTİKLAL MADALYASI", wordForbidden5: "ATATÜRK"))
    wordsArray.append(Word(wordDescribe: "VEKTÖR", wordForbidden1: "YÖN", wordForbidden2: "FİZİK", wordForbidden3: "SKALER", wordForbidden4: "ÇİZMEK", wordForbidden5: "DOĞRU"))
    wordsArray.append(Word(wordDescribe: "HASIRALTI ETMEK", wordForbidden1: "SAKLAMAK", wordForbidden2: "GİZLEMEK", wordForbidden3: "KORUMAK", wordForbidden4: "YOK ETMEK", wordForbidden5: "ÖRTBAS"))
    wordsArray.append(Word(wordDescribe: "VENEDİK", wordForbidden1: "GONDOL", wordForbidden2: "ÜLKE", wordForbidden3: "SU", wordForbidden4: "İTALYA", wordForbidden5: "YÜZMEK"))
    wordsArray.append(Word(wordDescribe: "SELÜLİT", wordForbidden1: "BACAK", wordForbidden2: "KADIN", wordForbidden3: "CİLT", wordForbidden4: "YAĞ", wordForbidden5: "PORTAKAL"))
    wordsArray.append(Word(wordDescribe: "NORM", wordForbidden1: "KURAL", wordForbidden2: "YERLEŞMİŞ", wordForbidden3: "İLKE", wordForbidden4: "YASA", wordForbidden5: "DÜZEN"))
    wordsArray.append(Word(wordDescribe: "ALT", wordForbidden1: "ÜST", wordForbidden2: "YER", wordForbidden3: "TABAN", wordForbidden4: "DERECE", wordForbidden5: "SINIF"))
    wordsArray.append(Word(wordDescribe: "ABONE", wordForbidden1: "YONCA EVCİMİK", wordForbidden2: "SATIN ALMAK", wordForbidden3: "ÜYE", wordForbidden4: "DERGİ", wordForbidden5: "GAZETE"))
    wordsArray.append(Word(wordDescribe: "TEZGAH", wordForbidden1: "KURMAK", wordForbidden2: "MASA", wordForbidden3: "MUTFAK", wordForbidden4: "SATICI", wordForbidden5: "BÜFE"))
    wordsArray.append(Word(wordDescribe: "TEMAS", wordForbidden1: "FİZİKSEL", wordForbidden2: "DEĞME", wordForbidden3: "DOKUNMA", wordForbidden4: "MÜNASEBET", wordForbidden5: "BULUŞMAK"))
    wordsArray.append(Word(wordDescribe: "EFSANE", wordForbidden1: "HAYALİ", wordForbidden2: "YARADILIŞ", wordForbidden3: "ÖYKÜ", wordForbidden4: "ABARTMAK", wordForbidden5: "SÖYLENCE"))
    wordsArray.append(Word(wordDescribe: "İMLA", wordForbidden1: "KURAL", wordForbidden2: "YAZIM", wordForbidden3: "DİL BİLGİSİ", wordForbidden4: "HATA", wordForbidden5: "TERİM"))
    wordsArray.append(Word(wordDescribe: "SAKAL", wordForbidden1: "KIL", wordForbidden2: "YÜZ", wordForbidden3: "TIRAŞ", wordForbidden4: "KESMEK", wordForbidden5: "TOP"))
    wordsArray.append(Word(wordDescribe: "LOSYON", wordForbidden1: "TIRAŞ", wordForbidden2: "KOLONYA", wordForbidden3: "PARFÜM", wordForbidden4: "KOKU", wordForbidden5: "BERBER"))
    wordsArray.append(Word(wordDescribe: "BARBAR", wordForbidden1: "KABA", wordForbidden2: "İLKEL", wordForbidden3: "KIRICI", wordForbidden4: "UYGARLAŞMA", wordForbidden5: "AKIN"))
    wordsArray.append(Word(wordDescribe: "FABL", wordForbidden1: "MASAL", wordForbidden2: "HAYVAN", wordForbidden3: "HİKAYE", wordForbidden4: "ÖYKÜ", wordForbidden5: "DERS"))
    wordsArray.append(Word(wordDescribe: "ABDESTHANE", wordForbidden1: "TUVALET", wordForbidden2: "WC", wordForbidden3: "HELA", wordForbidden4: "YÜZNUMARA", wordForbidden5: "ALMAK"))
    wordsArray.append(Word(wordDescribe: "HAKİ", wordForbidden1: "RENK", wordForbidden2: "YEŞİL", wordForbidden3: "KAHVERENGİ", wordForbidden4: "ÇALMAK", wordForbidden5: "KAÇMAK"))
    wordsArray.append(Word(wordDescribe: "LATİN AMERİKA", wordForbidden1: "GÜNEY", wordForbidden2: "KITA", wordForbidden3: "BREZİLYA", wordForbidden4: "ÜLKE", wordForbidden5: "ARJANTİN"))
    wordsArray.append(Word(wordDescribe: "DEFİNE", wordForbidden1: "HARİTA", wordForbidden2: "PARA", wordForbidden3: "ALTIN", wordForbidden4: "ALİ", wordForbidden5: "BABA"))
    wordsArray.append(Word(wordDescribe: "ARAMAK", wordForbidden1: "SAÇ", wordForbidden2: "ARAŞTIRMAK", wordForbidden3: "DERLEMEK", wordForbidden4: "ATEŞLEMEK", wordForbidden5: "AYIKLAMAK"))
    wordsArray.append(Word(wordDescribe: "İPUCU", wordForbidden1: "İZ", wordForbidden2: "EMARE", wordForbidden3: "VERMEK", wordForbidden4: "DEDEKTİF", wordForbidden5: "SIR"))
    wordsArray.append(Word(wordDescribe: "ALTIN", wordForbidden1: "TAKMAK", wordForbidden2: "DEĞERLİ", wordForbidden3: "KUYUMCU", wordForbidden4: "SARRAF", wordForbidden5: "ÇEYREK"))
    wordsArray.append(Word(wordDescribe: "AÇISAL HIZ", wordForbidden1: "FİZİK", wordForbidden2: "VEKTÖREL", wordForbidden3: "HAREKET", wordForbidden4: "DAİRESEL", wordForbidden5: "TARAMAK"))
    wordsArray.append(Word(wordDescribe: "SÜZMEK", wordForbidden1: "SU", wordForbidden2: "AYIRMAK", wordForbidden3: "SIVI", wordForbidden4: "MAKARNA", wordForbidden5: "KATI"))
    wordsArray.append(Word(wordDescribe: "KABAKULAK", wordForbidden1: "HASTALIK", wordForbidden2: "İLTİHAP", wordForbidden3: "ŞİŞMEK", wordForbidden4: "BEZ", wordForbidden5: "TÜKÜRÜK"))
    wordsArray.append(Word(wordDescribe: "KÜF", wordForbidden1: "EKMEK", wordForbidden2: "YEŞİL", wordForbidden3: "MANTAR", wordForbidden4: "BAKTERİ", wordForbidden5: "KURT"))
    wordsArray.append(Word(wordDescribe: "ANATOMİ", wordForbidden1: "VÜCUT", wordForbidden2: "SİSTEM", wordForbidden3: "İNCELEMEK", wordForbidden4: "ORGAN", wordForbidden5: "DİŞ"))
    wordsArray.append(Word(wordDescribe: "KARL MARX", wordForbidden1: "SOSYALİZM", wordForbidden2: "KOMÜNİZM", wordForbidden3: "FELSEFE", wordForbidden4: "MANİFESTO", wordForbidden5: "KAPİTAL"))
    wordsArray.append(Word(wordDescribe: "ALTERNATİF AKIM", wordForbidden1: "DOĞRU", wordForbidden2: "ELEKTRİK", wordForbidden3: "DEĞİŞKEN", wordForbidden4: "NİKOLA TESLA", wordForbidden5: "SİNÜS"))
    wordsArray.append(Word(wordDescribe: "FOTOKOPİ", wordForbidden1: "KOPYA", wordForbidden2: "MAKİNE", wordForbidden3: "FAX", wordForbidden4: "TARAMAK", wordForbidden5: "KIRTASİYE"))
    wordsArray.append(Word(wordDescribe: "BARKOD", wordForbidden1: "ÜRÜN", wordForbidden2: "FİYAT", wordForbidden3: "İMZA", wordForbidden4: "ÇİZGİ", wordForbidden5: "ALT"))
    wordsArray.append(Word(wordDescribe: "ODAK", wordForbidden1: "OPTİK", wordForbidden2: "IŞIK", wordForbidden3: "KAYNAK", wordForbidden4: "TOPLANMAK", wordForbidden5: "MİHRAK"))
    wordsArray.append(Word(wordDescribe: "MAKAS", wordForbidden1: "KUMAŞ", wordForbidden2: "KESMEK", wordForbidden3: "KAĞIT", wordForbidden4: "NİŞAN", wordForbidden5: "TERZİ"))
    wordsArray.append(Word(wordDescribe: "KANTİN", wordForbidden1: "OKUL", wordForbidden2: "TOST", wordForbidden3: "KAFETERYA ", wordForbidden4: "ÖĞRENCİ ", wordForbidden5: "YEMEK"))
    wordsArray.append(Word(wordDescribe: "İMA ETMEK", wordForbidden1: "ANLAM ", wordForbidden2: "İZ ", wordForbidden3: "DURUM ", wordForbidden4: "DAVRANIŞ ", wordForbidden5: "ALAMET"))
    wordsArray.append(Word(wordDescribe: "MÜHİMMAT", wordForbidden1: "DEPO ", wordForbidden2: "SAVAŞ ", wordForbidden3: "CEPHANE ", wordForbidden4: "ORDU ", wordForbidden5: "SİLAH"))
    wordsArray.append(Word(wordDescribe: "HIÇKIRIK", wordForbidden1: "SES ", wordForbidden2: "TUTMAK ", wordForbidden3: "DİYAFRAM ", wordForbidden4: "SU ", wordForbidden5: "NEFES"))
    wordsArray.append(Word(wordDescribe: "BUZ DEVRİ", wordForbidden1: "ESKİ ÇAĞ", wordForbidden2: "SOĞUK ", wordForbidden3: "ERİMEK ", wordForbidden4: "KAR ", wordForbidden5: "ÇİZGİ FİLM"))
    wordsArray.append(Word(wordDescribe: "SALSA", wordForbidden1: "SOS ", wordForbidden2: "DANS ", wordForbidden3: "LATİN ", wordForbidden4: "İSPANYOL ", wordForbidden5: "PARTİ"))
    wordsArray.append(Word(wordDescribe: "BONCUK", wordForbidden1: "KOLYE ", wordForbidden2: "TAKI ", wordForbidden3: "RENKLİ ", wordForbidden4: "KÜÇÜK ", wordForbidden5: "YUVARLAK"))
    wordsArray.append(Word(wordDescribe: "TRAVESTİ", wordForbidden1: "ERKEK ", wordForbidden2: "KADIN ", wordForbidden3: "TRANSSEKSÜEL ", wordForbidden4: "KILIK ", wordForbidden5: "GİRMEK"))
    wordsArray.append(Word(wordDescribe: "DAKTİLO", wordForbidden1: "YAZMAK ", wordForbidden2: "HARF ", wordForbidden3: "KAĞIT ", wordForbidden4: "TUŞ ", wordForbidden5: "STİLO"))
    wordsArray.append(Word(wordDescribe: "TELSİZ", wordForbidden1: "TELEFON ", wordForbidden2: "KONUŞMAK ", wordForbidden3: "POLİS ", wordForbidden4: "İLETİŞİM ", wordForbidden5: "BASMAK"))
    wordsArray.append(Word(wordDescribe: "SANDAL", wordForbidden1: "MOTOR ", wordForbidden2: "DENİZ ", wordForbidden3: "KÜREK ", wordForbidden4: "SEFA ", wordForbidden5: "BALIKÇI"))
    wordsArray.append(Word(wordDescribe: "HAÇ", wordForbidden1: "HRİSTİYANLIK", wordForbidden2: "ÇAĞLA ŞİKEL", wordForbidden3: "ARTI İŞARETİ", wordForbidden4: "İSA ", wordForbidden5: "ÇARMIH"))
    wordsArray.append(Word(wordDescribe: "ASİT", wordForbidden1: "MAVİ ", wordForbidden2: "KIRMIZI ", wordForbidden3: "TURNUSOL ", wordForbidden4: "BAZ ", wordForbidden5: "MİDE"))
    wordsArray.append(Word(wordDescribe: "KUŞ BAKIŞI", wordForbidden1: "YÜKSEK ", wordForbidden2: "GENEL ", wordForbidden3: "HAYVAN ", wordForbidden4: "GÖRMEK ", wordForbidden5: "ALAN"))
    wordsArray.append(Word(wordDescribe: "HATIR", wordForbidden1: "GÖNÜL", wordForbidden2: "KALP ", wordForbidden3: "HAFIZA ", wordForbidden4: "ZİHİN", wordForbidden5: "KIRMAK"))
    wordsArray.append(Word(wordDescribe: "İMRENMEK", wordForbidden1: "KISKANMAK ", wordForbidden2: "GIPTA ETMEK", wordForbidden3: "ÖZENMEK ", wordForbidden4: "CANI ÇEKMEK", wordForbidden5: "İSTEMEK"))
    wordsArray.append(Word(wordDescribe: "DUMUR", wordForbidden1: "KÖRELMEK ", wordForbidden2: "APTALLAŞMAK ", wordForbidden3: "ŞOK OLMAK ", wordForbidden4: "ŞAŞIRMAK ", wordForbidden5: "ŞAŞKINA DÖNMEK"))
    wordsArray.append(Word(wordDescribe: "KAHIR", wordForbidden1: "MAHVETME ", wordForbidden2: "PERİŞAN ", wordForbidden3: "EZME ", wordForbidden4: "ÇEKMEK ", wordForbidden5: "ETMEK"))
    wordsArray.append(Word(wordDescribe: "KÖŞK", wordForbidden1: "BAHÇE ", wordForbidden2: "EV ", wordForbidden3: "SÜSLÜ ", wordForbidden4: "KASİR ", wordForbidden5: "YAPI"))
    wordsArray.append(Word(wordDescribe: "ALYANS", wordForbidden1: "EVLİLİK ", wordForbidden2: "YÜZÜK ", wordForbidden3: "KARIKOCA ", wordForbidden4: "PARMAK ", wordForbidden5: "TAKMAK"))
    wordsArray.append(Word(wordDescribe: "İKTİDAR", wordForbidden1: "OTORİTE ", wordForbidden2: "MUHALEFET ", wordForbidden3: "YETKİ ", wordForbidden4: "KUVVET ", wordForbidden5: "PARTİ"))
    wordsArray.append(Word(wordDescribe: "ÇIBAN", wordForbidden1: "İRİN ", wordForbidden2: "DERİ ", wordForbidden3: "BİRİKMEK ", wordForbidden4: "VÜCUT ", wordForbidden5: "ÇIKMAK"))
    wordsArray.append(Word(wordDescribe: "ARAP", wordForbidden1: "SİYAH ", wordForbidden2: "AFRİKA ", wordForbidden3: "FELLAH ", wordForbidden4: "SABUN ", wordForbidden5: "BACI"))
    wordsArray.append(Word(wordDescribe: "KALSİYUM", wordForbidden1: "KEMİK ", wordForbidden2: "SÜT ", wordForbidden3: "PEYNİR ", wordForbidden4: "YOĞURT ", wordForbidden5: "DİŞ"))
    wordsArray.append(Word(wordDescribe: "ÇAYIR", wordForbidden1: "OTLAMAK ", wordForbidden2: "İNEK ", wordForbidden3: "YEŞİL ", wordForbidden4: "ÇİMEN ", wordForbidden5: "PİKNİK"))
    wordsArray.append(Word(wordDescribe: "BALİNA", wordForbidden1: "DENİZ", wordForbidden2: "MEMELİ ", wordForbidden3: "HAYVAN ", wordForbidden4: "YUNUS", wordForbidden5: "SU "))
    wordsArray.append(Word(wordDescribe: "OLUMSUZ", wordForbidden1: "NEGATİF ", wordForbidden2: "ZARARLI ", wordForbidden3: "UYGUN ", wordForbidden4: "YAPICI ", wordForbidden5: "YARARLI"))
    wordsArray.append(Word(wordDescribe: "MİSYONER", wordForbidden1: "DİN ", wordForbidden2: "YAYMAK ", wordForbidden3: "HRİSTİYAN ", wordForbidden4: "ADAMAK ", wordForbidden5: "DÜŞÜNCE"))
    wordsArray.append(Word(wordDescribe: "SİNCAP", wordForbidden1: "HAYVAN ", wordForbidden2: "KEMİRMEK ", wordForbidden3: "AĞAÇ ", wordForbidden4: "FINDIK ", wordForbidden5: "KOKARCA"))
    wordsArray.append(Word(wordDescribe: "RAMAZAN BAYRAMI", wordForbidden1: "ŞEKER ", wordForbidden2: "KUTLAMAK ", wordForbidden3: "KURBAN BAYRAMI ", wordForbidden4: "TATİL ", wordForbidden5: "DİNİ"))
    wordsArray.append(Word(wordDescribe: "FARENJİT", wordForbidden1: "HASTALIK ", wordForbidden2: "BOĞAZ ", wordForbidden3: "İLTİHAP ", wordForbidden4: "TOZ ", wordForbidden5: "SPREY"))
    wordsArray.append(Word(wordDescribe: "ARSA", wordForbidden1: "YER ", wordForbidden2: "ALAN ", wordForbidden3: "YAPI ", wordForbidden4: "TARLA ", wordForbidden5: "YAPMAK"))
    wordsArray.append(Word(wordDescribe: "SAÇ", wordForbidden1: "FÖN ", wordForbidden2: "KUAFÖR BERBER ", wordForbidden3: "KADIN ERKEK ", wordForbidden4: "KESTİRMEK", wordForbidden5: "BOYATMAK"))
    wordsArray.append(Word(wordDescribe: "HARE", wordForbidden1: "PARLAK ", wordForbidden2: "ÇİZGİ ", wordForbidden3: "DALGA ", wordForbidden4: "SERT ", wordForbidden5: "KUMAŞ"))
    wordsArray.append(Word(wordDescribe: "BİLİNÇ", wordForbidden1: "ŞUUR ", wordForbidden2: "TANIMA ", wordForbidden3: "BİLGİ ", wordForbidden4: "GÖRÜŞ ", wordForbidden5: "TEMEL"))
    wordsArray.append(Word(wordDescribe: "KALABALIK", wordForbidden1: "İNSAN ", wordForbidden2: "ÇOK ", wordForbidden3: "TOPLULUK ", wordForbidden4: "KARGAŞA ", wordForbidden5: "AŞIRI"))
    wordsArray.append(Word(wordDescribe: "SOĞUK ALGINLIĞI", wordForbidden1: "ÜŞÜTMEK ", wordForbidden2: "HASTALIK ", wordForbidden3: "ATEŞ ", wordForbidden4: "NEZLE ", wordForbidden5: "AKINTI"))
    wordsArray.append(Word(wordDescribe: "MUTASYON", wordForbidden1: "DEĞİŞİM ", wordForbidden2: "EVRİM ", wordForbidden3: "FARKLI ", wordForbidden4: "GEÇİRMEK ", wordForbidden5: "GEN"))
    wordsArray.append(Word(wordDescribe: "NELSON MANDELA", wordForbidden1: "SİYAHİ  ", wordForbidden2: "AFRİKA  ", wordForbidden3: "TUTUKLU  ", wordForbidden4: "BAŞKAN ", wordForbidden5: "LİDER"))
    wordsArray.append(Word(wordDescribe: "UZAK DURMAK", wordForbidden1: "YAKLAŞMAMAK ", wordForbidden2: "İSTEMEMEK ", wordForbidden3: "MESAFE ", wordForbidden4: "KOYMAK ", wordForbidden5: "YAKIN"))
    wordsArray.append(Word(wordDescribe: "DENEY", wordForbidden1: "KİMYA ", wordForbidden2: "LABORATUVAR ", wordForbidden3: "FARE ", wordForbidden4: "BİLİM ", wordForbidden5: "TÜP"))
    wordsArray.append(Word(wordDescribe: "PÜSKÜL", wordForbidden1: "SAÇAK ", wordForbidden2: "İP ", wordForbidden3: "SÜS ", wordForbidden4: "FES ", wordForbidden5: "MISIR"))
    wordsArray.append(Word(wordDescribe: "EMBESİL", wordForbidden1: "ZEKA GERİLİĞİ", wordForbidden2: "APTAL ", wordForbidden3: "AHMAK ", wordForbidden4: "SALAK ", wordForbidden5: "MORON"))
    wordsArray.append(Word(wordDescribe: "BEDDUA", wordForbidden1: "KÖTÜLÜK ", wordForbidden2: "TUTMAK ", wordForbidden3: "ALMAK ", wordForbidden4: "ETMEK ", wordForbidden5: "BELA"))
    wordsArray.append(Word(wordDescribe: "DÖNME DOLAP", wordForbidden1: "LUNAPARK ", wordForbidden2: "YÜKSEK ", wordForbidden3: "ÇOCUK ", wordForbidden4: "EĞLENCE ", wordForbidden5: "OTURMAK"))
    wordsArray.append(Word(wordDescribe: "BABA", wordForbidden1: "ERKEK", wordForbidden2: "MAFYA", wordForbidden3: "AİLE", wordForbidden4: "ÇOCUK", wordForbidden5: "ANNE"))
    wordsArray.append(Word(wordDescribe: "GAZETE", wordForbidden1: "BASIN", wordForbidden2: "OKUMAK", wordForbidden3: "MEDYA", wordForbidden4: "İLAN", wordForbidden5: "SAYFA"))
    wordsArray.append(Word(wordDescribe: "KARATE", wordForbidden1: "DÖVÜŞ SANATLARI", wordForbidden2: "YUMRUK", wordForbidden3: "TEKME", wordForbidden4: "KİD", wordForbidden5: "KAVGA"))
    wordsArray.append(Word(wordDescribe: "CAMİ", wordForbidden1: "İMAM", wordForbidden2: "NAMAZ", wordForbidden3: "MÜSLÜMAN", wordForbidden4: "CEMAAT", wordForbidden5: "İBADET"))
    wordsArray.append(Word(wordDescribe: "TERLİK", wordForbidden1: "AYAKKABI", wordForbidden2: "HAFİF", wordForbidden3: "ANNE", wordForbidden4: "GİYMEK", wordForbidden5: "EV"))
    wordsArray.append(Word(wordDescribe: "ÖRMEK", wordForbidden1: "ŞİŞ", wordForbidden2: "YÜN", wordForbidden3: "KAZAK", wordForbidden4: "DANTEL", wordForbidden5: "ATKI"))
    wordsArray.append(Word(wordDescribe: "KLİMA", wordForbidden1: "KALORİFER", wordForbidden2: "SOĞUK", wordForbidden3: "DUVAR", wordForbidden4: "YAZ", wordForbidden5: "SICAK"))
    wordsArray.append(Word(wordDescribe: "ÜNİVERSİTE", wordForbidden1: "OKUL", wordForbidden2: "ÖSS", wordForbidden3: "FAKÜLTE", wordForbidden4: "EĞİTİM", wordForbidden5: "ÖĞRENCİ"))
    wordsArray.append(Word(wordDescribe: "KRAVAT", wordForbidden1: "GÖMLEK", wordForbidden2: "TAKIM ELBİSE", wordForbidden3: "MEDENİYET YULARI", wordForbidden4: "BOYUN", wordForbidden5: "YAKA"))
    wordsArray.append(Word(wordDescribe: "FASULYE", wordForbidden1: "PİLAV", wordForbidden2: "KURU", wordForbidden3: "GAZ", wordForbidden4: "SIRIK", wordForbidden5: "YEMEK"))
    wordsArray.append(Word(wordDescribe: "DEDE KORKUT", wordForbidden1: "EFSANE", wordForbidden2: "ERGENEKON", wordForbidden3: "DESTAN", wordForbidden4: "HİKAYE", wordForbidden5: "ESKİ"))
    wordsArray.append(Word(wordDescribe: "TAHAMÜL ETMEK", wordForbidden1: "SABIR", wordForbidden2: "DAYANMAK", wordForbidden3: "ARTIK", wordForbidden4: "SINIR", wordForbidden5: "KATLANMAK"))
    wordsArray.append(Word(wordDescribe: "SALDIRGAN", wordForbidden1: "AGRESİF", wordForbidden2: "TEHLİKE", wordForbidden3: "KAVGA", wordForbidden4: "ZARAR", wordForbidden5: "DÜŞMAN"))
    wordsArray.append(Word(wordDescribe: "ŞİKAYET", wordForbidden1: "HOŞNUTSUZ", wordForbidden2: "MEMNUNİYET", wordForbidden3: "YAKINMAK", wordForbidden4: "TÜKETİCİ", wordForbidden5: "DERT"))
    wordsArray.append(Word(wordDescribe: "MEŞALE", wordForbidden1: "ATEŞ", wordForbidden2: "IŞIK", wordForbidden3: "AYDINLIK", wordForbidden4: "YAKMAK", wordForbidden5: "OLİMPİYAT"))
    wordsArray.append(Word(wordDescribe: "UYUZ", wordForbidden1: "BULAŞICI", wordForbidden2: "GICIK ETMEK", wordForbidden3: "KÖPEK", wordForbidden4: "HASTALIK", wordForbidden5: "KAŞINMAK"))
    wordsArray.append(Word(wordDescribe: "BEZE", wordForbidden1: "HAMUR", wordForbidden2: "YAĞ", wordForbidden3: "PASTA", wordForbidden4: "PİŞKİNLİK", wordForbidden5: "PAZ"))
    wordsArray.append(Word(wordDescribe: "TOSBAĞA", wordForbidden1: "VOSVOS", wordForbidden2: "ARABA", wordForbidden3: "KABUK", wordForbidden4: "KAPLUMBAĞA", wordForbidden5: "ESKİ"))
    wordsArray.append(Word(wordDescribe: "BÖCEK", wordForbidden1: "ZEHİR", wordForbidden2: "SİNEK", wordForbidden3: "HAŞERE", wordForbidden4: "HAYVAN", wordForbidden5: "YARATIK"))
    wordsArray.append(Word(wordDescribe: "YATAKHANE", wordForbidden1: "YATAKHANE", wordForbidden2: "YURT", wordForbidden3: "KIŞLA", wordForbidden4: "OKUL", wordForbidden5: "YATMAK"))
    wordsArray.append(Word(wordDescribe: "UZLAŞMAK", wordForbidden1: "İŞBİRLİĞİ", wordForbidden2: "MUTABAKAT", wordForbidden3: "UYUŞMA", wordForbidden4: "ANLAŞMA", wordForbidden5: "İTTİFAK"))
    wordsArray.append(Word(wordDescribe: "MAKİNİST", wordForbidden1: "METRO", wordForbidden2: "SİNEMA", wordForbidden3: "FİLM", wordForbidden4: "TREN", wordForbidden5: "KULLANMAK"))
    wordsArray.append(Word(wordDescribe: "AYDINLATMAK", wordForbidden1: "GÖRÜNMEK", wordForbidden2: "IŞIK", wordForbidden3: "BİLGİLENDİRMEK", wordForbidden4: "KARANLIK", wordForbidden5: "GİDERMEK"))
    wordsArray.append(Word(wordDescribe: "ÇALMAK", wordForbidden1: "POLİS", wordForbidden2: "HIRSIZ", wordForbidden3: "ARANMAK", wordForbidden4: "İZİN", wordForbidden5: "EV"))
    wordsArray.append(Word(wordDescribe: "ÇATLAK", wordForbidden1: "ARALIK", wordForbidden2: "AYRILMAK", wordForbidden3: "DELİ", wordForbidden4: "ARA", wordForbidden5: "YARILMAK"))
    wordsArray.append(Word(wordDescribe: "ALİM", wordForbidden1: "BİLGE", wordForbidden2: "AKILLI", wordForbidden3: "ZEKİ", wordForbidden4: "HOCA", wordForbidden5: "BİLGİN"))
    wordsArray.append(Word(wordDescribe: "LEKE", wordForbidden1: "İZ", wordForbidden2: "ÇAMAŞIR", wordForbidden3: "RENK", wordForbidden4: "ÇIKARTMAK", wordForbidden5: "KİR"))
    wordsArray.append(Word(wordDescribe: "BİLMECE", wordForbidden1: "TEKERLEME", wordForbidden2: "SORMAK", wordForbidden3: "OYUN", wordForbidden4: "BULMACA", wordForbidden5: "GİZLİ"))
    wordsArray.append(Word(wordDescribe: "LAPTOP", wordForbidden1: "ELDE", wordForbidden2: "BİLGİSAYAR", wordForbidden3: "ÇANTA", wordForbidden4: "MASAÜSTÜ", wordForbidden5: "KASASIZ"))
    wordsArray.append(Word(wordDescribe: "EMEKLEMEK", wordForbidden1: "BEBEK", wordForbidden2: "SÜRÜNMEK", wordForbidden3: "YÜRÜMEZ", wordForbidden4: "DİZ", wordForbidden5: "YER"))
    wordsArray.append(Word(wordDescribe: "TUĞLA", wordForbidden1: "BLOK", wordForbidden2: "DUVAR", wordForbidden3: "İNŞAAT", wordForbidden4: "MALZEME", wordForbidden5: "YAPI"))
    wordsArray.append(Word(wordDescribe: "SAĞLAM", wordForbidden1: "SAĞLIKLI", wordForbidden2: "SIHHATLİ", wordForbidden3: "BOZULMAZ", wordForbidden4: "DAYANIKLI", wordForbidden5: "YIKILMAZ"))
    wordsArray.append(Word(wordDescribe: "BİBERON", wordForbidden1: "BEBEK", wordForbidden2: "SÜT", wordForbidden3: "ANNE", wordForbidden4: "EMZİK", wordForbidden5: "YEMEK"))
    wordsArray.append(Word(wordDescribe: "KAZMA", wordForbidden1: "TOPRAK", wordForbidden2: "İŞLEMEK", wordForbidden3: "DÜZELTMEK", wordForbidden4: "ÇAPA", wordForbidden5: "ARAÇ"))
    wordsArray.append(Word(wordDescribe: "TEKRAR", wordForbidden1: "BİR DAHA", wordForbidden2: "GENE", wordForbidden3: "YENİDEN", wordForbidden4: "YAPMAK", wordForbidden5: "YİNE"))
    wordsArray.append(Word(wordDescribe: "AĞZINDAN KAÇIRMAK", wordForbidden1: "AÇIĞA VURMAK", wordForbidden2: "ORTAYA ÇIKARTMAK", wordForbidden3: "POT KIRMAK", wordForbidden4: "GERÇEK", wordForbidden5: "DOĞRU"))
    wordsArray.append(Word(wordDescribe: "MAKİNE", wordForbidden1: "CİHAZ", wordForbidden2: "ÇALIŞMAK", wordForbidden3: "BOZULMAK", wordForbidden4: "MÜHENDİS", wordForbidden5: "ALET"))
    wordsArray.append(Word(wordDescribe: "METAL", wordForbidden1: "AMETAL", wordForbidden2: "İLETKEN", wordForbidden3: "MADEN", wordForbidden4: "DEMİR", wordForbidden5: "KİMYA"))
    wordsArray.append(Word(wordDescribe: "YABANCI", wordForbidden1: "DİL", wordForbidden2: "LİSAN", wordForbidden3: "AVRUPA", wordForbidden4: "TURİST", wordForbidden5: "FARKLI"))
    wordsArray.append(Word(wordDescribe: "GÖÇ", wordForbidden1: "DEĞİŞTİRMEK", wordForbidden2: "KUŞ", wordForbidden3: "GİTMEK", wordForbidden4: "TAŞINMAK", wordForbidden5: "HAYVAN"))
    wordsArray.append(Word(wordDescribe: "KÜSMEK ", wordForbidden1: "DARILMAK ", wordForbidden2: "KIZMAK ", wordForbidden3: "KONUŞMAK ", wordForbidden4: "TARTIŞMAK ", wordForbidden5: "KAVGA"))
    wordsArray.append(Word(wordDescribe: "AVİZE", wordForbidden1: "LAMBA", wordForbidden2: "KRİSTAL", wordForbidden3: "TAVAN", wordForbidden4: "IŞIK", wordForbidden5: "AYDINLIK"))
    wordsArray.append(Word(wordDescribe: "KOORDİNAT", wordForbidden1: "YER", wordForbidden2: "ENLEM", wordForbidden3: "BOYLAM", wordForbidden4: "BELİRTMEK", wordForbidden5: "VERMEK"))
    wordsArray.append(Word(wordDescribe: "TERİM", wordForbidden1: "KELİME", wordForbidden2: "ANLAM", wordForbidden3: "FATİH", wordForbidden4: "SANAT", wordForbidden5: "KAVRAM"))
    wordsArray.append(Word(wordDescribe: "SOYUT", wordForbidden1: "DUYU", wordForbidden2: "ALGILAMAK", wordForbidden3: "GÖRÜLMEYEN", wordForbidden4: "İSİM", wordForbidden5: "SOMUT"))
    wordsArray.append(Word(wordDescribe: "BASKÜL", wordForbidden1: "TARTI", wordForbidden2: "KİLO", wordForbidden3: "AĞIR", wordForbidden4: "ÖLÇÜ", wordForbidden5: "HAFİF"))
    wordsArray.append(Word(wordDescribe: "HALÜSİNASYON", wordForbidden1: "HAYAL", wordForbidden2: "GERÇEK", wordForbidden3: "GÖRMEK", wordForbidden4: "İLLÜZYON", wordForbidden5: "SERAP"))
    wordsArray.append(Word(wordDescribe: "ADEM ELMASI", wordForbidden1: "ERKEK", wordForbidden2: "GIRTLAK", wordForbidden3: "ÇIKINTI", wordForbidden4: "BOĞAZ", wordForbidden5: "HAVVA"))
    wordsArray.append(Word(wordDescribe: "SATRANÇ", wordForbidden1: "ŞAH-MAT", wordForbidden2: "KALE", wordForbidden3: "VEZİR", wordForbidden4: "PİYON", wordForbidden5: "FİL"))
    wordsArray.append(Word(wordDescribe: "PARAŞÜT", wordForbidden1: "UÇAK", wordForbidden2: "ATLAMAK", wordForbidden3: "UÇMAK", wordForbidden4: "BALON", wordForbidden5: "HAVA"))
    wordsArray.append(Word(wordDescribe: "DOST", wordForbidden1: "GÜVEN", wordForbidden2: "SAMİMİ", wordForbidden3: "DÜRÜST", wordForbidden4: "ARKADAŞ", wordForbidden5: "AHLAKLI"))
    wordsArray.append(Word(wordDescribe: "KEDİ", wordForbidden1: "PATİ", wordForbidden2: "FARE", wordForbidden3: "TÜY", wordForbidden4: "KUYRUK", wordForbidden5: "HAYVAN"))
    wordsArray.append(Word(wordDescribe: "BONKÖR", wordForbidden1: "ELİ AÇIK", wordForbidden2: "CÖMERT", wordForbidden3: "PARA", wordForbidden4: "GÖNLÜ ZENGİN", wordForbidden5: "HARCAMAK"))
    wordsArray.append(Word(wordDescribe: "MESAİ", wordForbidden1: "SAAT", wordForbidden2: "İŞ", wordForbidden3: "FAZLA", wordForbidden4: "AKŞAM", wordForbidden5: "KALMAK"))
    wordsArray.append(Word(wordDescribe: "YELPAZE", wordForbidden1: "SICAK", wordForbidden2: "RÜZGAR", wordForbidden3: "YAZ", wordForbidden4: "KADIN", wordForbidden5: "SALLAMAK"))
    wordsArray.append(Word(wordDescribe: "İŞTAH", wordForbidden1: "ACIKMAK", wordForbidden2: "KESİLMEK", wordForbidden3: "AÇMAK", wordForbidden4: "LEZZET", wordForbidden5: "YEMEK"))
    wordsArray.append(Word(wordDescribe: "HALAY", wordForbidden1: "DÜĞÜN", wordForbidden2: "ÇEKMEK", wordForbidden3: "OYNAMAK", wordForbidden4: "MENDİL", wordForbidden5: "MAHMUT TUNCER"))
    wordsArray.append(Word(wordDescribe: "PLAKET", wordForbidden1: "ÖDÜL", wordForbidden2: "TÖREN", wordForbidden3: "BAŞARI", wordForbidden4: "VERMEK", wordForbidden5: "TEŞEKKÜR"))
    wordsArray.append(Word(wordDescribe: "STAJ", wordForbidden1: "ÖĞRENCİ", wordForbidden2: "ÇALIŞMAK", wordForbidden3: "ÜNİVERSİTE", wordForbidden4: "TECRÜBE", wordForbidden5: "İŞ"))
    wordsArray.append(Word(wordDescribe: "TECRÜBE", wordForbidden1: "İŞ", wordForbidden2: "KAZANMAK", wordForbidden3: "ÇALIŞMAK", wordForbidden4: "DENEYİM", wordForbidden5: "YIL"))
    wordsArray.append(Word(wordDescribe: "MACUN", wordForbidden1: "CAM", wordForbidden2: "PENCERE", wordForbidden3: "TUTMAK", wordForbidden4: "DİŞ", wordForbidden5: "MESİR"))
    wordsArray.append(Word(wordDescribe: "MIZIKÇI", wordForbidden1: "ÇOCUK", wordForbidden2: "KÜSMEK", wordForbidden3: "DARILMAK", wordForbidden4: "BOZMAK", wordForbidden5: "OYUN"))
    wordsArray.append(Word(wordDescribe: "ÇAVDAR", wordForbidden1: "ARPA", wordForbidden2: "TAHIL", wordForbidden3: "BUĞDAY", wordForbidden4: "KEPEK", wordForbidden5: "EKMEK"))
    wordsArray.append(Word(wordDescribe: "ESKİMO", wordForbidden1: "KUTUP", wordForbidden2: "BUZUL", wordForbidden3: "KAR", wordForbidden4: "SOĞUK", wordForbidden5: "BALIK"))
    wordsArray.append(Word(wordDescribe: "BUKALEMUN", wordForbidden1: "HAYVAN", wordForbidden2: "RENK", wordForbidden3: "KERTENKELE", wordForbidden4: "DEĞİŞMEK", wordForbidden5: "SÜRÜNGEN"))
    wordsArray.append(Word(wordDescribe: "CEPHE", wordForbidden1: "SAVAŞ", wordForbidden2: "ORDU", wordForbidden3: "ASKER", wordForbidden4: "SALDIRMAK", wordForbidden5: "BARIŞ"))
    wordsArray.append(Word(wordDescribe: "PARAGRAF", wordForbidden1: "SINAV", wordForbidden2: "SORU", wordForbidden3: "ANA DÜŞÜNCE", wordForbidden4: "YARDIMCI DÜŞÜNCE", wordForbidden5: "METİN"))
    wordsArray.append(Word(wordDescribe: "ÜÇ NOKTA", wordForbidden1: "NOKTALAMA", wordForbidden2: "SON", wordForbidden3: "TAMAMLANMAMIŞ", wordForbidden4: "İSTENMEYEN", wordForbidden5: "CÜMLE"))
    wordsArray.append(Word(wordDescribe: "KORNİŞ ", wordForbidden1: "TAVAN ", wordForbidden2: "PERDE ", wordForbidden3: "ASMAK ", wordForbidden4: "PENCERE ", wordForbidden5: "CAM"))
    wordsArray.append(Word(wordDescribe: "NİHALE ", wordForbidden1: "ALTLIK ", wordForbidden2: "TENCERE ", wordForbidden3: "ÇAYDANLIK ", wordForbidden4: "SICAK ", wordForbidden5: "TEZGÂH"))
    wordsArray.append(Word(wordDescribe: "DUY ", wordForbidden1: "TAVAN ", wordForbidden2: "LAMBA ", wordForbidden3: "IŞIK ", wordForbidden4: "İŞİTMEK ", wordForbidden5: "ANAHTAR"))
    wordsArray.append(Word(wordDescribe: "ARMAĞAN ", wordForbidden1: "HEDİYE ", wordForbidden2: "VERMEK ", wordForbidden3: "ALMAK ", wordForbidden4: "DOĞUM GÜNÜ ", wordForbidden5: "SEVİNDİRMEK"))
    wordsArray.append(Word(wordDescribe: "KUMBARA ", wordForbidden1: "PARA ", wordForbidden2: "BİRİKTİRMEK ", wordForbidden3: "YATIRIM ", wordForbidden4: "BANKA ", wordForbidden5: "SAKLAMAK"))
    wordsArray.append(Word(wordDescribe: "ANTİKA ", wordForbidden1: "MÜZAYEDE ", wordForbidden2: "ZENGİN ", wordForbidden3: "ESKİ ", wordForbidden4: "TABLO ", wordForbidden5:"TARİHİ"))
    wordsArray.append(Word(wordDescribe: "SAĞDIÇ", wordForbidden1: "DAMAT", wordForbidden2: "DÜĞÜN", wordForbidden3: "GELİN", wordForbidden4: "GÜVEY", wordForbidden5: "SIRTINA VURMAK"))
    wordsArray.append(Word(wordDescribe: "KABZIMAL", wordForbidden1: "MEYVE", wordForbidden2: "SEBZE", wordForbidden3: "HAL", wordForbidden4: "SATMAK", wordForbidden5: "ARACI"))
    wordsArray.append(Word(wordDescribe: "MANGALA", wordForbidden1: "OYUN", wordForbidden2: "OSMANLI", wordForbidden3: "KUYU", wordForbidden4: "TAŞ", wordForbidden5: "HAZİNE"))
    wordsArray.append(Word(wordDescribe: "BALMUMU", wordForbidden1: "MUM", wordForbidden2: "ERİMEK", wordForbidden3: "HEYKEL", wordForbidden4: "MÜZE", wordForbidden5: "BAL"))
    wordsArray.append(Word(wordDescribe: "FERMUAR", wordForbidden1: "PANTOLON", wordForbidden2: "MONT", wordForbidden3: "GİYSİ", wordForbidden4: "KIYAFET", wordForbidden5: "KOT"))
    wordsArray.append(Word(wordDescribe: "KELEBEK", wordForbidden1: "RENKLİ", wordForbidden2: "UÇMAK", wordForbidden3: "TIRTIL", wordForbidden4: "KOZA", wordForbidden5: "HAYVAN"))
    wordsArray.append(Word(wordDescribe: "MALA", wordForbidden1: "İNŞAAT", wordForbidden2: "DUVAR", wordForbidden3: "USTA", wordForbidden4: "SIVA", wordForbidden5: "ÇİMENTO"))
    wordsArray.append(Word(wordDescribe: "TİYATRO", wordForbidden1: "OYUNCU", wordForbidden2: "SAHNE", wordForbidden3: "PERDE", wordForbidden4: "OYUN", wordForbidden5: "SUFLÖR"))
    wordsArray.append(Word(wordDescribe: "BAĞLAMA", wordForbidden1: "TÜRKÜ", wordForbidden2: "MÜZİK", wordForbidden3: "SAZ", wordForbidden4: "TEL", wordForbidden5: "AKORT"))
    wordsArray.append(Word(wordDescribe: "DERGİ", wordForbidden1: "GAZETE", wordForbidden2: "MECMUA", wordForbidden3: "MAKALE", wordForbidden4: "YAZI", wordForbidden5: "KAPAK"))
    wordsArray.append(Word(wordDescribe: "KAPAN", wordForbidden1: "AV", wordForbidden2: "KURT", wordForbidden3: "HAYVAN", wordForbidden4: "TUZAK", wordForbidden5: "FARE"))
    wordsArray.append(Word(wordDescribe: "EMPATİ", wordForbidden1: "KENDİNİ", wordForbidden2: "BAŞKASI", wordForbidden3: "YERİNE", wordForbidden4: "KOYMA", wordForbidden5: "DÜŞÜNME"))
    wordsArray.append(Word(wordDescribe: "ANAHTAR", wordForbidden1: "KİLİT", wordForbidden2: "METAL", wordForbidden3: "KASA", wordForbidden4: "KAPI", wordForbidden5: "ÇİLİNGİR"))
    wordsArray.append(Word(wordDescribe: "HOŞGÖRÜ", wordForbidden1: "MEVLANA", wordForbidden2: "ANLAYIŞ", wordForbidden3: "EMPATİ", wordForbidden4: "NE OLURSAN", wordForbidden5: "GEL"))
    wordsArray.append(Word(wordDescribe: "ULEMA", wordForbidden1: "BİLGİN", wordForbidden2: "OSMANLI", wordForbidden3: "DİN", wordForbidden4: "ALİM", wordForbidden5: "HOCA"))
    wordsArray.append(Word(wordDescribe:"HEYBETLİ", wordForbidden1: "YÜCE", wordForbidden2: "DAĞ", wordForbidden3: "BÜYÜK", wordForbidden4: "YÜKSEK", wordForbidden5: "İRİ"))
    wordsArray.append(Word(wordDescribe: "ÇIRA", wordForbidden1: "ATEŞ", wordForbidden2: "YAKMAK", wordForbidden3: "ODUN", wordForbidden4: "TAHTA", wordForbidden5: "ÇAY"))
    wordsArray.append(Word(wordDescribe: "FİDAN", wordForbidden1: "AĞAÇ", wordForbidden2: "BÜYÜMEK", wordForbidden3: "KÜÇÜK", wordForbidden4: "ORMAN", wordForbidden5: "DİKMEK"))
    wordsArray.append(Word(wordDescribe: "PRATİK", wordForbidden1: "KOLAY", wordForbidden2: "ZEKÂ", wordForbidden3: "ÇABUK", wordForbidden4: "HIZLI", wordForbidden5: "ÇÖZÜM"))
    wordsArray.append(Word(wordDescribe: "KIVILCIM", wordForbidden1: "ATEŞ", wordForbidden2: "KİBRİT", wordForbidden3: "ÇAKMAK", wordForbidden4: "TAŞ", wordForbidden5: "SÜRTMEK"))
    wordsArray.append(Word(wordDescribe: "MİSKİN", wordForbidden1: "TEMBEL", wordForbidden2: "UYUŞUK", wordForbidden3: "YAVAŞ", wordForbidden4: "AĞIR", wordForbidden5: "KEDİ"))
    wordsArray.append(Word(wordDescribe: "KÖHNE", wordForbidden1: "TARİHİ", wordForbidden2: "YIKILMAK", wordForbidden3: "BİNA", wordForbidden4:"HARABE" , wordForbidden5: "ESKİ"))
    wordsArray.append(Word(wordDescribe: "AKROSTİŞ", wordForbidden1: "ŞİİR", wordForbidden2: "MISRA", wordForbidden3: "İSİM", wordForbidden4: "İLK", wordForbidden5: "KITA"))
    wordsArray.append(Word(wordDescribe: "YAYIK", wordForbidden1: "AYRAN", wordForbidden2: "SU", wordForbidden3: "YOĞURT", wordForbidden4: "ÇALKALAMAK", wordForbidden5: "SÜT"))
    wordsArray.append(Word(wordDescribe: "BAMBU", wordForbidden1: "SAZLIK", wordForbidden2: "MOBİLYA", wordForbidden3: "AĞAÇ", wordForbidden4: "MASA", wordForbidden5: "SANDALYE"))
    wordsArray.append(Word(wordDescribe: "YABANİ", wordForbidden1: "VAHŞİ", wordForbidden2: "İLKEL", wordForbidden3: "HAYAT", wordForbidden4: "ORMAN", wordForbidden5: "HAYVAN"))
    wordsArray.append(Word(wordDescribe: "GÖÇMEN", wordForbidden1: "MÜLTECİ", wordForbidden2: "VİZE", wordForbidden3: "SOĞUK", wordForbidden4: "KUŞ", wordForbidden5: "SICAK"))
    wordsArray.append(Word(wordDescribe: "ÇUVAL", wordForbidden1: "TORBA", wordForbidden2: "DOLDURMAK", wordForbidden3: "YEM", wordForbidden4: "UN", wordForbidden5: "KOYMAK"))
    wordsArray.append(Word(wordDescribe: "TALİMAT", wordForbidden1: "EMİR", wordForbidden2: "VERMEK", wordForbidden3: "FATURA", wordForbidden4: "BANKA", wordForbidden5: "OTOMATİK ÖDEME"))
    wordsArray.append(Word(wordDescribe: "SİFTAH", wordForbidden1: "İLK", wordForbidden2: "GÜN", wordForbidden3: "SATMAK", wordForbidden4: "MAL", wordForbidden5: "ALIŞVERİŞ"))
    wordsArray.append(Word(wordDescribe: "FLAMA", wordForbidden1: "BAYRAK", wordForbidden2: "ÜÇGEN", wordForbidden3: "OKUL", wordForbidden4: "İZCİ", wordForbidden5: "TÖREN"))
    wordsArray.append(Word(wordDescribe: "MÜSVEDDE", wordForbidden1: "KARALAMA", wordForbidden2: "NOT ALMAK", wordForbidden3: "YAZMAK", wordForbidden4: "KÂĞIT", wordForbidden5: "TEMİZ"))
    wordsArray.append(Word(wordDescribe: "AJANDA", wordForbidden1: "DEFTER", wordForbidden2: "İŞ", wordForbidden3: "YAZMAK", wordForbidden4: "GÜN", wordForbidden5: "TOPLANTI"))
    wordsArray.append(Word(wordDescribe: "İHALE", wordForbidden1: "BELEDİYE", wordForbidden2: "GİRMEK", wordForbidden3: "AÇMAK", wordForbidden4: "YOLSUZLUK", wordForbidden5: "KAZANMAK"))
    wordsArray.append(Word(wordDescribe: "UYANIK", wordForbidden1: "AKILLI", wordForbidden2: "ZEKİ", wordForbidden3: "AÇIKGÖZ", wordForbidden4: "KURNAZ", wordForbidden5: "SAF"))
    wordsArray.append(Word(wordDescribe: "PASAKLI", wordForbidden1: "TEMİZ", wordForbidden2: "TİTİZ", wordForbidden3: "KİRLİ", wordForbidden4: "DÜZENLİ", wordForbidden5: "KARIŞIK"))
    wordsArray.append(Word(wordDescribe: "HİLE", wordForbidden1: "ALDATMAK", wordForbidden2: "KANDIRMAK", wordForbidden3: "OYUN", wordForbidden4: "YAPMAK", wordForbidden5: "KUMAR"))
    wordsArray.append(Word(wordDescribe: "FİRAR", wordForbidden1: "KAÇAK", wordForbidden2: "HAPİS", wordForbidden3: "ASKER", wordForbidden4: "MAHKÛM", wordForbidden5: "ETMEK"))
    wordsArray.append(Word(wordDescribe: "FULAR", wordForbidden1: "EŞARP", wordForbidden2: "BAĞLAMAK", wordForbidden3: "BAŞ", wordForbidden4: "BOYUN", wordForbidden5: "KADIN"))
    wordsArray.append(Word(wordDescribe: "KAOS", wordForbidden1: "KARIŞIKLIK", wordForbidden2: "ORTAM", wordForbidden3: "KARGAŞA", wordForbidden4: "DÜZEN", wordForbidden5: "YARATMAK"))
    wordsArray.append(Word(wordDescribe: "SIRIK", wordForbidden1: "UZUN", wordForbidden2: "ATLAMAK", wordForbidden3: "BOY", wordForbidden4: "ATLETİZM", wordForbidden5: "FASULYE"))
    wordsArray.append(Word(wordDescribe: "ARIZA", wordForbidden1: "BOZUK", wordForbidden2: "TAMİR", wordForbidden3: "ÇALIŞMAK", wordForbidden4: "TELEFON", wordForbidden5: "ELEKTRİK"))
    wordsArray.append(Word(wordDescribe: "SUİSTİMAL", wordForbidden1: "İYİ", wordForbidden2: "NİYET", wordForbidden3: "KULLANMAK", wordForbidden4: "FAYDALANMAK", wordForbidden5: "KÖTÜ"))
    wordsArray.append(Word(wordDescribe: "SISKA", wordForbidden1: "ZAYIF", wordForbidden2: "İNCE", wordForbidden3: "ÇELİMSİZ", wordForbidden4: "ŞİŞMAN", wordForbidden5: "HASTA"))
    wordsArray.append(Word(wordDescribe: "ESİR", wordForbidden1: "MAHKÛM", wordForbidden2: "SAVAŞ", wordForbidden3: "DÜŞMEK", wordForbidden4: "TUTSAK", wordForbidden5: "KAMP"))
    wordsArray.append(Word(wordDescribe: "NADİR", wordForbidden1: "ZOR", wordForbidden2: "AZ", wordForbidden3: "BULMAK", wordForbidden4: "SIK", wordForbidden5: "ÇOK"))
    wordsArray.append(Word(wordDescribe: "BUĞU", wordForbidden1: "BUHAR", wordForbidden2: "CAM", wordForbidden3: "SU", wordForbidden4: "SICAK", wordForbidden5: "ARABA"))
    wordsArray.append(Word(wordDescribe: "PATİKA", wordForbidden1: "KEÇİ YOLU", wordForbidden2: "DAĞ", wordForbidden3: "ORMAN", wordForbidden4: "KESTİRME", wordForbidden5: "YÜRÜMEK"))
    wordsArray.append(Word(wordDescribe: "VERESİYE", wordForbidden1: "PEŞİN", wordForbidden2: "BORÇ", wordForbidden3: "SATIN ALMAK", wordForbidden4: "ÖDEMEK", wordForbidden5: "DEFTER"))
    wordsArray.append(Word(wordDescribe: "ABLUKA", wordForbidden1: "ETRAF", wordForbidden2: "KUŞATMA", wordForbidden3: "SAVAŞ", wordForbidden4: "ÇEVİRMEK", wordForbidden5: "DÜŞMAN"))
    wordsArray.append(Word(wordDescribe: "UCUZLUK", wordForbidden1: "İNDİRİM", wordForbidden2: "PAHALI", wordForbidden3: "YÜZDE", wordForbidden4: "FİYAT", wordForbidden5: "VİTRİN"))
    wordsArray.append(Word(wordDescribe: "PERFORMANS", wordForbidden1: "DEĞERLENDİRME", wordForbidden2: "BAŞARI", wordForbidden3: "DERS", wordForbidden4: "ÖDEV", wordForbidden5: "YÜKSEK"))
    wordsArray.append(Word(wordDescribe: "PARANOYA", wordForbidden1: "ŞÜPHE", wordForbidden2: "AKIL", wordForbidden3: "RUH", wordForbidden4: "HASTALIK", wordForbidden5: "DELİ"))
    wordsArray.append(Word(wordDescribe: "GÜZERGÂH", wordForbidden1: "YOL", wordForbidden2: "ARABA", wordForbidden3: "ROTA", wordForbidden4: "SERVİS", wordForbidden5: "TAKİP ETMEK"))
    wordsArray.append(Word(wordDescribe: "FESHETMEK", wordForbidden1: "ANTLAŞMA", wordForbidden2: "SÖZLEŞME", wordForbidden3: "İPTAL", wordForbidden4: "GEÇERSİZ", wordForbidden5: "BOZMAK"))
    wordsArray.append(Word(wordDescribe: "ZEYBEK", wordForbidden1: "ATATÜRK", wordForbidden2: "OYUN", wordForbidden3: "EGE", wordForbidden4: "EFE", wordForbidden5: "SARI"))
    wordsArray.append(Word(wordDescribe: "YADIRGAMAK", wordForbidden1: "GARİP", wordForbidden2: "TUHAF", wordForbidden3: "KABULLENMEK", wordForbidden4: "ŞAŞIRMAK", wordForbidden5: "DAVRANIŞ"))
    wordsArray.append(Word(wordDescribe: "MONOTON", wordForbidden1: "AYNI", wordForbidden2: "SIKICI", wordForbidden3: "SIRADAN", wordForbidden4: "BENZER", wordForbidden5: "RUTİN"))
    wordsArray.append(Word(wordDescribe: "DİYAR", wordForbidden1: "MEMLEKET", wordForbidden2: "VATAN", wordForbidden3: "DOLAŞMAK", wordForbidden4: "GEZMEK", wordForbidden5: "ÂŞIK VEYSEL"))
    wordsArray.append(Word(wordDescribe: "DOZ", wordForbidden1: "MİKTAR", wordForbidden2: "İLAÇ", wordForbidden3: "DOKTOR", wordForbidden4: "REÇETE", wordForbidden5: "AŞIRI"))
    wordsArray.append(Word(wordDescribe: "PORSİYON", wordForbidden1: "YEMEK", wordForbidden2: "TABAK", wordForbidden3: "LOKANTA", wordForbidden4: "YARIM", wordForbidden5: "RESTORAN"))
    wordsArray.append(Word(wordDescribe: "KABİN", wordForbidden1: "GİYİNMEK", wordForbidden2: "DUŞ", wordForbidden3: "DENEMEK", wordForbidden4: "MAĞAZA", wordForbidden5: "KIYAFET"))
    wordsArray.append(Word(wordDescribe: "SERVET", wordForbidden1: "KAZANMAK", wordForbidden2: "ZENGİNLİK", wordForbidden3: "MAL", wordForbidden4: "MÜLK", wordForbidden5: "PARA"))
    wordsArray.append(Word(wordDescribe: "TEDARİK", wordForbidden1: "BULMAK", wordForbidden2: "SAĞLAMAK", wordForbidden3: "MALZEME", wordForbidden4: "ETMEK", wordForbidden5: "HAZIRLIK"))
    wordsArray.append(Word(wordDescribe: "TABURE", wordForbidden1: "OTURMAK", wordForbidden2: "SANDALYE", wordForbidden3: "KOLTUK", wordForbidden4: "YEMEKHANE", wordForbidden5: "SIRT"))
    wordsArray.append(Word(wordDescribe: "EREZYON", wordForbidden1: "TOPRAK", wordForbidden2: "KAYMA", wordForbidden3: "AĞAÇ", wordForbidden4: "HEYELAN", wordForbidden5: "TEMA"))
    wordsArray.append(Word(wordDescribe: "ÇAMAŞIR", wordForbidden1: "KİRLİ", wordForbidden2: "YIKAMAK", wordForbidden3: "MAKİNE", wordForbidden4: "DETERJAN", wordForbidden5: "GİYMEK"))
    wordsArray.append(Word(wordDescribe: "NUMUNE", wordForbidden1: "ÖRNEK", wordForbidden2: "VERMEK", wordForbidden3: "TAHLİL", wordForbidden4: "YEMEK", wordForbidden5: "KÜÇÜK"))
    wordsArray.append(Word(wordDescribe: "VİRAN", wordForbidden1: "ESKİ", wordForbidden2: "YIKIK", wordForbidden3: "HARAP", wordForbidden4: "EV", wordForbidden5: "KÖHNE"))
    wordsArray.append(Word(wordDescribe: "KASVET", wordForbidden1: "SIKINTI", wordForbidden2: "GAM", wordForbidden3: "KARANLIK", wordForbidden4: "AYDINLIK", wordForbidden5: "NEŞELİ"))
    wordsArray.append(Word(wordDescribe: "MİÇO", wordForbidden1: "TAYFA", wordForbidden2: "GEMİ", wordForbidden3: "KAPTAN", wordForbidden4: "DENİZ", wordForbidden5: "YARDIMCI"))
    wordsArray.append(Word(wordDescribe: "HAMAK", wordForbidden1: "YATMAK", wordForbidden2: "AĞAÇ", wordForbidden3: "SALLANMAK", wordForbidden4: "KURMAK", wordForbidden5: "PİKNİK"))
    wordsArray.append(Word(wordDescribe: "GADDAR", wordForbidden1: "ACIMASIZ", wordForbidden2: "SERT", wordForbidden3: "KATI", wordForbidden4: "MERHAMET", wordForbidden5: "İNSAF"))
    wordsArray.append(Word(wordDescribe: "ÇADIR", wordForbidden1: "KAMP", wordForbidden2: "UYKU TULUMU", wordForbidden3: "TATİL", wordForbidden4: "KURMAK", wordForbidden5: "DOĞA"))
    wordsArray.append(Word(wordDescribe: "NADAS", wordForbidden1: "TARLA", wordForbidden2: "EKMEK", wordForbidden3: "BIRAKMAK", wordForbidden4: "DİNLENDİRMEK", wordForbidden5: "ÇİFTÇİ"))
    wordsArray.append(Word(wordDescribe: "HASIR", wordForbidden1: "SEPET", wordForbidden2: "ŞAPKA", wordForbidden3: "PLAJ", wordForbidden4: "DENİZ", wordForbidden5: "SERMEK"))
    wordsArray.append(Word(wordDescribe: "KONVOY", wordForbidden1: "ARABA", wordForbidden2: "GİTMEK", wordForbidden3: "DİZİLMEK", wordForbidden4: "ARKA", wordForbidden5: "DÜĞÜN"))
    wordsArray.append(Word(wordDescribe: "TAKUNYA", wordForbidden1: "TAHTA", wordForbidden2: "TERLİK", wordForbidden3: "AYAKKABI", wordForbidden4: "GİYMEK", wordForbidden5: "HAMAM"))
    wordsArray.append(Word(wordDescribe: "AKSİ", wordForbidden1: "SİNİRLİ", wordForbidden2: "TERS", wordForbidden3: "ZIT", wordForbidden4: "ASABİ", wordForbidden5: "HUYSUZ"))
    wordsArray.append(Word(wordDescribe: "VEZNE", wordForbidden1: "BANKA", wordForbidden2: "PARA", wordForbidden3: "ÖDEME", wordForbidden4: "ALMAK", wordForbidden5: "MUHASEBE"))
    wordsArray.append(Word(wordDescribe: "OLUK", wordForbidden1: "AKMAK", wordForbidden2: "SU", wordForbidden3: "YAĞMUR", wordForbidden4: "SAÇAK", wordForbidden5: "BORU"))
    wordsArray.append(Word(wordDescribe: "YAMAÇ", wordForbidden1: "UÇURUM", wordForbidden2: "YÜKSEK", wordForbidden3: "DAĞ", wordForbidden4: "DİK", wordForbidden5: "PARAŞÜT"))
    wordsArray.append(Word(wordDescribe: "PİL", wordForbidden1: "KALEM", wordForbidden2: "İNCE", wordForbidden3: "KUMANDA", wordForbidden4: "EL FENERİ", wordForbidden5: "FEN"))
    wordsArray.append(Word(wordDescribe: "ZİRAAT", wordForbidden1: "TARIM", wordForbidden2: "ÇİFTÇİ", wordForbidden3: "TOPRAK", wordForbidden4: "HAYVAN", wordForbidden5: "BANKA"))
    wordsArray.append(Word(wordDescribe: "PROSPEKTÜS", wordForbidden1: "İLAÇ", wordForbidden2: "ECZANE", wordForbidden3: "OKUMAK", wordForbidden4: "İÇİNDEKİLER", wordForbidden5: "KULLANMAK"))
  


}
