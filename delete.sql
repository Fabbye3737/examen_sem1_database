--1 delete table facilities
DELETE from facilities where facilities_type = 'Gravity Resistance Training System';
DELETE from facilities where facilities_type = 'Mind-Body Meditation Pods';
DELETE from facilities where facilities_type = 'Bike-Powered Charging Stations';
DELETE from facilities where facilities_type = 'AI-Powered Adaptive Training Programs';
DELETE from facilities where facilities_type = 'Ninja Warrior Obstacle Course';
DELETE from facilities where facilities_type like '%y';
DELETE from facilities where facilities_type like 'a%';
DELETE from facilities where id < 2;
DELETE from facilities where facilities_type like 'C%';
DELETE from facilities where facilities_type like '%Fitness%';

--2 delete table facilities
DELETE from gym where name = 'Seaside Gym' and year = 2029;
DELETE from gym where address = 'Bulevardul 1 Decembrie 1918 56, Timisoara';
DELETE from gym where year = 1995;
DELETE from gym where website = 'http://www.hardcorefitness-gym.ro';
DELETE from gym where contact_number = '761123450';
DELETE from gym where name = 'DumsilGYM' and address = 'Bulevardul Decebal 78, Galați';
DELETE from gym where year = 2012 and website = 'http://www.sasgym.com';
DELETE from gym where contact_number = '791234567' and name = 'Piti’sCenter';
DELETE from gym where year = 2000 and address = 'Strada Pictor Nicolae Grigorescu 4, Mangalia';
DELETE from gym where website = 'http://www.flexgym-gym.com' and year = 2030;
DELETE from gym where contact_number = '741345678' and name = 'SmartFitStudio';
DELETE from gym where address = 'Bulevardul Ștefan cel Mare și Sfânt 14, Odorheiu Secuiesc' and year = 2011;

--3 delete table trainers
DELETE from trainer where name = 'Anda Muntianu';
DELETE from trainer where age = 39;
DELETE from trainer where experience_years = 50;
DELETE from trainer where email = 'gabriel.marin@hotmail.ro';
DELETE from trainer where contact_number = '766789013';
DELETE from trainer where name = 'Adrian Diaconu' and age = 41;
DELETE from trainer where experience_years = 7 and email = 'razvan.popa@yahoo.com';
DELETE from trainer where contact_number = '785012341' and name = 'Alexandru Pavel';
DELETE from trainer where age = 22 and email = 'alex.radu@gmail.com';
DELETE from trainer where experience_years = 10 and contact_number = '745678901';
DELETE from trainer where name = 'Mirela Coman' and age = 31;
DELETE from trainer where experience_years = 6 and email = 'monica.radulescu@yahoo.com';

--4 delete table memebers
DELETE from members where name = 'Cazacu Ioana';
DELETE from members where age = 39;
DELETE from members where email = 'dumitru.ionel@yahoo.ro';
DELETE from members where contact_number = '770678900';
DELETE from members where join_date = '02.12.2012';
DELETE from members where name = 'Manciu Elena' and age = 19;
DELETE from members where age = 32 and email = 'tudor.irina@yahoo.ro';
DELETE from members where join_date = '14.11.2014' and contact_number = '781789011';
DELETE from members where name = 'Fodor Andrei' and age = 32;
DELETE from members where join_date = '03.05.2013' and email = 'ionescu.stefan@gmail.ro';
DELETE from members where name = 'Kovacs Adrian' and age = 42;
DELETE from members where age = 31 and contact_number = '781789022';

--5 delete table clases
DELETE from classes where name = 'Total Body Burn';
DELETE from classes where schedule = 'Every Thursday from 13:00 to 14:30';
DELETE from classes where capacity = '26';
DELETE from classes where trainer_id = '49';
DELETE from classes where name = 'Meditation Session' and schedule = 'Every Thursday from 10:00 to 11:30';
DELETE from classes where capacity = '20' and trainer_id = '12';
DELETE from classes where trainer_id = '13' and name = 'Functional Fitness';
DELETE from classes where schedule = 'Every Friday from 11:30 to 13:00' and capacity = '40';
DELETE from classes where name = 'Zumba Party' and schedule = 'Every Friday from 13:00 to 15:00';
DELETE from classes where capacity = '40' and trainer_id = '6';
DELETE from classes where schedule = 'Every Saturday from 14:30 to 16:00' and trainer_id = '14';
DELETE from classes where name = 'Kickboxing Fusion' and capacity = '25';

--6 delete table members_goals
DELETE from members_goals where goal_name = 'Improving digestion';
DELETE from members_goals where member_id = '13';
DELETE from members_goals where goal_name = 'Developing a workout routine';
DELETE from members_goals where member_id = '4';
DELETE from members_goals where goal_name = 'Enhancing immune function';
DELETE from members_goals where member_id = '39';
DELETE from members_goals where member_id = '26' and goal_name = 'Joint health and mobility';
DELETE from members_goals where member_id = '14' or goal_name = 'Social interaction';
DELETE from members_goals where member_id = '36' or goal_name = 'Postpartum recovery';
DELETE from members_goals where member_id = '40' and goal_name = 'Mindful eating habits';
DELETE from members_goals where member_id = '18' and goal_name = 'Healthy lifestyle adoption';
DELETE from members_goals where member_id > '42';

--7 delete table workout_plans
DELETE from workout_plans where member_id = '19';
DELETE from workout_plans where name like 'Y%';
DELETE from workout_plans where name like '%ss';
DELETE from workout_plans where member_id ='30';
DELETE from workout_plans where member_id ='36';
DELETE from workout_plans where name ='Sprint Training';
DELETE from workout_plans where name ='Cardio Blast';
DELETE from workout_plans where member_id between 5 and 10;
DELETE from workout_plans where name = 'Kickboxing Intensity';
DELETE from workout_plans where member_id='23' and name = 'Stair Climbing Challenge';

--8 delete table subscriptions
DELETE from subscriptions where gym_id = '19';
DELETE from subscriptions where member_id = '1';
DELETE from subscriptions where issue_date = '18.09.2023';
DELETE from subscriptions where end_date='09.05.2023';
DELETE from subscriptions where active='Y' and member_id = '2';
DELETE from subscriptions where amount_ron='700' and issue_date < '18.09.2023';
DELETE from subscriptions where gym_id='20' or member_id='5';
DELETE from subscriptions where issue_date='01.02.2023' and end_date='05.12.2023';
DELETE from subscriptions where active='N' and gym_id='39';
DELETE from subscriptions where amount_ron between 50 and 400;

--9 delete table equipment
DELETE from equipment where quantity = '25' and name = 'Jump Ropes' and condition='Fair';
DELETE from equipment where name='Pilates Ring' and quantity = '4' and condition='Excellent';
DELETE from equipment where condition='Excellent' and quantity = '8' and name='TRX Suspension System';
DELETE from equipment where name='Sled Push' or quantity ='6';
DELETE from equipment where name='Gymnastic Rings' and condition='Good';
DELETE from equipment where quantity ='10' and condition ='Excellent';
DELETE from equipment where condition= 'Excellent' or quantity='5';
DELETE from equipment where name='Medicine Balls' and quantity='12' and condition='Fair';
DELETE from equipment where name= 'Rowing Machine';
DELETE from equipment where quantity = '3';
DELETE from equipment where condition = 'Good';

--10 delete table feedback
DELETE from feedback where trainer_id = '22' and rating = '9' and feedback_date = '11.02.2015';
DELETE from feedback where classes_id = '40' or feedback_date = '28.11.2019';
DELETE from feedback where member_id = '37' and rating = '9' and feedback_date = '18.02.2017';
DELETE from feedback where rating = '8' and feedback_date = '24.05.2019' and trainer_id = '23';
DELETE from feedback where member_id= '16' and classes_id = '16' and rating = '10' and feedback_date = '21.01.2020';
DELETE from feedback where feedback_date = '05.09.2013' and member_id = '24' and rating='7';
DELETE from feedback where classes_id = '19';
DELETE from feedback where feedback_date = '15.08.2015';
DELETE from feedback where rating = '8';
DELETE from feedback where member_id = '32';
DELETE from feedback where classes_id = '41';
DELETE from feedback where rating = '9';