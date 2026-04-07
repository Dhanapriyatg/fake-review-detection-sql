-- Duplicate review detection
SELECT review_text, COUNT(*) 
FROM reviews
GROUP BY review_text
HAVING COUNT(*) > 5;

-- Spam user detection
SELECT user_id, COUNT(*) 
FROM reviews
GROUP BY user_id
HAVING COUNT(*) > 10;

-- Same rating pattern
SELECT user_id, COUNT(DISTINCT rating)
FROM reviews
GROUP BY user_id
HAVING COUNT(DISTINCT rating) = 1;