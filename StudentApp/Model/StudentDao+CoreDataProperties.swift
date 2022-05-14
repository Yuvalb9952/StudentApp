import Foundation
import CoreData


extension StudentDao {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<StudentDao> {
        return NSFetchRequest<StudentDao>(entityName: "StudentDao")
    }

    @NSManaged public var id: String?
    @NSManaged public var name: String?
    @NSManaged public var phone: String?
    @NSManaged public var avatarUrl: String?
    @NSManaged public var address: String?
}

extension StudentDao : Identifiable {

}
