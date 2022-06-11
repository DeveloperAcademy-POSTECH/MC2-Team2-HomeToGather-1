import SwiftUI
import Firebase
import AuthenticationServices

struct Invitation: Hashable {
    var id = UUID().uuidString      // 초대장 고유 id
    var uid: String                 // 주최자 id
    var organizerName: String       // 주최자 이름
    var participantName: [String]?  // 참여자 이름
    var participantUid: [String]?   // 참여자 id
    var title: String               // 파티 이름
    var date: String                // 파티 일시
    var place: String               // 파티 장소
    var description: String         // 파티 소개
    var rule: [String]              // 파티 규칙
    var cost: String                // 파티 비용
    var food: [String]              // 메뉴
    var etc: [String]               // 기타
    var image: String = ""          // 이미지
    var ruleFeedback: [String] = [""] // 규칙 피드백
    var foodFeedback: [String] = [""] // 메뉴 피드백
    var color: String               // 초대장 색상
    
    var dictionary: [String: Any] {
            return [
                "id": id,
                "uid": uid,
                "organizerName": organizerName,
                "participantName": participantName != nil ? participantName! : [""],
                "participantUid": participantUid != nil ? participantUid! : [""],
                "title": title,
                "date": date,
                "place": place,
                "description": description,
                "rule": rule,
                "cost": cost,
                "food": food,
                "etc": etc,
                "image": image,
                "ruleFeedback": ruleFeedback,
                "foodFeedback": foodFeedback,
                "color": color,
            ]
        }
}
