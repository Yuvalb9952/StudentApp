import Foundation

class Student{
    public var id: String?
    public var name: String?
    public var phone: String?
    public var avatarUrl: String?
    public var address: String?
    
    init(){}
    
    init(student:StudentDao){
        id = student.id
        name = student.name
        phone = student.phone
        avatarUrl = student.avatarUrl
        address = student.address
    }    
}
