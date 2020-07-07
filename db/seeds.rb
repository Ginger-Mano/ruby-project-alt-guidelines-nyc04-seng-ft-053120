Pet.destroy_all
Shelter.destroy_all
Family.destroy_all

Pet.create([
{name: "Sparky", breed: "Pitbull", age: 5 , adoption_status: "Available", description: "Electrifying fun times!"},
{name: "Spike", breed: "Siberian Tiger Hound", age: 10, adoption_status: "Available", description: "Sharp as a tack and great with babies."},
{name: "Air Bud", breed: "Golden Retriever", age: 4, adoption_status: "Available", description: "Soar to a new life with this exciting dog."},
{name: "Beethoven", breed: "German Shepherd", age: 6, adoption_status: "Available", description: "Loyal and dependable"},
{name: "Tinkerbell", breed: "Chihuahua", age: 8, adoption_status: "Available", description: "Likes to dress up and go shopping."},
{name: "Snoopy", breed: "Beagle", age: 10, adoption_status: "Available", description: "Friendly with birds."},
{name: "Lady", breed: "American Cocker Spaniel", age: 3, adoption_status: "Available", description: "A true darling southern belle."},
{name: "Tramp", breed: "Schnauzer Mutt", age: 3, adoption_status: "Available", description: "Everyone's favorite friendly neighborhood mutt."},
{name: "Boh", breed: "Jack Russell", age: 5, adoption_status: "Available", description: "Likes to eat, cuddle, and gives plenty of kisses."}
 ])

Shelter.create([
    {name: "ASPCA", location: "Long Island", email: "longisland@aspca.com"},
    {name: "Two Tailz Rescue", location: "Atlanta", email: "ttr@gmail.com"},
    {name: "BARC", location: "Brooklyn", email: "barc@woof.com"},
    {name: "Humane Society", location: "Washington DC", email: "capital@humanesociety.com"},
    {name: "Muttville Senior Dog Rescue", location: "San Francisco", email: "muttseniors@dogrescue.com"}
])

Family.create([
    {name: "Rose Nyland", email: "stolof@goldengirls.com", address: "6515 Richmond St., Miami, FL", preferences: "tiny, cute, and playful"},
    {name: "Paris Hilton", email: "turnupbabe@gmail.com", address: "1010 Sunset Boulevard., LA, CA", preferences: "tiny, fierce, and demanding"},
    {name: "Jim Dear", email: "loveatfirstsight@disney.com", address: "234 St.Charles St., New Orleans, LA", preferences: "cute, caring, and cuddly"},
    {name: "Charlie Brown", email: "goodgrief@gmail.com", address: "15 Rutland Rd., Minneapolis, MN", preferences: "adventuror, kid friendly, and smart"},
    {name: "Stu Pickles", email: "Iamreptar_hearmeroar@gmail.com", address: "4654 Sickamore St., Tucson, AZ", preferences: "kid friendly, obedient, and playful"}
])

