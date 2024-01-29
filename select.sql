--1 table facilities
SELECT * from facilities;
SELECT * from facilities ORDER BY facilities_type ASC;
SELECT * from facilities ORDER BY facilities_type DESC;
SELECT facilities_type from facilities;
SELECT id, facilities_type from facilities;
SELECT SUM(id) as suma from facilities;
SELECT MIN(id) as minim from facilities;
SELECT MAX(id) as maxim from facilities;
SELECT AVG(id) as media from facilities;
SELECT id from facilities limit 27;
SELECT * from facilities where facilities_type like 'Acrobatic%';
SELECT facilities_type from facilities where id = 47 or id < 40;

--2 table gym
SELECT * from gym;
SELECT * from gym where address like '% Timișoara';
SELECT * from gym where year = 2019;
SELECT * from gym where website like '%.com';
SELECT MIN(year) as oldest from gym;
SELECT MAX(year) as newest from gym;
SELECT * from gym where name like 'G%';
SELECT name, year from gym where year > 2005;
SELECT contact_number, address from gym where address like '% Cluj-Napoca';
SELECT name, website, address from gym;

--3 table trainer
SELECT * from trainer;
SELECT * from trainer where age > 30;
SELECT * from trainer where experience_years = 5 or experience_years > 5;
SELECT MIN(age) as youngest from trainer;
SELECT MAX(age) as oldest from trainer;
SELECT name, contact_number, age from trainer where age < 30;
SELECT name, email, experience_years from trainer ORDER BY experience_years desc;
SELECT * from trainer where email like '%yahoo.com';
SELECT name, email, age from trainer where email like '%gmail.com';
SELECT * from trainer where name like 'F%';

--4 table members
SELECT * from members;
SELECT * from members where age < 25;
SELECT * from members ORDER BY name ASC;
SELECT * from members ORDER BY join_date DESC;
SELECT name, email, age from members where name like '%Radu%';
SELECT name, email from members where email like '%e-uvt.ro';
SELECT MIN(age) as youngest from members;
SELECT MAX(age) as oldest from members;
SELECT name, contact_number, age from members where age > 30 ;
SELECT * from members where join_date > '01.01.2020';
SELECT name, email, join_date from members where join_date < '01.01.2015' ORDER BY join_date DESC;

--5 table classes
SELECT * from classes;
SELECT MIN(capacity) as smallest from classes;
SELECT MAX(capacity) as biggest from classes;
SELECT * from classes where schedule like '%Monday%';
SELECT * from classes where schedule like '%Tuesday%';
SELECT * from classes where schedule like '%Wednesday%';
SELECT * from classes where schedule like '%Thursday%';
SELECT * from classes where schedule like '%Friday%';
SELECT * from classes where schedule like '%Saturday%';
SELECT * from classes where schedule like '%Sunday%';
SELECT name, capacity from classes where name like '%TRX%' and capacity < 50;
SELECT name, trainer_id, capacity from classes where trainer_id = 1 or trainer_id > 1 and trainer_id < 30;
SELECT name, trainer_id, capacity from classes where trainer_id = 1 or trainer_id > 1 and trainer_id < 30 and capacity > 20;

--6 table members_goals
SELECT * from members_goals;
SELECT * from members_goals ORDER BY goal_name ASC;
SELECT * from members_goals ORDER BY member_id DESC;
SELECT goal_name from members_goals where goal_name like '%impr%' or goal_name like 'Impr%';
SELECT id, member_id from members_goals;
SELECT goal_name from members_goals where id < 25;
SELECT goal_name from members_goals where goal_name like '%body%' or goal_name like 'Body%';
SELECT * from members_goals where goal_name like '%fitness%';
SELECT COUNT(*) as total_records from members_goals;
SELECT goal_name from members_goals where member_id between 10 and 20;

-- 7 table workout_plans
SELECT * from workout_plans;
SELECT * from workout_plans where name LIKE '%Strength%';
SELECT * from workout_plans ORDER BY name ASC;
SELECT * from workout_plans ORDER BY member_id DESC;
SELECT * from workout_plans where member_id > 25;
SELECT * from workout_plans where name like 'Cardio%';
SELECT member_id, workout_plans from workout_plans;
SELECT * from workout_plans where name not like 'Yoga%';
SELECT * from workout_plans where name like 'Pilates Perfection' or name like 'CrossFit Challenge';
SELECT * from workout_plans where member_id = 2 or member_id between 2 and 25;
SELECT * from workout_plans where name like 'Dance%' AND member_id < 30;

-- 8 table subscriptions
SELECT * from subscriptions;
SELECT * from subscriptions where active = 'Y';
SELECT * from subscriptions where amount_ron < 500;
SELECT member_id, issue_date, end_date, active from subscriptions where active = 'Y';
SELECT member_id, gym_id, active from subscriptions where active = 'N';
SELECT * from subscriptions where amount_ron = 1000;
SELECT * from subscriptions where issue_date < '15.06.2023';
SELECT * from subscriptions where issue_date between '01.01.2023' and '31.12.2023';
SELECT * from subscriptions where amount_ron = 189 and active = 'Y';
SELECT * from subscriptions where issue_date > '01.01.2023' and end_date < '01.01.2024';
SELECT MIN(issue_date) as oldest_subscription from subscriptions;
SELECT MAX(issue_date) as newest_subscription from subscriptions;
SELECT * from subscriptions ORDER BY end_date ASC;
SELECT * from subscriptions ORDER BY issue_date DESC;

-- 9 table equipment
SELECT * from equipment;
SELECT * from equipment where condition = 'Excellent' ORDER BY quantity DESC;
SELECT name, quantity from equipment where name like 'Pilates%' OR name like '%Roller%';
SELECT * from equipment where quantity between 5 and 15 and condition = 'Good';
SELECT name, condition from equipment where condition = 'Fair' ORDER BY name ASC;
SELECT name, quantity from equipment where quantity < 10 and condition = 'Excellent';
SELECT * from equipment where name like '%Boxing%' or name like '%Speed Bag%';
SELECT name, quantity, condition from equipment where quantity > 10 and condition = 'Fair' ORDER BY quantity DESC;
SELECT name, condition from equipment where name like 'Foam%' or name like 'Balance%';
SELECT * from equipment where quantity = 10 OR quantity = 15;
SELECT name, condition from equipment where name like 'Mini%' or name like 'Hula%';
SELECT * from equipment where condition = 'Good' and quantity < 10;
SELECT * from equipment ORDER BY quantity ASC;
SELECT * from equipment ORDER BY quantity DESC;

-- 10 table feedback
SELECT * from feedback;
select * from feedback where rating >= 8 ORDER BY rating desc;
select member_id, rating from feedback where classes_id <= 20 and feedback_date >= '01.01.2020';
SELECT * from feedback ORDER BY rating ASC;
SELECT * from feedback ORDER BY rating DESC;
SELECT * from feedback ORDER BY feedback_date ASC;
SELECT * from feedback ORDER BY feedback_date DESC;
SELECT SUM(rating) as feedback_sum from feedback;
SELECT MIN(rating) as feedback_min from feedback;
SELECT MAX(rating) as feedback_max from feedback;
SELECT AVG(rating) as feedback_mean from feedback;
SELECT rating, feedback_date, classes_id, trainer_id from feedback where feedback_date <= '01.01.2015';