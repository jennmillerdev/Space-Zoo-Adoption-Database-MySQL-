					-- link the code to the space_adoption database
use space_adoption;

					-- make one join to join adopters to adoptions
SELECT 	a.adopter_id,
		a.adopter_first_name,
        a.adopter_last_name,
        ad.adoption_id,
        ad.adopter_id, 
        ad.creature_id,
        ad.adoption_date,
        ad.adoption_fee
from adopters a
inner join adoptions ad
on a.adopter_id = ad.adopter_id;

					-- make one join to join adoptions and creatures
select c.creature_id, 
		c.species_id, 
        c.planet_id, 
        c.shelter_id, 
        c.creature_name, 
        c.creature_age, 
        c.creature_id, 
        ad.adoption_id,
        ad.adopter_id, 
        ad.creature_id,
        ad.adoption_date,
        ad.adoption_fee
from creatures c 
inner join adoptions ad
on c.creature_id = ad.creature_id;

					-- make one join to join creatures and planets
select c.creature_id, 
		c.species_id, 
        c.planet_id, 
        c.shelter_id, 
        c.creature_name,          
        c.creature_id, 
        p.planet_id,
		p.galaxy_id,
		p.planet_name		
from creatures c 
inner join planets p
on c.planet_id = p.planet_id;

					-- make a left join to adopt and adoptions to show frank (no adoption)
select a.adopter_first_name,
		a.adopter_last_name,
		ad.adoption_date
from adopters a
left join adoptions ad
on a.adopter_id = ad.adopter_id; 

					-- make a right join 
select c.creature_name,
		ad.adoption_date
from creatures c 
right join adoptions ad
on c.creature_id = ad.creature_id;

		-- make CRUD info
SELECT `adoptions`.`adoption_id`,
    `adoptions`.`adopter_id`,
    `adoptions`.`creature_id`,
    `adoptions`.`adoption_date`,
    `adoptions`.`adoption_fee`
FROM `space_adoption`.`adoptions`;                
                
-- insert into species (species_name, species_classification, species_diet, species_temperment)
-- 	values ('Henvers', 'photoautotroph' , 'Light from a class 2 star' , ' Very fragile');

-- update species 
-- set species_classification = 'omnivore'
-- where species_id = 5;

delete from zip_code
where zip_code = '10000';

SELECT `species`.`species_id`,
    `species`.`species_name`,
    `species`.`species_classification`,
    `species`.`species_diet`,
    `species`.`species_temperment`
FROM `space_adoption`.`species`;

SELECT `zip_code`.`zip_code`,
    `zip_code`.`city`,
    `zip_code`.`state`
FROM `space_adoption`.`zip_code`;

