require 'pg'

connection = PG::connect(dbname: 'goya')
connection.internal_encoding = "UTF-8"
begin

  result = connection.exec("select length,weight,quality,give_for from crops where not give_for='自家消費';")

  result.each do |record|

    puts "自家消費でないゴーヤの情報: #{record["length"]}  #{record["weight"]} #{record["quality"]} #{record["give_for"]}"


  result1 = connection.exec("select length,weight,quality,give_for from crops where quality=false;")

  result1.each do |record|

    puts "自家消費でないゴーヤの情報: #{record["length"]}  #{record["weight"]} #{record["quality"]} #{record["give_for"]}"
end
ensure
  connection.finish
end
