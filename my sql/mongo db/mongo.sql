// ================================
// MONGOSH - COMPLETE CRUD EXAMPLE
// ================================

// 1. Create / Switch Database
use companyDB


// 2. Create Collection
db.createCollection("employees")


// 3. Insert One Document
db.employees.insertOne({
    eid: 1,
    fname: "Reddy",
    lname: "M",
    city: "Bangalore",
    esal: 50000,
    age: 22
})


// 4. Insert Multiple Documents
db.employees.insertMany([
    {
        eid: 2,
        fname: "Rahul",
        lname: "Kumar",
        city: "Hyderabad",
        esal: 45000,
        age: 24
    },
    {
        eid: 3,
        fname: "Suresh",
        lname: "Reddy",
        city: "Chennai",
        esal: 60000,
        age: 26
    },
    {
        eid: 4,
        fname: "Anil",
        lname: "Kumar",
        city: "Bangalore",
        esal: 55000,
        age: 25
    },
    {
        eid: 5,
        fname: "Priya",
        lname: "Sharma",
        city: "Mumbai",
        esal: 70000,
        age: 27
    }
])


// ================================
// 5. READ / FIND
// ================================

// Display all employees
db.employees.find()

// Display in readable format
db.employees.find().pretty()

// Find one employee
db.employees.findOne({ eid: 1 })

// Find employees from Bangalore
db.employees.find({ city: "Bangalore" })

// Find employees with salary greater than 50000
db.employees.find({ esal: { $gt: 50000 } })

// Find employees with salary less than 60000
db.employees.find({ esal: { $lt: 60000 } })

// Find salary greater than or equal to 50000
db.employees.find({ esal: { $gte: 50000 } })

// Find salary less than or equal to 50000
db.employees.find({ esal: { $lte: 50000 } })

// Find employees age greater than 24
db.employees.find({ age: { $gt: 24 } })


// ================================
// 6. AND CONDITION
// ================================

db.employees.find({
    city: "Bangalore",
    esal: { $gt: 50000 }
})


// ================================
// 7. OR CONDITION
// ================================

db.employees.find({
    $or: [
        { city: "Bangalore" },
        { city: "Hyderabad" }
    ]
})


// ================================
// 8. IN OPERATOR
// ================================

db.employees.find({
    city: { $in: ["Bangalore", "Chennai"] }
})


// ================================
// 9. NOT EQUAL
// ================================

db.employees.find({
    city: { $ne: "Bangalore" }
})


// ================================
// 10. UPDATE ONE
// ================================

db.employees.updateOne(
    { eid: 1 },
    { $set: { esal: 60000 } }
)


// ================================
// 11. UPDATE MANY
// ================================

db.employees.updateMany(
    { city: "Bangalore" },
    { $inc: { esal: 5000 } }
)


// ================================
// 12. ADD NEW FIELD
// ================================

db.employees.updateOne(
    { eid: 1 },
    { $set: { department: "IT" } }
)


// ================================
// 13. REMOVE FIELD
// ================================

db.employees.updateOne(
    { eid: 1 },
    { $unset: { department: "" } }
)


// ================================
// 14. DELETE ONE
// ================================

db.employees.deleteOne({
    eid: 5
})


// ================================
// 15. DELETE MANY
// ================================

db.employees.deleteMany({
    age: { $gt: 25 }
})


// ================================
// 16. SORT
// ================================

// Salary ascending
db.employees.find().sort({ esal: 1 })

// Salary descending
db.employees.find().sort({ esal: -1 })


// ================================
// 17. LIMIT
// ================================

db.employees.find().limit(3)


// ================================
// 18. SKIP
// ================================

db.employees.find().skip(2)


// ================================
// 19. COUNT
// ================================

db.employees.countDocuments()


// Count Bangalore employees
db.employees.countDocuments({
    city: "Bangalore"
})


// ================================
// 20. DISTINCT
// ================================

db.employees.distinct("city")


// ================================
// 21. PROJECTION
// ================================

// Display only first name and salary
db.employees.find(
    {},
    { fname: 1, esal: 1, _id: 0 }
)


// ================================
// 22. AGGREGATION
// ================================

// Average salary
db.employees.aggregate([
    {
        $group: {
            _id: null,
            averageSalary: { $avg: "$esal" }
        }
    }
])


// Maximum salary
db.employees.aggregate([
    {
        $group: {
            _id: null,
            maxSalary: { $max: "$esal" }
        }
    }
])


// Minimum salary
db.employees.aggregate([
    {
        $group: {
            _id: null,
            minSalary: { $min: "$esal" }
        }
    }
])


// ================================
// 23. GROUP BY CITY
// ================================

db.employees.aggregate([
    {
        $group: {
            _id: "$city",
            totalEmployees: { $sum: 1 }
        }
    }
])


// ================================
// 24. GROUP BY CITY + AVG SALARY
// ================================

db.employees.aggregate([
    {
        $group: {
            _id: "$city",
            averageSalary: { $avg: "$esal" }
        }
    }
])


// ================================
// 25. INDEX
// ================================

db.employees.createIndex({
    eid: 1
})


// Show indexes
db.employees.getIndexes()


// ================================
// 26. SHOW DATABASES
// ================================

show dbs


// ================================
// 27. SHOW COLLECTIONS
// ================================

show collections


// ================================
// 28. DROP COLLECTION
// ================================

// db.employees.drop()


// ================================
// 29. DROP DATABASE
// ================================

// db.dropDatabase()