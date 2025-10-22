# Write your MySQL query statement below
SELECT ast.machine_id, 
    ROUND(AVG(ae.timestamp-ast.timestamp),3) AS processing_time
FROM Activity ast
JOIN Activity ae 
    ON ast.machine_id=ae.machine_id
    AND ast.process_id=ae.process_id
WHERE ast.activity_type= 'start'
    AND ae.activity_type= 'end'
GROUP BY ast.machine_id;