SELECT
    title
    rating,
    description,
    rental_rate,
    length,
    CASE:
        WHEN rating IN ("R", "NC-17") THEN "too adult"
        WHEN description LIKE "%sharks%" THEN "too scary"
        WHEN rental_rate > "10" THEN "too expensive"
        WHEN length > 90 THEN "too long"
    ELSE "good fit"
    END AS recommendation_fit
FROM film
