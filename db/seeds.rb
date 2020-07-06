Pet.create([
{name: "Sparky", breed: "Pitbull", age: 5 , adoption_status: "Available"},
{name: "Spike", breed: "Siberian Tiger Hound", age: 10, adoption_status: "Available"},
{name: "Air Bud", breed: "Golden Retriever", age: 4, adoption_status: "Available"},
{name: "Beethoven", breed: "German Shepherd", age: 6, adoption_status: "Available"},
{name: "Tinkerbell", breed: "Chihuahua", age: 8, adoption_status: "Available"},
{name: "Snoopy", breed: "Beagle", age: 10, adoption_status: "Available"},
{name: "Lady", breed: "American Cocker Spaniel", age: 3, adoption_status: "Available"},
{name: "Tramp", breed: "Schnauzer Mutt", age: 3, adoption_status: "Available"},
{name: "Boh", breed: "Jack Russell", age: 5, adoption_status: "Available"}
 ])

Shelter.create([
    {name: "ASPCA", location: "Long Island"},
    {name: "Two Tailz Rescue", location: "Atlanta"},
    {name: "BARC", location: "Brooklyn"},
    {name: "Humane Society", location: "Washington DC"},
    {name: "Muttville Senior Dog Rescue", location: "San Francisco"}
])

Family.create([
    {name: "Rose Nyland", email: "stolof@goldengirls.com", address: "6515 Richmond St., Miami, FL", preferences: "tiny, cute, and playful"},
    {name: "Paris Hilton", email: "turnupbabe@gmail.com", address: "1010 Sunset Boulevard., LA, CA", preferences: "tiny, fierce, and demanding"},
    {name: "Jim Dear", email: "loveatfirstsight@disney.com", address: "234 St.Charles St., New Orleans, LA", preferences: "cute, caring, and cuddly"},
    {name: "Charlie Brown", email: "goodgrief@gmail.com", address: "15 Rutland Rd., Minneapolis, MN", preferences: "adventuror, kid friendly, and smart"},
    {name: "Stu Pickles", email: "Iamreptar_hearmeroar@gmail.com", address: "4654 Sickamore St., Tucson, AZ", preferences: "kid friendly, obedient, and playful"}
])

