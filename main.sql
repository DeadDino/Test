-- Задача 1
SELECT pilot_id, name, age, rank, education_level
FROM Пилоты
INNER JOIN Рейсы
    ON Рейсы.second_pilot_id = Пилоты.pilot_id
WHERE count(Рейсы.destination) = 3 AND Рейсы.destination = 'Шереметьево'

-- Задача 2
SELECT pilot_id, name, age, rank, education_level
FROM Пилоты
INNER JOIN Рейсы
    ON Рейсы.second_pilot_id = Пилоты.pilot_id OR Рейсы.first_pilot_id = Пилоты.pilot_id
INNER JOIN Самолеты
    ON Пилоты.plane_id = Самолеты.plane_id 
WHERE Самолеты.cargo_flg = 0 AND Рейсы.quantity>30 AND age>45;

-- Задача 3
SELECT pilot_id, name, age, rank, education_level
FROM Пилоты
INNER JOIN Рейсы
    ON Рейсы.first_pilot_id = Пилоты.pilot_id
INNER JOIN Самолеты
    ON Пилоты.plane_id = Самолеты.plane_id 
GROUP BY name 
WHERE Самолеты.cargo_flg = 0 AND YEAR(Рейсы.flight_dt)=2022
ORDER BY COUNT(Рейсы.pilot_id)


    
