import Vision
import UIKit

@available(iOS 13.0, *)
public struct VisionOCR {
    public init() {}
    /// Διαβάζει το κείμενο που υπάρχει σε ένα UIImage
    public func readImage(uiimage: UIImage) -> String {
        // Δημιουργώ το request (υπάρχουν διάφοροι τύποι, επέλεξα την ανάγνωση χαρακτήρων)
        let request = VNRecognizeTextRequest()
        // Προς το παρόν δεν υποστηρίζει Ελληνικά
//            request.recognitionLanguages = ["el-GR"]
        // το handler που περιέχει το image που θέλω να διαβαστεί. Το image πρέπει να είναι cgImage.
        let handler = VNImageRequestHandler(cgImage: uiimage.cgImage!, options: [:])
        // Εκτελώ το request
        try? handler.perform([request])
        // Διαβάζω τα αποτελέσματα
        let readingResults = request.results as! [VNRecognizedTextObservation]
        // Ενοποιώ τα αποτελέσματα σε ένα ενιαίο String, με κάθε αποτέλεσμα να βρίσκεται σε καινούργια γραμμή
        let completeResult = readingResults.reduce("") { (result, textObservation) -> String in
            // Επιλέγω την πρώτη επιλογή, καθώς απο την εμπειρία μου είναι συνήθως και η πιο σωστή.
            guard let firstResult = textObservation.topCandidates(1).first else { return result }
            return "\(result)\n\(firstResult.string)"
        }
        
        return completeResult
    }
}
