// Вывести строку с целым количеством часов минут и секунд

let seconds = 3661
let hours = seconds/3600
let minutes = (seconds%3600)/60
let remainingSeconds = seconds%60

print("\(seconds) секунд - это \(hours) часов, \(minutes) минут и \(remainingSeconds) оставшихся секунд")
