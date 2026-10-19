-- Internal verification cleanup only; there is deliberately no Student DELETE API.
-- psql quotes these values; both must match the row created by this verification run.
DELETE FROM students
WHERE id = :'student_id'::bigint AND enrollment_number = :'enrollment_number'
RETURNING id;
