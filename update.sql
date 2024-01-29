--1 update table facilities
UPDATE facilities SET facilities_type = 'Altitude Training Room' where facilities_type = 'Hypoxic Training Room (Simulated Altitude)';
UPDATE facilities SET facilities_type = 'Virtual Reality Fitness' where facilities_type = 'Virtual Reality Fitness Stations';
UPDATE facilities SET facilities_type = 'Aerial Silks Room' where facilities_type = 'Aerial Silks Studio';
UPDATE facilities SET facilities_type = 'Sensory Deprivation Tanks' where facilities_type = 'Floating Sensory Deprivation Tanks';
UPDATE facilities SET facilities_type = 'Aqua Cycling Pool Space' where facilities_type = 'Aqua Cycling Pool';
UPDATE facilities SET facilities_type = 'Biomechanics Laboratory' where facilities_type = 'Biomechanics Lab';
UPDATE facilities SET facilities_type = 'Gravity Resistance System' where facilities_type = 'Gravity Resistance Training System';
UPDATE facilities SET facilities_type = 'Indoor Climbing Wall' where facilities_type = 'Indoor Rock Climbing Wall';
UPDATE facilities SET facilities_type = 'Infrared Sauna Pods Rooms' where facilities_type = 'Infrared Sauna Pods';
UPDATE facilities SET facilities_type = 'Climbing Rope Stations for climbers' where facilities_type = 'Climbing Rope Stations';
UPDATE facilities SET facilities_type = 'Newest Gyrotonic Expansion System' where facilities_type = 'Gyrotonic Expansion System';
UPDATE facilities SET facilities_type = 'Biosensing Wearable Technology for athlets' where facilities_type = 'Biosensing Wearable Technology';

--2 update table gym
UPDATE gym SET address = 'Strada Libertății 123, Timișoara', year = 2020 where name = 'BodyShapeGym';
UPDATE gym SET name = 'Eagle Fitness', website = 'http://www.eaglefitness.com' where name = 'EnergymFitnessClub';
UPDATE gym SET year = 2015, contact_number = '751456700' where name = 'FitnessModelGym';
UPDATE gym SET name = 'Mountain Fitness' where address = 'Bulevardul Corneliu Coposu 5, Sighetu Marmației';
UPDATE gym SET name = 'Newest gyms' where year > 2015;
UPDATE gym SET name = 'Oldest Gyms' where year < 2015;
UPDATE gym SET address = 'Bulevardul Galaxiei 78, Constanta' where name = 'Oldest Gyms';
UPDATE gym SET name = 'Seaside Gym' where id = 5;
UPDATE gym SET website = 'http://www.SportLaMalulMarii.ro' where year between 2015 and 2019;
UPDATE gym SET name = 'Cutitarii din Craiova', address = 'Aleea Rosie 12, Craiova', year = 2024, website = 'http://www.cutit-pe-paine.com', contact_number = '781989100' where name = 'Seaside Gym' and contact_number > 770000000;

--3 update table trainer
UPDATE trainer SET email = 'fabian.besca@blacklight.com', contact_number = '771416636' where name = 'Fabian Besca';
UPDATE trainer SET age = 25, contact_number = '727619700' where name = 'Victor Toma';
UPDATE trainer SET name = 'Elena Grigorescu', experience_years = 8 where email = 'elena.grigorescu@outlook.com';
UPDATE trainer SET experience_years = 10 where age < 30;
UPDATE trainer SET age = 32, experience_years = 1 where email = 'ionel.popovici@hotmail.com';
UPDATE trainer SET email = 'no email' where email like '%yahoo.com' and experience_years < 30;
UPDATE trainer SET name = 'Andrada Istrate', age = 28 where contact_number = '789012345';
UPDATE trainer SET name = 'Enescu' where name like '%Popescu%';
UPDATE trainer SET name = 'Valentin Cojocaru JR', age = 20, email = 'valentin.cojocarujr@hotmail.com' where email = 'valentin.cojocaru@hotmail.com';
UPDATE trainer SET experience_years = 0 where age < 25 and id < 25;

--4 update table members
UPDATE members SET age = 25, join_date = '15.08.2021' where name = 'Pavalache Ionut';
UPDATE members SET email = '@space.com', contact_number = '765432109' where name like 'E%';
UPDATE members SET age = 30, join_date = '01.07.2019' where name like 'A%' and name like '%a';
UPDATE members SET name = 'Updated Name', join_date = '20.03.2018' WHERE email = 'olaru.roxana@outlook.com';
UPDATE members SET age = 20 where join_date < '01.01.2020';
UPDATE members SET age = 22, email = 'new.email@example.com' WHERE name = 'Jianu Mihaela';
UPDATE members SET contact_number = '701234567' where name like 'Z%' and name like '%s';
UPDATE members SET join_date = '25.11.2022' where age > 35;
UPDATE members SET age = 40, contact_number = '789012345' where name = 'Cristea Ana' or name = 'Pintea Gabriel';
UPDATE members SET age = 33, join_date = '10.10.2022' where email like '%@e-uvt.ro';

--5 update table classes
UPDATE classes SET schedule = 'Every Monday from 10:00 to 11:30', capacity = '25' where name = 'Aerobic Dance';
UPDATE classes SET name = 'Updated Class Name', schedule = 'Every Tuesday from 09:00 to 10:30' where trainer_id = '24';
UPDATE classes SET schedule = 'Every Sunday from 16:30 to 18:00', capacity = '45' where name = 'Boxing Basics';
UPDATE classes SET trainer_id = '22', schedule = '11:00 to 12:30' where name like 'Bodyweight%';
UPDATE classes SET name = 'Zumba Fusion', schedule = 'Every Thursday from 14:30 to 16:00' where capacity < 30;
UPDATE classes SET name = 'Cardio Groove', schedule = 'Every Monday from 19:00 to 20:30' where capacity > 20;
UPDATE classes SET capacity = 60, schedule = '14:00 to 15:30' where name like 'Meditation Session%';
UPDATE classes SET capacity = 35, schedule = '09:30 to 11:00' where name like 'Functional Movement%';
UPDATE classes SET trainer_id = '3', name = 'Yoga Bliss', schedule = 'Every Wednesday from 14:00 to 15:30' where capacity > 30;
UPDATE classes SET capacity = 40, schedule = '12:30 to 14:00' where name like 'Total Body%';
UPDATE classes SET capacity = 30 where schedule < '10:00';
UPDATE classes SET name = 'Express HIIT', schedule = 'Every Tuesday from 17:30 to 19:00' where name like '%HIIT%';

--6 update table member_goals
UPDATE members_goals SET goal_name = 'Gaining is shape' where member_id = '1';
UPDATE members_goals SET goal_name = 'Enhancing endurance' where member_id = '6';
UPDATE members_goals SET goal_name = 'Toning and sculpting' where member_id = '7';
UPDATE members_goals SET goal_name = 'Maintaining overall health' where member_id = '11';
UPDATE members_goals SET goal_name = 'Sports-specific training' where member_id = '8';
UPDATE members_goals SET goal_name = 'Rehabilitation and injury prevention' where member_id = '9';
UPDATE members_goals SET goal_name = 'Reaching new heighs' where goal_name like 'Boosting%';
UPDATE members_goals SET goal_name = 'Keeping in shape' where goal_name like '%maintenance';
UPDATE members_goals SET goal_name = 'Constructing an weapon' where goal_name like 'Building%';
UPDATE members_goals SET goal_name = 'Getting competitive' where goal_name like '%competitions';
UPDATE members_goals SET goal_name = 'Coming back to moving mountains' where goal_name like '%recovery';
UPDATE members_goals SET goal_name = 'Improving digestion' where goal_name like '%metabolism';

--7 update table workout_plans
UPDATE workout_plans SET name = 'Strength Fusion' where name like '%Strength%';
UPDATE workout_plans SET name = 'Soccer Fitness Challenge' where member_id = '35';
UPDATE workout_plans SET name = 'Flex and Stretch' where name like '%Flexibility%';
UPDATE workout_plans SET name = 'HIIT Metamorphosis' where member_id = '24';
UPDATE workout_plans SET name = 'Core Blitz' where name like '%Core%';
UPDATE workout_plans SET name = 'Powerlifting Adventure' where member_id = '9';
UPDATE workout_plans SET name = 'Endurance Expedition' where name like '%Endurance%';
UPDATE workout_plans SET name = 'Functional Flow' where member_id = '8';
UPDATE workout_plans SET name = 'Total Body Transformation' where name like '%Total Body%';
UPDATE workout_plans SET name = 'Yoga Oasis' where name like '%Yoga%' and member_id = '10';
UPDATE workout_plans SET name = 'Pilates Peak' where name like '%Pilates%' and member_id = '11';
UPDATE workout_plans SET name = 'CrossFit Conquest' where name like '%CrossFit%' and member_id = '12';

--8 update table subscriptions
UPDATE subscriptions SET active='N' where end_date < '29.01.2024';
UPDATE subscriptions SET active='Y' where end_date > '29.01.2024';
UPDATE subscriptions SET amount_ron='189' where issue_date < '01.01.2024';
UPDATE subscriptions SET amount_ron='300' where issue_date > '01.01.2024';
UPDATE subscriptions SET active='Y' where member_id = 1;
UPDATE subscriptions SET end_date='01.03.2024', amount_ron='500' where active='N';
UPDATE subscriptions SET amount_ron='400' where end_date='30.08.2023';
UPDATE subscriptions SET issue_date='01.02.2023', amount_ron='100' where active='N';
UPDATE subscriptions SET active='N', amount_ron='450' where end_date='05.06.2023';
UPDATE subscriptions SET end_date='01.04.2024', amount_ron='1100' where active='Y';

--9 update table equipment
UPDATE equipment SET quantity = '18', condition = 'Fair' where name = 'Boxing Speed Bag';
UPDATE equipment SET quantity = '14', condition = 'Excellent' where name like 'Plyo%';
UPDATE equipment SET quantity = '5', condition = 'Good' where name = 'Hula Hoops';
UPDATE equipment SET quantity = '22', condition = 'Excellent' where name = 'Pilates Ball';
UPDATE equipment SET quantity = '3', condition = 'Excellent' where name like 'Battling%';
UPDATE equipment SET quantity = '9', condition = 'Fair' where name = 'Punching Bag';
UPDATE equipment SET quantity = '16', condition = 'Good' where name like 'Gymnastic%';
UPDATE equipment SET condition = 'Good' where name like 'Resistance%';
UPDATE equipment SET condition = 'Fair' where name = 'Mini Bands';
UPDATE equipment SET condition = 'Good' where name like 'S%';
UPDATE equipment SET condition = 'Excellent' where name like 'Foam%';

--10 update table feedback
UPDATE feedback SET rating = '8' where member_id = '12' and classes_id = '12';
UPDATE feedback SET feedback_date = '18.11.2021' where member_id = '40' and trainer_id = '40';
UPDATE feedback SET rating = '9', feedback_date = '30.06.2018' where member_id = '19' or classes_id = '50' or trainer_id = '7';
UPDATE feedback SET feedback_date = '15.09.2019' where member_id = '27' and classes_id = '27' and trainer_id = '27';
UPDATE feedback SET rating = '7' where member_id = '5' or trainer_id = '30';
UPDATE feedback SET rating = '8', feedback_date = '07.04.2022' where member_id = '33' or classes_id = '11';
UPDATE feedback SET feedback_date = '02.03.2020' where member_id = '17' and classes_id = '17';
UPDATE feedback SET rating = '10', feedback_date = '11.11.2017' where member_id = '48' and trainer_id = '48';
UPDATE feedback SET rating = '9' where member_id = '25';
UPDATE feedback SET feedback_date = '25.08.2021' where member_id = '8' and classes_id = '8';
UPDATE feedback SET rating = '8', feedback_date = '14.06.2019' where member_id = '36' and trainer_id = '36';
UPDATE feedback SET rating = '8' where member_id = '2' or trainer_id = '1';
