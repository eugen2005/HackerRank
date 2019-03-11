select con.contest_id,
       con.hacker_id,
       con.name,
       sum(total_submissions),
       sum(total_accepted_submissions),
       sum(total_views),
       sum(total_unique_views)
  from contests con
  join colleges col
    on col.contest_id = con.contest_id
  join challenges ch
    on ch.college_id = col.college_id
  left join (select challenge_id,
                    sum(total_views) total_views,
                    sum(total_unique_views) total_unique_views
               from view_stats
              group by challenge_id) vs
    on vs.challenge_id = ch.challenge_id
  left join (select challenge_id,
                    sum(total_submissions) total_submissions,
                    sum(total_accepted_submissions) total_accepted_submissions
               from submission_stats
              group by challenge_id) ss
    on ss.challenge_id = ch.challenge_id
 where total_submissions <> 0
    or total_accepted_submissions <> 0
    or total_views = 0
    or total_unique_views <> 0
 group by con.contest_id, con.hacker_id, con.name
 order by con.contest_id;
