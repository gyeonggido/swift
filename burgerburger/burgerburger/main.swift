//
//  main.swift
//  burgerburger
//
//  Created by Park Jiwoong on 12/6/23.
//

import Foundation


func printMainMenu() {
    print("""
    
    [ SHAKESHACK MENU ]
    1. Burgers         | 앵거스 비프 통살을 다져만든 버거
    2. Ice Cream       | 매장에서 신선하게 만드는 아이스크림
    3. Drinks          | 매장에서 직접 만드는 음료
    4. Beer            | 뉴욕 브루클린 브루어리에서 양조한 맥주
    5. 계산하기
    0. 종료             | 프로그램 종료
    
    """)
}

// 메뉴 번호에 따라 결과를 반환하는 함수
func getMenuInfo(menuNumber: Int) -> String {
    switch menuNumber {
    case 1:
        return "Burgers 메뉴를 선택했습니다."
    case 2:
        return "Ice Cream 메뉴를 선택했습니다."
    case 3:
        return "Drinks 메뉴를 선택했습니다."
    case 4:
        return "Beer 메뉴를 선택했습니다."
    case 5:
        return "계산하기 메뉴를 선택했습니다."
    case 0:
        return "프로그램을 종료합니다."
    default:
        return "잘못된 선택입니다. 다시 시도해주세요."
    }
}

// 메인
func mainLv() {
    while true {
        printMainMenu()
        print("-> 메뉴를 선택해주세요: ", terminator: "")
        
        if let input = readLine(), let menuNumber = Int(input) {
            let menuInfo = getMenuInfo(menuNumber: menuNumber)
            print(menuInfo)
        } else {
            print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
        }
    }
}


// 버거 메뉴판
func printBurgersMenu() {
    print("""
    
    [ Burgers MENU ]
    1-1. ShackBurger   | W 6.9 | 토마토, 양상추, 쉑소스가 토핑된 치즈버거
    1-2. SmokeShack    | W 8.9 | 베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거
    1-3. Shroom Burger | W 9.4 | 몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거
    1-4. Cheeseburger  | W 6.9 | 포테이토 번과 비프패티, 치즈가 토핑된 치즈버거
    1-5. Hamburger     | W 5.4 | 비프패티를 기반으로 야채가 들어간 기본버거
    0. 뒤로가기        | 뒤로가기
    
    """)
}

// 아이스크림 메뉴판
func printIceCreamMenu() {
    print("""
    
    [ Ice Cream MENU ]
    2-1. Ice Cream 1   | W 6.9 | 설명 1
    2-2. Ice Cream 2   | W 8.9 | 설명 2
    2-3. Ice Cream 3   | W 9.4 | 설명 3
    2-4. Ice Cream 4   | W 6.9 | 설명 4
    2-5. Ice Cream 5   | W 5.4 | 설명 5
    0. 뒤로가기        | 뒤로가기
    
    """)
}
    
// 음료 메뉴판
func printDrinksMenu() {
    print("""
    
    [ Drinks MENU ]
    3-1. Drinks 1   | W 6.9 | 설명 1
    3-2. Drinks 2   | W 8.9 | 설명 2
    3-3. Drinks 3   | W 9.4 | 설명 3
    3-4. Drinks 4   | W 6.9 | 설명 4
    3-5. Drinks 5   | W 5.4 | 설명 5
    0. 뒤로가기     | 뒤로가기
    
    """)
}
    
// 맥주 메뉴판
func printBeerMenu() {
    print("""
    
    [ Beer MENU ]
    4-1. Beer 1   | W 6.9 | 설명 1
    4-2. Beer 2   | W 8.9 | 설명 2
    4-3. Beer 3   | W 9.4 | 설명 3
    4-4. Beer 4   | W 6.9 | 설명 4
    4-5. Beer 5   | W 5.4 | 설명 5
    0. 뒤로가기    | 뒤로가기
    
    """)
}
    



// 메인 함수
func mainLv0() {
    while true {
        printMainMenu()
        print("-> 메뉴를 선택해주세요: ")
        
        if let input = readLine(), let menuNumber = Int(input) {
            
            // 입력값이 숫자로 변환될 수 있는지 확인
            switch menuNumber {
            case 1:
                printBurgersMenu()
            case 2:
                printIceCreamMenu()
            case 3:
                printDrinksMenu()
            case 4:
                printBeerMenu()
            case 0:
                print("프로그램을 종료합니다.")
                exit(0)
            default:
                print("잘못된 선택입니다. 다시 시도해주세요.")
            }
        } else {
            print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
        }
    }
}

// 버거 클래스
class Burger_Lv2 {
    var name: String
    var price: Double
    var description: String
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
    
    func displayInfo() {
        print("\(name) | W \(price) | \(description)")
    }
}

// 아이스크림 클래스
class IceCream_Lv2 {
    var name: String
    var price: Double
    var description: String
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
    
    func displayInfo() {
        print("\(name) | W \(price) | \(description)")
    }
}

// 음료 클래스
class Drink_Lv2 {
    var name: String
    var price: Double
    var description: String
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
    
    func displayInfo() {
        print("\(name) | W \(price) | \(description)")
    }
}

// 맥주 클래스
class Beer_Lv2 {
    var name: String
    var price: Double
    var description: String
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
    
    func displayInfo() {
        print("\(name) | W \(price) | \(description)")
    }
}

// 주문 클래스
class Order_Lv2 {
    var items: [Any]
    
    init(items: [Any]) {
        self.items = items
    }
    
    func add(item: Any){
        items.append(item)
    }
}

// 메인 함수
func mainLv1() {
    while true {
        printMainMenu()
        print("\n\n메뉴를 선택해주세요: ", terminator: "")
        
        if let input = readLine(), let menuNumber = Int(input) {
            
            // 입력값이 숫자로 변환될 수 있는지 확인
            switch menuNumber {
            case 1:
                printBurgersMenu()
            case 2:
                printIceCreamMenu()
            case 3:
                printDrinksMenu()
            case 4:
                printBeerMenu()
            case 0:
                print("프로그램을 종료합니다.")
                exit(0)
            default:
                print("잘못된 선택입니다. 다시 시도해주세요.")
            }
        } else {
            print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
        }
    }
}


//Lv1에서 설계한 클래스들을 상속 관계를 가지도록 변경해요 (Burger도 부모 클래스를 가질 수 있을지 고민해요!)
//***하나의 객체 리스트로 모든 메뉴들을 관리하도록 수정해요 (List)***. MenuItem
//    var 리스트변수: [클래스타입] = []


class MenuItem {
    var name: String
    var price: Double
    var description: String
    
    init(name: String, price: Double, description: String) {
        self.name = name
        self.price = price
        self.description = description
    }
    
    func displayInfo() {
        print("\(name) | W \(price) | \(description)")
    }
}

// 메뉴 클래스
class MenuCategory {
    var items: [MenuItem]
    
    init(items: [MenuItem]) {
        self.items = items
    }
    
    func displayMenu() {
        print("\n[ 메뉴 ]")
        for (index, item) in items.enumerated() {
            print("\(index + 1). ", terminator: "")
            item.displayInfo()
        }
        print("0. 뒤로가기")
    }
}

// 주문 클래스
class Order {
    var items: [MenuItem]
    
    init() {
        self.items = []
    }
    
    func add(item: MenuItem) {
        items.append(item)
        print("\(item.name)을(를) 주문에 추가했습니다.")
    }
    
    func displayOrder() {
        print("\n[ 주문 내역 ]")
        for (index, item) in items.enumerated() {
            print("\(index + 1). \(item.name) | W \(item.price)")
        }
    }
    
    func calculateTotal() -> Double {
        return items.reduce(0) { $0 + $1.price }
    }
}

// 메인 함수
func mainLv2() {
    let burgersMenu = createBurgersMenu()
    let iceCreamMenu = createIceCreamMenu()
    let drinksMenu = createDrinksMenu()
    let beerMenu = createBeerMenu()

    let burgersCategory = MenuCategory(items: burgersMenu)
    let iceCreamCategory = MenuCategory(items: iceCreamMenu)
    let drinksCategory = MenuCategory(items: drinksMenu)
    let beerCategory = MenuCategory(items: beerMenu)

    let menus: [MenuCategory] = [burgersCategory, iceCreamCategory, drinksCategory, beerCategory]
    let order = Order()

    while true {
        printMainMenu()
        print("\n\n메뉴를 선택해주세요: ", terminator: "")
        
        if let input = readLine(), let menuNumber = Int(input) {
            
            // 입력값이 숫자로 변환될 수 있는지 확인
            switch menuNumber {
            case 1...4:
                let selectedMenu = menus[menuNumber - 1]
                selectedMenu.displayMenu()

                print("-> 항목을 선택해주세요: ", terminator: "")
                if let itemInput = readLine(), let menuItemNumber = Int(itemInput) {
                    if menuItemNumber == 0 {
                        break
                    } else if menuItemNumber >= 1 && menuItemNumber <= selectedMenu.items.count {
                        let selectedItem = selectedMenu.items[menuItemNumber - 1]
                        order.add(item: selectedItem)
                    } else {
                        print("잘못된 선택입니다. 다시 시도해주세요.")
                    }
                } else {
                    print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
                }
            case 5:
                order.displayOrder()
                print("총 금액: W \(order.calculateTotal())")
            case 0:
                print("프로그램을 종료합니다.")
                exit(0)
            default:
                print("잘못된 선택입니다. 다시 시도해주세요.")
            }
        } else {
            print("유효하지 않은 입력입니다. 숫자를 입력해주세요.")
        }
    }
}

// 각 메뉴의 항목을 생성하는 함수들
func createBurgersMenu() -> [MenuItem] {
    return [
        MenuItem(name: "ShackBurger", price: 6.9, description: "토마토, 양상추, 쉑소스가 토핑된 치즈버거"),
        MenuItem(name: "SmokeShack", price: 8.9, description: "베이컨, 체리 페퍼에 쉑소스가 토핑된 치즈버거"),
        MenuItem(name: "Shroom Burger", price: 9.4, description: "몬스터 치즈와 체다 치즈로 속을 채운 베지테리안 버거"),
        MenuItem(name: "Cheeseburger", price: 6.9, description: "포테이토 번과 비프패티, 치즈가 토핑된 치즈버거"),
        MenuItem(name: "Hamburger", price: 5.4, description: "비프패티를 기반으로 야채가 들어간 기본버거"),
    ]
}

func createIceCreamMenu() -> [MenuItem] {
    return [
        MenuItem(name: "Ice Cream 1", price: 6.9, description: "설명 1"),
        MenuItem(name: "Ice Cream 2", price: 8.9, description: "설명 2"),
        MenuItem(name: "Ice Cream 3", price: 9.4, description: "설명 3"),
        MenuItem(name: "Ice Cream 4", price: 6.9, description: "설명 4"),
        MenuItem(name: "Ice Cream 5", price: 5.4, description: "설명 5"),
    ]
}

func createDrinksMenu() -> [MenuItem] {
    return [
        MenuItem(name: "Drinks 1", price: 6.9, description: "설명 1"),
        MenuItem(name: "Drinks 2", price: 8.9, description: "설명 2"),
        MenuItem(name: "Drinks 3", price: 9.4, description: "설명 3"),
        MenuItem(name: "Drinks 4", price: 6.9, description: "설명 4"),
        MenuItem(name: "Drinks 5", price: 5.4, description: "설명 5"),
    ]
}

func createBeerMenu() -> [MenuItem] {
    return [
        MenuItem(name: "Beer 1", price: 6.9, description: "설명 1"),
        MenuItem(name: "Beer 2", price: 8.9, description: "설명 2"),
        MenuItem(name: "Beer 3", price: 9.4, description: "설명 3"),
        MenuItem(name: "Beer 4", price: 6.9, description: "설명 4"),
        MenuItem(name: "Beer 5", price: 5.4, description: "설명 5"),
    ]
        }




//mainLv()
//mainLv0()
//mainLv1()
mainLv2()

