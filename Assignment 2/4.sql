/*
Answer: The result of the query will be an empty set. The reason for
that is mentioned below:
If the set being evaluated by the SQL NOT IN condition contains any 
values that are null, then the outer query here will return an empty 
set, even if there are many runner ids that match winner_ids in the
races table.
The correct query that will avoid this issue would be as follows:
    SELECT *  
    FROM runners 
    WHERE id NOT IN (SELECT winner_id 
                     FROM races 
                     WHERE winner_id IS NOT null);
*/