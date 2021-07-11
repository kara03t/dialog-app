names = ["tomoki karatani", "nitta sakiko", "ootomo keiko", "ishikawa hitomi", "annie belyakova", "inoue waka", "shimizu mai", "kobayashi mitsuki", "inoue ayumi", "muta natsumi","itou fuuka","tomaru sayaka","sawaguchi aika","mook sudarat","jihyung hwang","karam kwong","ueto aya","jennifer lail","yamazaki noriko","furukawa rena","honda miyu","honda marin","honda sara","iori io","oonuma yuka"]

names.each_with_index{|name,i|
  uid = sprintf "user%03d", i
  User.create(username: uid, fullname: name,
  password: '123456', role: ((i===0)? 'teacher': 'student'))
  Visit.create(user_id: 1, visitee: i)
}
