//
//  Database.swift
//  Oscar Sorting
//
//  Created by Brendon Matusch on 2016-04-17.
//  Copyright © 2016 Blue Tacos. All rights reserved.
//

import Foundation

class Database {
    
// --------------------------------- DATABASE FILE --------------------------------- //
    
    // This class contains data that the app accesses through the Database Tools class. Only raw data is stored here.
    // There are no functions that are not central to the database itself.
    
static func categoryArray(_ category: String) -> [String] {
    switch (category) {
        case "Furniture": return furnitureCategoryData
        case "Metal": return metalCategoryData
        case "Wood": return woodCategoryData
        case "Medical": return medicalCategoryData
        case "Plastic": return plasticCategoryData
        case "Food": return foodCategoryData
        case "Paper": return paperCategoryData
        case "Liquids": return liquidsCategoryData
        case "Electronics": return electronicsCategoryData
        case "Glass": return glassCategoryData
        case "Yard Waste": return yardWasteCategoryData
    default: return ["Null"]
    }
}
    
static func destinationArray(_ destination: String) -> [String] {
    switch (destination) {
        case "Hazardous": return hazardousDestinationData
        case "Electronic Recycling": return specRecyclingDestinationData
        case "Compost": return compostDestinationData
        case "Garbage": return garbageDestinationData
        case "Large Items Pickup": return largeItemsDestinationData
    default: return ["Null"]
    }
}
    
static let categories =
    ["Furniture", "Metal", "Wood", "Medical", "Plastic", "Food", "Paper", "Liquids", "Electronics", "Glass", "Yard Waste"]
    
static let destinations =
    ["Hazardous", "Electronic Recycling", "Compost", "Garbage", "Large Items Pickup"]
    
static let wgwDestinations =
    ["Blue Box", "Green Bin", "Garbage", "Yard Waste", "Hazardous", "Pharmacies", "Libraries", "ReStore", "CDA", "Value Village", "Resale", "Landfill"]
    
static let detailControllerPreText =
    ["You can take ",
     "You can leave ",
     "You can leave ",
     "You can take ",
     "You can leave ",
     "You can leave "]

static let detailControllerPostText =
    [" to a nearby Hazardous Waste Depot. Call 3-1-1 or contact your city's government for more information.",
     " out on the curb in a Blue Box. Call 3-1-1 or contact your city's government for information on when recycling pick-up day is in your area.",
     " out on the curb in a garbage bag. Call 3-1-1 or contact your city's government for information on when garbage pick-up day is in your area.",
     " to a store or other location that recycles electronics. Call 3-1-1 or contact your city's government for information on where these locations are.",
     " out on the curb in a Green Bin. Call 3-1-1 or contact your city's government for information on when recycling pick-up day is in your area.",
     " out on the curb on designated Large Items Pickup days. Call 3-1-1 or contact your city's government for information on when Large Items Pickup days are in your area."]
    
static let hazardousDestinationData =
    ["Aerosol", "Ammonia", "Antifreeze", "Batteries", "Brake fluid", "Bug killers", "Butane cylinders", "Butane lighters", "Car batteries", "Car wax", "Cements", "Coolant", "Diesel", "Drain openers", "Fertilizers", "Fire extinguishers", "Fluorescent Tubes", "Gasoline", "Glues", "Medicine", "Motor oil containers", "Oven cleaners", "Paint", "Paint strippers", "Partially full aerosol cans", "Partially full paint cans", "Pesticides", "Pool chemicals", "Preservers", "Rust remover", "Solvents", "Stain", "Syringes", "Thermometers", "Thinners", "Transmission fluid", "Turpentine", "Weed killers", "Windshield washer"]

static let specRecyclingDestinationData =
    ["Computers (home)", "Laptops", "Televisions", "Printers", "Stereo equipment", "Microwaves", "Photocopiers"]
    
static let garbageDestinationData =
    ["Ashes", "Baby car seats", "Baby wipes", "Bubble wrap", "Candles", "CD cases", "Ceramic", "Chip bags", "Christmas decorations", "Cigarette butts", "Coat hanger", "Dead animals", "Dental floss", "Diaper liners", "Diapers", "Dryer disposable sheets", "Dryer lint", "Dust broom sheets", "Feminine hygiene products", "Hair", "Light bulbs", "Makeup remover pads", "Metal barrels", "Metal drums", "Metal pails", "Motor oil containers", "Oak barrels", "Oak drums", "Paper cups", "Pet food bags", "Pet litter", "Pet waste", "Pitchforks", "Plastic barrels", "Plastic children's toys", "Plastic drums", "Plastic shower curtains", "Plastic utensils", "Pots and pans", "Pottery", "Q-tips", "Rakes", "Sandpaper", "Sawdust", "Shovels", "Snack bar wrappers", "Stereo equipment", "Straws", "Styrofoam peanuts", "Toothbrush packaging", "Toys", "Tupperware", "Typewriters", "Vacuum bags", "Wine corks", "Ziploc bags"]

static let compostDestinationData =
    ["Baked goods", "Baking ingredients", "Bones", "Bread", "Brush", "Coffee filters", "Coffee grounds", "Cooking oil", "Cotton balls", "Dairy products", "Eggs", "Eggshells", "Fat", "Fish", "Fish bones", "Flour bags", "Freezer waxed bags", "Fruit", "Garden plants", "Grains", "Grass clippings", "Gravy", "Grease (non-motor)", "Ice cream cartons", "Leaves", "Meat ", "Muffin paper cups", "Napkins", "Nuts", "Nutshells", "Paper cups", "Paper plates", "Paper takeout containers", "Paper towels", "Parchment paper", "Pasta", "Popcorn bags", "Potato paper bags", "Rice", "Sauces", "Shells", "Sugar bags", "Teabags", "Tissue paper", "Vegetables", "Waxed cardboard"]
    
static let largeItemsDestinationData =
    ["Air conditioners", "Barbecues", "Benches", "Blinds", "Bookcases", "Coffee tables", "Curtain rods", "Fireplaces", "Folding chairs", "Footboards", "Futons", "Mattresses", "Patio chairs", "Patio umbrellas", "Shelving units", "Sofa beds", "Sofas", "Tables", "Workout benches", "Dehumidifiers", "Dishwashers", "Dryers", "Ovens", "Range hoods", "Refrigerators", "Stoves", "Washing machines", "Bathtubs", "Bicycles", "Furnaces", "Playpens", "Recliners", "Strollers", "Swing sets"]
    
static let furnitureCategoryData =
    ["Benches", "Blinds", "Bookcases", "Coffee tables", "Curtain rods", "Fireplaces", "Folding chairs", "Footboards", "Futons", "Mattresses", "Patio chairs", "Patio umbrellas", "Shelving units", "Sofa beds", "Sofas", "Tables", "Workout benches"]
    
static let metalCategoryData =
    ["Aluminum foil", "Aluminum tray", "Beer can", "Bicycles", "Butane cylinders", "Empty aerosol cans", "Empty paint cans", "Empty stain cans", "Exercise equipment", "Fire extinguishers", "Juice can", "Metal laundry tubs", "Metal pails", "Partially full aerosol cans", "Partially full paint cans", "Pots and pans", "Rakes", "Snow blowers", "Soda can", "Drink mix cans", "Hot water tanks", "Juice concentrate cans"]
    
static let woodCategoryData =
    ["Brooms", "Shovels", "Wheelbarrow", "Wine corks", "Sawdust"]
    
static let medicalCategoryData =
    ["Feminine hygiene products", "Medicine", "Syringes"]
    
static let plasticCategoryData =
    ["Bubble wrap", "CD cases", "Chip bags", "Coat hanger", "Coolers (large)", "Coolers (small)", "Curtain rods", "Foam cups", "Foam plates", "Foam takeout containers", "Non-ziploc freezer bags", "Plastic barrels", "Plastic bread bags", "Plastic children's toys", "Plastic drums", "Plastic dry cleaning bags", "Plastic grocery bags", "Plastic jugs", "Plastic laundry tubs", "Plastic lids", "Plastic outer milk bags", "Plastic outer toilet paper bags", "Plastic pails", "Plastic retail bags", "Plastic shower curtains", "Plastic tubs", "Plastic utensils", "Playpens", "Rigid foam packaging", "Snack bar wrappers", "Straws", "Toboggans", "Toothbrush packaging", "Toys", "Tupperware", "Yogurt seal", "Ziploc bags", "Styrofoam peanuts"]
    
static let foodCategoryData =
    ["Baked goods", "Baking ingredients", "Bones", "Bread", "Cooking oil", "Dairy products", "Dead animals", "Eggs", "Fat", "Fish", "Fish bones", "Fruit", "Grains", "Gravy", "Grease (non-motor)", "Meat", "Nuts", "Nutshells", "Rice", "Sauces", "Eggshells", "Teabags", "Vegetables", "Pasta"]
    
static let paperCategoryData =
    ["Baby wipes", "Brown lunch bags", "Cardboard", "Detergent boxes", "Drink boxes", "Dryer disposable sheets", "Egg carton", "Fast-food paper bags", "Flour bags", "Ice cream cartons", "Juice cartons", "Junk mail", "LCBO paper bags", "Magazines", "Milk cartons", "Muffin paper cups", "Napkins", "Newspapers & Inserts", "Non-metallic gift wrap", "Non-metallic paper gift bags", "Paper", "Paper cups", "Paper file folders", "Paper greeting cards", "Paper plates", "Paper roll", "Paper takeout containers", "Paper towels", "Parchment paper", "Pet food bags", "Phone books", "Pizza box", "Popcorn bags", "Potato paper bags", "Sandpaper", "Soft and hardcover books", "Sugar bags", "Tetra-pak containers", "Tissue paper", "Toothpaste boxes", "Waxed cardboard", "Waxed paper cups", "Whipping cream cartons", "Writing paper", "Catalogs", "Cereal box"]
    
static let liquidsCategoryData =
    ["Aerosol", "Ammonia", "Antifreeze", "Brake fluid", "Bug killers", "Coolant", "Diesel", "Gasoline", "Paint", "Pesticides", "Pool chemicals", "Transmission fluid", "Drain openers", "Glues", "Oven cleaners", "Rust remover", "Solvents", "Stain", "Weed killers", "Windshield washer", "Thinners"]
    
static let electronicsCategoryData =
    ["Air conditioners", "Batteries", "Car batteries", "Computers (home)", "Dehumidifiers", "Dryers", "Laptops", "Light bulb", "Printers", "Refrigerators", "Stereo equipment", "Televisions", "Washing machines"]
    
static let glassCategoryData =
    ["Fluorescent Tubes", "Glass container", "Thermometers"]
    
static let yardWasteCategoryData =
    ["Brush", "Garden plants", "Garden trimmings", "Grass clippings", "Leaves", "Tree trimmings"]
    
static let wgwTitles =
    ["What Goes in the Blue Box?", "What Goes in the Green Bin?", "What Goes in a Garbage Bag?", "What Goes in a Yard Waste Bag?", "What Goes to the Hazardous Depot?", "What Goes to Pharmacies?", "What Goes to Libraries?", "What Goes to ReStore?", "What Goes to the Diabetes Association?", "What Goes to Value Village?", "How Do I Resell?", "What Goes to the Landfill?"]
     
    
static let wgwYesDescriptors =
    ["- Corrugated Cardboard\n- Boxboard\n- Newspaper & Magazines\n- Books & Paper\n- Egg & milk cartons\n- Juice boxes\n- Plastic & foam — #1, 2, 4, 5 and 6\n- Plastic Bags — grocery, bread, produce, dry cleaning\n- Outer wrapper for toilet tissue, etc.\n- Clear & Coloured Glass Bottles & Jars\n- Aluminum & Steel Cans, Clean Aluminum Foil & Pie Plates\n- Empty Paint Cans & Aerosol Cans",
     "- Fruits and vegetables​\n- Meat & fish, bones​\n- Cooled grease, fat and cooking oil, sauces​\n- Dairy products​\n- Baked goods​\n- Eggs and eggshells​\n- Nuts and shells​\n- Coffee filters/tea bags​\n- Muffin paper cups​\n- Waxed, parchment, tissue papers​\n- Tissues, napkins, paper towels, cotton balls ​\n- Paper plates and cups​\n- Waxed cardboard, ice cream cartons​\n- Flour/potato/popcorn bags ​\n- House plants and soil​",
     "- Up to three units per week​\n- Containers​\n- Up to 133L​\n- No taller than 95cm​\n- No wider than 60cm​\n- Max 18kg/40 lbs.​\n- Garbage bags​\n- 80-125cm tall​\n- 65-90cm wide​\n- Max  18kg/40 lbs​\n- Bundles​\n- Max 1.2 metres x 60cm, 18kg​\n- Bins – TyeDee Bin – must register with the city​\n- Call 311 for your collection schedule.​",
     "Leaf & Yard Trimmings​\n- Leaves​\n- Grass clippings (if necessary)​\n- Twigs & branches​\n- Garden clippings ​\n- Hedge & brush trimmings​\n- Natural Christmas trees​",
     "- Medicines, syringes​\n- Batteries​\n- Butane lighters ​\n- Transmission fluid, brake fluid, car wax​\n- Diesel, kerosene, gasoline, motor oil, propane tanks ​\n- antifreeze, windshield washer ​\n- Glues and cements​\n- Paints , stains, thinners, strippers​\n- Cleaning fluids​\n- Fire extinguishers​\n- Pool chemicals​\n- Fluorescent tubes​\n- Thermometers​\n- Pesticides, fertilizers​",
     "- All prescription drugs​\n- OTC medications (pills/liquids)​\n- Natural health products in oral dosage form​\n- Anti-fungal creams​\n- Anti-bacterial creams​\n- Inhalers​\n- Patches ​\n- Sharps, syringes and needles (in approved sharps container)​",
     "- Household batteries​\n- AA, AAA, C, D, 9 volt​\n- 9 volt​\n- Lithium button batteries​\n- Lithium batteries for cameras​\n- Etc.​",
     "New and gently used​\n- Windows​\n- Doors ​\n- Paint ​\n- Hardware​\n- Lumber​\n- Tools​\n- Lighting fixtures​\n- Furniture​\n- Appliances​",
     "Collection bins​\n- Clothing​\nCall 1-800-505-5525 for pick up​\n- Gently used clothing and shoes​\n- Towels, linens, draperies​\n- Toys​\n- Jewelry​\n- Knick-knacks​\n- Furniture​\n- Cell phones & PDAs​\n- Small household items​\n- Kitchenware & dishes​\n- Laptops &tablets​\n- Tablets​\nPrinter Cartridge Program​",
     "- Clothing, shoes & accessories ​\n- Small appliances, tools, CD players, speakers, DVD players, lamps, humidifiers​\n- Sports & exercise equipment​\n- Kids’ toys, games, puzzles, stuffed animals​\n- Kitchenware & dishes​\n- Jewelry & Knick-knacks​\n- Books,  magazines, records, CDs, DVDs, computer software​\n- Furniture​\n- Linens and textiles​",
     "- Ebay.ca​\n- Kijiji.ca​\n- Usedsudbury.com​\n- Autotrader.ca​\n- Yard sale​\n- Community sales​",
     "Non hazardous solid waste.  Many items will be salvaged or diverted​\n- Please segregate:​\n- Recyclables​\n- Scrap Metal​\n- Large appliances​\n- Reusable cloth items​\n- Leaf & yard waste​\n- Sod ​\n- Electronic waste​\n- Clean and non-treated wood waste ​\n- Other wood waste​\n- Concrete, brick and block​\n- Tires​"]
    
static let wgwNoDescriptors =
    ["- Waxed cardboard\n- Cereal/cracker box liners\n- Plastic food wrap,  ziploc bags, straws\n- Paper cups\n- Wood\n- Potato, flour, sugar, chip & pet food bags\n- Foil gift wrap\n- Styrofoam peanuts\n- Bubble wrap\n- ‘Crinkly’ plastic packaging\n- Motor oil containers\n- Broken glass\n- Windows/mirrors\n- Light bulbs\n- Pottery, dishes\n- Coat hangers\n- Pots and pans",
     "- Diapers, baby wipes​\n- Feminine hygiene products​\n- Pet waste and litter​\n- Plastic, metal, rubber, cork, wood​\n- Cigarette butts​\n- Vacuum bags​\n- Yard waste​\n- Sawdust, ashes​\n- Hazardous waste​\n- Hair (pet or human)​\n- Dead animals ​\n- Makeup remover pads, Q-tips, dental floss​\n- Sandpaper​\n- Dryer lint, dryer sheets​\n- Candles​\n- Chip bags​",
     "Wherever possible, reduce, reuse, recycle to reduce garbage!",
     "- Sod​\n- Root balls​\n- Stumps from below ground level​\n- Gravel​\n- Soil​\n- Grass clippings (it is preferred to leave them decompose in your yard)​",
     "Commercial, industrial, institutional, pathological, PCB, explosive, radioactive, unknown waste​",
     "- Shampoos​\n- Mouthwash​\n- Antiperspirants​\n- Antiseptics​\n- Pharmaceuticals from farms/hospitals​\n- Pharmacy waste produced by the pharmacy​\n- Expired samples from doctor’s office​",
     "Anything else",
     "- Toilets​\n- Mattresses​\n- Pull out sofas​\n- Hutches​",
     "- Large appliances\n- Opened containers of paint, etc.​\n- Oil, gas or water heaters​\n- Sheets of glass​\n- Building supplies​\n- Sofa beds​\n- Cribs, walkers, playpens, car seats​\n- Swing sets, ping pong tables​\n- Carpet​\n- Newspapers​\n- Magazines​\n- Pet cages​\n- Gas barbecues​\n- Food​\n- Bed springs​\n- Furniture which is badly soiled, torn or needs repairs​",
     "- Automobile parts ​\n- Beds & bedding parts​\n- Construction materials ​\n- Damaged furniture ​\n- Flammable products ​\n- Hazardous materials ​\n- Infant products - Car seats, cribs , etc.​\n- Large appliances​\n- Boats​\n- TV & computer monitors -  except flat screens.​\n- Weapons and explosives​\n- Swing sets, food",
     "- By leaving things out on the curb for the garbage truck​\n- By mailing them to the McDonalds head office​\n- Meet strangers in dark alleys​",
     "Dangerous, hazardous or toxic waste\n- Manure\n- Liquid waste\nCall ahead regarding​:\n- dead animals ​\n- soil or granular materials ​\n- asbestos"]

static let originalTableData =
    ["Aerosol", "Air conditioners", "Aluminum foil", "Aluminum tray", "Ammonia", "Antifreeze", "Ashes", "Baby wipes", "Baked goods", "Baking ingredients", "Barbecues", "Bathtubs", "Batteries", "Beer can", "Benches", "Bicycles", "Blinds", "Bones", "Bookcases", "Brake fluid", "Bread", "Brooms", "Brown lunch bags", "Brush", "Bubble wrap", "Bug killers", "Butane cylinders", "Butane lighters", "Candles", "Car batteries", "Cardboard", "Car wax", "Catalogs", "CD cases", "Cements", "Ceramic", "Cereal box", "Chip bags", "Cigarette butts", "Coat hanger", "Coffee filters", "Coffee grounds", "Coffee tables", "Computers (home)", "Cooking oil", "Coolant", "Coolers (large)", "Coolers (small)", "Cotton balls", "Curtain rods", "Dairy products", "Dehumidifiers", "Dental floss", "Detergent boxes", "Diaper liners", "Diapers", "Diesel", "Drain openers", "Drink boxes", "Drink mix cans", "Dryer disposable sheets", "Dryer lint", "Dryers", "Dust broom sheets", "Egg carton", "Eggs", "Eggshells", "Empty aerosol cans", "Empty paint cans", "Empty stain cans", "Exercise equipment", "Fast-food paper bags", "Fat", "Feminine hygiene products", "Fertilizers", "Fire extinguishers", "Fireplaces", "Fish", "Fish bones", "Flour bags", "Fluorescent Tubes", "Foam cups", "Foam plates", "Foam takeout containers", "Folding chairs", "Footboards", "Freezers", "Freezer waxed bags", "Fruit", "Furnaces", "Futons", "Garden plants", "Garden trimmings", "Gasoline", "Glass container", "Glues", "Grains", "Grass clippings", "Gravy", "Grease (non-motor)", "Hair", "Hot water tanks", "Ice cream cartons", "Ironing boards", "Juice can", "Juice cartons", "Juice concentrate cans", "Junk mail", "Laptops", "Lawnmowers", "LCBO paper bags", "Leaves", "Light bulbs", "Luggage bags", "Magazines", "Makeup remover pads", "Mattresses", "Meat", "Medicine", "Metal laundry tubs", "Metal pails", "Microwaves", "Milk cartons", "Motor oil containers", "Muffin paper cups", "Napkins", "Newspapers & Inserts", "Non-metallic gift wrap", "Non-metallic paper gift bags", "Non-ziploc freezer bags", "Nuts", "Nutshells", "Oven cleaners", "Ovens", "Paint", "Paint strippers", "Paper", "Paper cups", "Paper file folders", "Paper greeting cards", "Paper plates", "Paper roll", "Paper takeout containers", "Paper towels", "Parchment paper", "Partially full aerosol cans", "Partially full paint cans", "Pasta", "Patio chairs", "Patio umbrellas", "Pesticides", "Pet food bags", "Pet litter", "Pet waste", "Phone books", "Photocopiers", "Pitchforks", "Pizza box", "Plastic barrels", "Plastic bread bags", "Plastic children's toys", "Plastic drums", "Plastic dry cleaning bags", "Plastic grocery bags", "Plastic jugs", "Plastic laundry tubs", "Plastic lids", "Plastic outer milk bags", "Plastic outer toilet paper bags", "Plastic pails", "Plastic retail bags", "Plastic shower curtains", "Plastic tubs", "Plastic utensils", "Playpens", "Pool chemicals", "Popcorn bags", "Potato paper bags", "Pots and pans", "Pottery", "Preservers", "Printers", "Q-tips", "Rakes", "Range hoods", "Recliners", "Refrigerators", "Rice", "Rigid foam packaging", "Rust remover", "Sandpaper", "Sauces", "Sawdust", "Shells", "Shelving units", "Shovels", "Snack bar wrappers", "Snow blowers", "Snowboards", "Soda can", "Sofa beds", "Sofas", "Soft and hardcover books", "Solvents", "Stain", "Stereo equipment", "Stoves", "Straws", "Strollers", "Styrofoam peanuts", "Sugar bags", "Swing sets", "Syringes", "Tables", "Teabags", "Televisions", "Tetra-pak containers", "Thermometers", "Thinners", "Tissue paper", "Toboggans", "Toothbrush packaging", "Toothpaste boxes", "Toys", "Transmission fluid", "Tree trimmings", "Trunks", "Tuna can", "Tupperware", "Turpentine", "Typewriters", "Vacuum bags", "Vegetables", "Washing machines", "Water purifiers", "Waxed cardboard", "Waxed paper cups", "Weed killers", "Wheelbarrow", "Wheel chairs", "Whipping cream cartons", "Windshield washer", "Wine corks", "Workout benches", "Writing paper", "Yogurt seal", "Ziploc bags"]
}
