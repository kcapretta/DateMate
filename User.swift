//
//  User.swift
//  RentAdate
//
//  Created by Kassandra Capretta on 1/12/20.
//  Copyright © 2020 Kassandra Capretta. All rights reserved.
//

import Foundation

var newUser = LocalUser(firstName: "", lastName: "", email: "")

struct UserInfo<T: CustomStringConvertible> {
    var type: String
    var value: T
    var visible: Bool

    func dictionaryFor() -> [String: Any] {
        if let object = value as? [CustomStringConvertible] {
            let result = object.map({ (item) -> CustomStringConvertible in
                return item.description
            })
            return [
                "value": result,
                "visible": visible
            ]
        } else {
            return  [
                "value": value.description,
                "visible": visible
            ]
        }
        
    }
}

// Gender
enum Gender: CustomStringConvertible {
    case woman
    case man
    case agender
    case androgyne
    case androgynous
    case bigender
    case demiman
    case demiwoman
    case genderfluid
    case genderneutral
    case gendernonconforming
    case genderquestioning
    case gendervariant
    case genderqueer
    case intersex
    case intersexman
    case intersexwoman
    case nonbinary
    case nongendered
    case pangender
    case polygender
    case thirdgender
    case transgender
    case transgenderman
    case transgenderwoman
    case transitioning
    case transsexual
    case twospirit
    
    static func valueFor(choice: String) -> Gender {
        switch choice {
        case "woman": return .woman
        case "man": return .man
        case "agender": return .agender
        case "androgyne": return .androgyne
        case "androgynous": return .androgynous
        case "bigender": return .bigender
        case "demiman": return .demiman
        case "demiwoman": return .demiwoman
        case "genderfluid": return .genderfluid
        case "genderneutral": return .genderneutral
        case "gendernonconforming": return .gendernonconforming
        case "genderquestioning": return .genderquestioning
        case "gendervariant": return .gendervariant
        case "genderqueer": return .genderqueer
        case "intersex": return .intersex
        case "intersexman": return .intersexman
        case "intersexwoman": return .intersexwoman
        case "nonbinary": return .nonbinary
        case "nongendered": return .nongendered
        case "pangender": return .pangender
        case "polygender": return .polygender
        case "thirdgender": return .thirdgender
        case "transgender": return .transgender
        case "transgenderman": return .transgenderman
        case "transgenderwoman": return .transgenderwoman
        case "transitioning": return .transitioning
        case "transsexual": return .transsexual
        case "twospirit": return .twospirit
        default: return .woman
        }
    }
    
    var description: String {
        switch self {
        case .woman: return "woman"
        case .man: return "man"
        case .agender: return "agender"
        case .androgyne: return "androgyne"
        case .androgynous: return "androgynous"
        case .bigender: return "bigender"
        case .demiman: return "demiman"
        case .demiwoman: return "demiwoman"
        case .genderfluid: return "genderfluid"
        case .genderneutral: return "genderneutral"
        case .gendernonconforming: return "gendernonconforming"
        case .genderquestioning: return "genderquestioning"
        case .gendervariant: return "gendervariant"
        case .genderqueer: return "genderqueer"
        case .intersex: return "intersex"
        case .intersexman: return "intersexman"
        case .intersexwoman: return "intersexwoman"
        case .nonbinary: return "nonbinary"
        case .nongendered: return "nongendered"
        case .pangender: return "pangender"
        case .polygender: return "polygender"
        case .thirdgender: return "thirdgender"
        case .transgender: return "transgender"
        case .transgenderman: return "transgenderman"
        case .transgenderwoman: return "transgenderwoman"
        case .transitioning: return "transitioning"
        case .transsexual: return "transsexual"
        case .twospirit: return "twospirit"
        }
    }
}

// Politics
enum Politics: CustomStringConvertible {
    case liberal
    case moderate
    case democrat
    case libertarian
    case conservative
    
    static func valueFor(choice: String) -> Politics {
        switch choice {
        case "liberal": return .liberal
        case "moderate": return .moderate
        case "democrat": return .democrat
        case "libertarian": return .libertarian
        case "conservative": return .conservative
        default: return .liberal
        }
    }
    
    var description: String {
        switch self {
        case .liberal: return "liberal"
        case .moderate: return "moderate"
        case .democrat: return "democrat"
        case .libertarian: return "libertarian"
        case .conservative: return "conservative"
        }
    }
}

// Religion
enum Religion: CustomStringConvertible {
    case atheist
    case agnostic
    case buddhist
    case catholic
    case christian
    case hindu
    case jewish
    case muslim
    case spiritual
    
    static func valueFor(choice: String) -> Religion {
        switch choice {
        case "atheist": return .atheist
        case "agnostic": return .agnostic
        case "buddhist": return .buddhist
        case "catholic": return .catholic
        case "christian": return .christian
        case "hindu": return .hindu
        case "jewish": return .jewish
        case "muslim": return .muslim
        case "spiritual": return .spiritual
        default: return .atheist
        }
    }
    
    var description: String {
        switch self {
        case .atheist: return "atheist"
        case .agnostic: return "agnostic"
        case .buddhist: return "buddhist"
        case .catholic: return "catholic"
        case .christian: return "christian"
        case .hindu: return "hindu"
        case .jewish: return "jewish"
        case .muslim: return "muslim"
        case .spiritual: return "spiritual"
        }
    }
}

// Ethnicity
enum Ethnicity: CustomStringConvertible {

    case eastAsian
    case southAsian
    case middleEastern
    case americanIndian
    case africanDescent
    case hispanic
    case pacificIslander
    case caucasian
    
    static func valueFor(choice: String) -> Ethnicity {
        switch choice {
        case  "eastAsian": return .eastAsian
        case "southAsian": return .southAsian
        case "middleEastern": return .middleEastern
        case "americanIndian": return .americanIndian
        case "africanDescent": return .africanDescent
        case "hispanic": return .hispanic
        case "pacificIslander": return .pacificIslander
        case "caucasian": return .caucasian
        default: return .eastAsian
        }
    }
    
    var description: String {
        switch self {
        case .eastAsian: return "eastAsian"
        case .southAsian: return "southAsian"
        case .middleEastern: return "middleEastern"
        case .americanIndian: return "americanIndian"
        case .africanDescent: return "africanDescent"
        case .hispanic: return "hispanic"
        case .pacificIslander: return "pacificIslander"
        case .caucasian: return "caucasian"
        }
    }
    
}

// Drink
enum Drink: CustomStringConvertible {
    case yes
    case no
    case sometimes
    
    static func valueFor(choice: String) -> Drink {
        switch choice {
        case "yes": return .yes
        case "no": return .no
        case "sometimes": return .sometimes
        default: return .sometimes
        }
    }
    
    var description: String {
        switch self {
        case .yes: return "yes"
        case .no: return "no"
        case .sometimes: return "sometimes"
        }
    }
}

// Smoking
enum Smoking: CustomStringConvertible {
    case yes
    case no
    case sometimes
    
    static func valueFor(choice: String) -> Smoking {
        switch choice {
        case "yes": return .yes
        case "no": return .no
        case "sometimes": return .sometimes
        default: return .sometimes
        }
    }
    
    var description: String {
        switch self {
        case .yes: return "yes"
        case .no: return "no"
        case .sometimes: return "sometimes"
        }
    }
}

// Costs Covered
enum CostsCovered: CustomStringConvertible {
    case yes
    case no
    case somewhat
    
    static func valueFor(choice: String) -> CostsCovered {
        switch choice {
        case "yes": return .yes
        case "no": return .no
        case "somewhat": return .somewhat
        default: return .somewhat
        }
    }
    
    var description: String {
        switch self {
        case .yes: return "yes"
        case .no: return "no"
        case .somewhat: return "somewhat"
        }
    }
}

// Looking For
enum LookingFor: CustomStringConvertible {
    case men
    case women
    case both
    
    static func valueFor(choice: String) -> LookingFor {
        switch choice {
        case "men": return .men
        case "women": return .women
        default: return .women
        }
    }
    
    var description: String {
        switch self {
        case .men: return "men"
        case .women: return "women"
        case .both: return "both"
        }
    }
}

// Looking for a Date

// Type of Attire
enum typeOfAttire: CustomStringConvertible {
    case casual
    case semiformal
    case formal
    case professional
    case semiprofessional
    case anything
    case costume
    
    static func valueFor(choice: String) -> typeOfAttire {
        switch choice {
        case "casual": return .casual
        case "semiformal": return .semiformal
        case "formal": return .formal
        case "professional": return .professional
        case "semiprofessional": return .semiprofessional
        case "anything": return .anything
        case "costume": return .costume
        default: return .casual
        }
    }
    
    var description: String {
        switch self {
        case .casual: return "casual"
        case .semiformal: return "semiformal"
        case .formal: return "formal"
        case .professional: return "professional"
        case .semiprofessional: return "semiprofessional"
        case .anything: return "anything"
        case .costume: return "costume"
            
        }
    }
}

// Type of Event
enum typeOfEvent: CustomStringConvertible {
    case date
    case party
    case event
    case workevent
    case wedding
    case closefriendsparty
    case concert
    case funeral
    case uniqueevent
    case other
    
    static func valueFor(choice: String) -> typeOfAttire {
        switch choice {
        case "date": return .date
        case "party": return .party
        case "event": return .event
        case "workevent": return .workevent
        case "wedding": return .wedding
        case "closefriendsparty": return .closefriendsparty
        case "concert": return .concert
        case "funeral": return .funeral
        case "uniqueevent": return .uniqueevent
        case "other": return .other
        default: return .date
        }
    }
    
    var description: String {
        switch self {
        case .date: return "date"
        case .party: return "party"
        case .event: return "event"
        case .workevent: return "workevent"
        case .wedding: return "wedding"
        case .closefriendsparty: return "closefriendsparty"
        case .concert: return "concert"
        case .funeral: return "funeral"
        case .uniqueevent: return "uniqueevent"
        case .other: return "other"
            
        }
    }
}

struct LocalUser {
    
    // About User
    var firstName: String
    var lastName: String
    var email: String
    var gender: UserInfo<Gender>? = nil
    var profilePicture: UserInfo<String>? = nil
    var birthday: UserInfo<String>? = nil
    var jobTitle: UserInfo<String>? = nil
    var school: UserInfo<String>? = nil
    var politics: UserInfo<Politics>? = nil
    var educationLevel: UserInfo<EducationLevel>? = nil
    var religiousBeliefs: UserInfo<Religion>? = nil
    var homeTown: UserInfo<String>? = nil
    var height: UserInfo<String>? = nil
    var ethnicity: UserInfo<Ethnicity>? = nil
    var drink: UserInfo<Drink>? = nil
    var smoking: UserInfo<Smoking>? = nil
    // Interested in people looking for: men / women
    var lookingFor: UserInfo<LookingFor>? = nil
    var accountPicture1: UserInfo<String>? = nil
    var accountPicture2: UserInfo<String>? = nil
    var accountPicture3: UserInfo<String>? = nil
    
    // Looking for a Date
    var typeOfAttire: UserInfo<TypeOfAttire>? = nil
    var costsCovered: UserInfo<CostsCovered>? = nil
    var typeOfEvent: UserInfo<TypeOfEvent>? = nil
    var whatImLookingFor: UserInfo<String>? = nil
    var personalStatement1: User<String>? = nil
    var eventLocation: User<String>? = nil
    // Date of event
    
    // Available for a Date
    var personalStatement2: User<String>? = nil
    var typeOfEventImLookingFor: User<String>? = nil

//SLICEEIGHT
func makeDictionary() -> [String: Any] {
    print("imlooking...", imLookingFor)
    return [
        "firstName": firstName,
        "lastName": lastName,
        "gender": gender?.dictionaryFor() ?? [:],
        "email": email,
        "profilPicture": profilePicture?.dictionaryFor() ?? [:],
        "jobTitle": jobTitle?.dictionaryFor() ?? [:],
        "school": school?.dictionaryFor() ?? [:],
        "educationLevel": educationLevel?.dictionaryFor() ?? [:],
        "religiousBeliefs": religiousBeliefs?.dictionaryFor() ?? [:],
        "birthday": birthday?.dictionaryFor() ?? [:],
        "lookingFor": lookingFor?.dictionaryFor() ?? [:],
        "politics": interestedIn?.dictionaryFor() ?? [:],
        "drink": drink?.dictionaryFor() ?? [:],
        "ethnicity": ethnicity?.dictionaryFor() ?? [:],
        "homeTown": homeTown?.dictionaryFor() ?? [:],
        "height": height?.dictionaryFor() ?? [:],
        "accountPicture1": accountPicture1?.dictionaryFor() ?? [:],
        "accountPicture2": accountPicture2?.dictionaryFor() ?? [:],
        "accountPicture3": accountPicture3?.dictionaryFor() ?? [:],
        "smoking": smoking?.dictionaryFor() ?? [:],
        "typeOfAttire": typeOfAttire?.dictionaryFor() [:],
        "costsCovered": costsCovered?.dictionaryFor() [:],
        "typeOfEvent": typeOfEvent?.dictionaryFor() [:],
        "whatImLookingFor": whatImLookingFor?.dictionaryFor() [:],
        "personalStatement1": personalStatement?.dictionaryFor() [:],
        "eventLocation": eventLocation?.dictionaryFor() [:],
        "personalStatement2": personalStatement1?.dictionaryFor() [:],
        "eventLocation": eventLocation?.dictionaryFor() [:]
        
    ]
}

//SLICENINE
static func makeObjectFrom(_ dictionary: [String: Any]) -> LocalUser {
    let firstName = dictionary["firstName"] as? String ?? ""
    let lastName = dictionary["lastName"]  as? String ?? ""
    let email = dictionary["email"]  as? String ?? ""
    let gender = dictionary["gender"] as? [String: Any]
    let profilePicture = dictionary["profilePicture"] as? [String: Any]
    let jobTitle = dictionary["jobTitle"] as? [String: Any]
    let school = dictionary["school"] as? [String: Any]
    let educationLevel = dictionary["educationLevel"] as? [String: Any]
    let religiousBeliefs = dictionary["religiousBeliefs"] as? [String: Any]
    let politics = dictionary["politics"] as? [String: Any]
    let ethnicity = dictionary["ethnicity"] as? [String: Any]
    let drink = dictionary["drink"] as? [String: Any]
    let smoking = dictionary["smoking"] as? [String: Any]
    let lookingFor = dictionary["lookingFor"] as? [String: Any]
    let homeTown = dictionary["homeTown"] as? [String: Any]
    let interestedIn = dictionary["interestedIn"] as? [String: Any]
    let height = dictionary["height"] as? [String: Any]
    let accountPicture1 = dictionary["accountPicture1"] as? [String: Any]
    let accountPicture2 = dictionary["accountPicture2"] as? [String: Any]
    let accountPicture3 = dictionary["accountPicture3"] as? [String: Any]
    // Looking for a Date
    let typeOfAttire = dictionary["typeOfAttire"] as? [String: Any]
    let costsCovered = dictionary["costsCovered"] as? [String: Any]
    let typeOfEvent = dictionary["typeOfEvent"] as? [String: Any]
    let whatImLookingFor = dictionary["whatImLookingFor"] as? [String: Any]
    let personalStatement1 = dictionary["personalStatement1"] as? [String: Any]
    let eventLocation = dictionary["eventLocation"] as? [String: Any]
    let personalStatement2 = dictionary["personalStatement2"] as? [String: Any]
    let typeOfEventImLookingFor = dictionary["typeOfEventImLookingFor"] as? [String: Any]
    
    
    
    
    //Set Values
    
    // Main Profile Picture
    let profilePict: UserInfo<String> = UserInfo(type: "profilePicture",
                                                 value: profilePicture?["value"] as? String ?? "",
                                                 visible: profilePicture?["visible"] as? Bool ?? false)
    
    // Account Picture 1
    let accountPict1: UserInfo<String> = UserInfo(type: "accountPicture1",
    value: accountPicture1?["value"] as? String ?? "",
    visible: accountPicture1?["visible"] as? Bool ?? false)
    
    // Account Picture 2
    let accountPict2: UserInfo<String> = UserInfo(type: "accountPicture2",
    value: accountPicture2?["value"] as? String ?? "",
    visible: accountPicture2?["visible"] as? Bool ?? false)
    
    // Account Picture 3
    let accountPict3: UserInfo<String> = UserInfo(type: "accountPicture3",
    value: accountPicture3?["value"] as? String ?? "",
    visible: accountPicture3?["visible"] as? Bool ?? false)

    // Gender Value
    let genderValue: UserInfo<Gender> = UserInfo(type: "gender",
                                                 value: Gender.valueFor(choice: gender?["value"] as? String ?? ""),
                                            visible: gender?["visible"] as? Bool ?? false)
    
    // Job Title Value
    let jobTitleValue: UserInfo<String> = UserInfo(type: "jobTitle",
    value: jobTitle?["value"] as? String ?? "",
    visible: jobTitle?["visible"] as? Bool ?? false)
    
    // School Value
    let schoolValue: UserInfo<String> = UserInfo(type: "school",
    value: school?["value"] as? String ?? "",
    visible: school?["visible"] as? Bool ?? false)
    
    // HomeTown Value
    let homeTownValue: UserInfo<String> = UserInfo(type: "homeTown",
    value: homeTown?["value"] as? String ?? "",
    visible: homeTown?["visible"] as? Bool ?? false)
    
    // Religious Beliefs Value
    let religiousBeliefValue: UserInfo<Religion> = UserInfo(type: "religiousBeliefs",
                                                            value: Religion.valueFor(choice: religiousBeliefs?["value"] as? String ?? ""),
                                                            visible: religiousBeliefs?["visible"] as? Bool ?? false)
    
    // Education Level Value
    let educationLevelValue: UserInfo<EducationLevel> = UserInfo(type: "educationLevel",
                                                            value: EducationLevel.valueFor(choice: educationLevel?["value"] as? String ?? ""),
                                                            visible: educationLevel?["visible"] as? Bool ?? false)
    
    // Politics Value
    let politicsValue: UserInfo<Politics> = UserInfo(type: "politicsValue",
                                                            value: Politics.valueFor(choice: politics?["value"] as? String ?? ""),
                                                            visible: politics?["visible"] as? Bool ?? false)
    
    // Ethnicity Value
    let ethnicityValue: UserInfo<Ethnicity> = UserInfo(type: "ethnicityValue",
                                                            value: Ethnicity.valueFor(choice: ethnicity?["value"] as? String ?? ""),
                                                            visible: ethnicity?["visible"] as? Bool ?? false)
    
    // Drink Value
    let drinkValue: UserInfo<Drink> = UserInfo(type: "drinkValue",
                                                            value: Drink.valueFor(choice: drink?["value"] as? String ?? ""),
                                                            visible: drink?["visible"] as? Bool ?? false)
    
    // Smoking Value
    let smokingValue: UserInfo<Smoking> = UserInfo(type: "smokingValue",
                                                            value: Smoking.valueFor(choice: smoking?["value"] as? String ?? ""),
                                                            visible: smoking?["visible"] as? Bool ?? false)
    
    // Looking For Value ( men / women / both )
    let lookingForValue: UserInfo<LookingFor> = UserInfo(type: "lookingForValue",
                                                            value: LookingFor.valueFor(choice: lookingFor?["value"] as? String ?? ""),
                                                            visible: lookingFor?["visible"] as? Bool ?? false)
    
    // typeOfAttire
    let typeOfAttire: UserInfo<TypeOfAttire> = UserInfo(type: "typeOfAttire",
                                                        value: TypeOfAttire.valueFor(choice:
                                                            smoking?["value"] as? String ?? ""),
                                                        visible: typeOfAttire?["visible"]
                                                            as? Bool ?? false)
    
    // costsCovered
    let costsCovered: UserInfo<CostsCovered> = UserInfo(type: "costsCovered",
                                                        value: CostsCovered.valueFor(choice:
                                                            smoking?["value"] as? String ?? ""),
                                                        visible: costsCovered?["visible"]
                                                            as? Bool ?? false)
    
    // typeOfEvent
    let typeOfEvent: UserInfo<TypeOfEvent> = UserInfo(type: "typeOfEvent",
                                                      value: TypeOfEvent.valueFor(choice: smoking?["value"] as? String ?? ""),
                                                      visible: TypeOfEvent?["visible"]
                                                        as? Bool ?? false)
    
    // whatImLookingFor
    let whatImLookingFor: UserInfo<String> = UserInfo(type: "whatImLookingFor",
                                                      value: whatImLookingFor?["value"] as? String ?? "",
                                                      visible: whatImLookingFor?["visible"] as? Bool ?? false)
    
    // personalStatement1
    let personalStatement1: UserInfo<String> = UserInfo(type: "personalStatement1",
                                                        value: PersonalStatement1?["value"] as? String ?? "",
                                                        visible: personalStatement1?["visible"]
                                                                as? Bool ?? false)
    
    // eventLocation
    let eventLocation: UserInfo<EventLocation> = UserInfo(type: "eventLocation",
                                                          value: EventLocation.valueFor(choice: eventLocation?["value"] as? String ?? ""),
                                                          visible: eventLocation?["visible"] as? Bool ?? false)
    
    // personalStatement2
    let personalStatement2: UserInfo<PersonalStatement2> = UserInfo(type: "personalStatement2", value: PersonalStatement2?["value"] as? String ?? "", visible: personalStatement2?["visible"] as? Bool ?? false)
    
    // typeOfEventImLookingFor
    let typeOfEventImLookingFor: UserInfo<typeOfEventImLookingFor> = UserInfo(type: "typeOfEventImLookingFor", value: TypeOfEventImLookingFor?["value"] as? String ?? "", visible: typeOfEventImLookingFor?["visible"] as? Bool ?? false)

// Create localUser
let localUser = LocalUser(firstName: firstName, lastName: lastName, email: email, gender: genderValue, profilePicture: profilePict, birthday: nil, jobTitle: jobTitleValue, school: schoolValue, educationLevel: educationLevelValue, religiousBeliefs: religiousBeliefValue, homeTown: homeTownValue, politics: politicsValue, height: heightValue, ethnicity: ethnicityValue, familyPlans: familyPlansValue, drink: drinkValue, smoking: smokingValue, lookingFor: lookingForValue, lifeGoals: nil, teachMe: nil, changeMind: nil, takePride: nil, imLookingFor: nil, toKnow: nil, interestedIn: interestedInValue, accountPicture1: accountPict1, accountPicture2: accountPict2, accountPicture3: accountPict3, accountPicture4: accountPict4, accountPicture5: accountPict5, accountPicture6: accountPict6)

return localUser
