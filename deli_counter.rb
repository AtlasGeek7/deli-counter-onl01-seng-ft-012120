def take_a_number(katzDeliLine,newPerson)
  katzDeliLine.push(newPerson)
  len = katzDeliLine.length
  puts "Welcome, #{katzDeliLine.last}. You are number #{len} in line."
end

def now_serving(katzDeliLine)
  len = katzDeliLine.length
  if (len > 0) 
    firstPersonInLine = katzDeliLine[0]
    katzDeliLine.shift()
    puts "Currently serving #{firstPersonInLine}."
  else
    puts "There is nobody waiting to be served!"
  end
end

def line(katzDeliLine)
  len = katzDeliLine.length-1
  if (len > 0)
    str = "The line is currently: "
    for i in 0..len do
  #for (let i=0; i<len-1; i++)
    str += "#{i+1}. #{katzDeliLine[i]}"
  end
  return str + "#{len}. #{katzDeliLine[len-1]}"
  else
    return "The line is currently empty."
  end
end