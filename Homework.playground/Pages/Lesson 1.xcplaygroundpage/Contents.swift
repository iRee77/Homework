// Вывести строку с целым количеством часов минут и секунд

let seconds = 654321
let hours:Int = (seconds/3600)
let minutes:Int = ((seconds%3600)/60)
let remainingSeconds:Int = (seconds%60)

print("\(seconds) секунд - это \(hours) часов, \(minutes) минут и \(remainingSeconds) оставшихся секунд")
