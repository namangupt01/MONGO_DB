db.createCollection("naman");
use naman;
db.dropDatabase();
show dbs;
db.createCollection("students");
use students;
db.students.insertOne({name:"Naman",age:22,cgpa:3.2})
db.students.insertMany([{name:"Chhaya Pal",age:23,cgpa:4.3},{name:"Prerna",age:23,cgpa:3.2}])
db.students.find();
db.students.insertOne({
    name:"Randy Orton",
    age:46,
    Date_of_registration: new Date(),
    Address:{StreetNo:45,HomeTown:"AndeasValley",PIN_CODE:202321},
    Mobile:null,
    gender:"M",
    medals:["RAW","ROYALRUMBLE"]
})
db.students.find()
db.students.find().sort({name:-1})
db.students.find().limit(1);
db.students.find().sort({age:-1}).limit(1);
db.students.find({},{name:true})
db.students.find({},{_id:false,name:true})
db.students.updateOne({name:"Naman"},{$set:{fullTime:true}})
db.students.find({name:"Naman"})
db.students.updateOne({_id: ObjectId("669a89cfa42b439d8d4ec05e")},{$set:{fullTime:false}})
db.students.find({name:"Naman"})
db.students.updateMany({fullTime:{$exists:false}},{$set:{fullTime:true}})
db.students.find()
db.students.deleteOne({name:"Chhaya Pal"})
db.students.find()
db.students.find({name:{$ne:"Naman"}})
db.students.find({age:{$lt:25}})
db.students.find({age:{$gte:3,$lte:25}})
db.students.find({name:{$in:["Naman","Chhaya Pal"]}})
show collections
db.students.find({$and:[{fullTime:true},{ age:{$lte:24}}]})
db.students.find({$or:[{fullTime:true},{ age:{$lte:24}}]})
db.students.find({$nor:[{fullTime:true},{ age:{$lte:24}}]})
