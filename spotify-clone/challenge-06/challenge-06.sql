SELECT
    MIN(plans.plan_value) AS min_profit,
    MAX(plans.plan_value) AS max_profit,
    ROUND(AVG(plans.plan_value), 2) AS avg_profit,
    SUM(plans.plan_value) AS total_profit
FROM
    SpotifyClone.plans_table AS plans
        INNER JOIN
    SpotifyClone.users_table AS users
      ON users.id_plan = plans.id_plan;