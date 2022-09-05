let numbers = [1, 4, 6, 9]

var newNumbers = [Int]()
for number in numbers {
    newNumbers.append(number * 2)
}
newNumbers

var newNumbers2 = [Int]()
numbers.forEach { number in
    newNumbers2.append(number * 2)
}
newNumbers2

let map = numbers.map { number in
    number * 2
}
map

let map2 = numbers.map{ $0 * 2 }
map2

let names = ["Albert", "Isaac", "Charles"]

let map3 = names.map{ $0.count }
map3

let fullNames = [("Albert", "Einstein"), ("Isaac", "Newton"), ("Charles", "Darwin")]
let map4 = fullNames.map{ $0.count > $1.count }
map4

struct Scientist {
    let firstName: String
    let lastName: String
    let discoveries: [String]
}

let einstein = Scientist(firstName: "Albert", lastName: "Einstein", discoveries: ["Special Relativity", "General Relativity"])
let newton = Scientist(firstName: "Isaac", lastName: "Newton", discoveries: ["Gravitation"])
let darwin = Scientist(firstName: "Charles", lastName: "Darwin", discoveries: ["Evolution"])

let scientists = [einstein, newton, darwin]

let map5: [(fullName: String, discoveryCount: Int)] = scientists.map { scientist in
    (fullName: scientist.firstName + " " + scientist.lastName, discoveryCount: scientist.discoveries.count)
}
map5
