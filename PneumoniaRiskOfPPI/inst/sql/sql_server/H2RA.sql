CREATE TABLE #Codesets (
  codeset_id int NOT NULL,
  concept_id bigint NOT NULL
)
;

INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 0 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (21603933,1112807)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (21603933,1112807)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 1 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (21600095,19039926,948078,929887,923645,904453)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (21600095)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 2 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (21600081,21600086,19011685)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (21600081,21600086,19011685)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 3 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (21603090)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (21603090)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 4 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (4025165,254677,436339,257315,256722,4110510,254066,255084,4071610,252949,4049965,252655,260754,4310964,4231983,443410,312664,4133224,440431,3021082,439857,255848,256723,260430,258180,253790,4050872,252351,436145,261324,260028,40489912,259852,261326)and invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 5 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (443392)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (443392)
  and c.invalid_reason is null

) I
LEFT JOIN
(
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (36603421)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (36603421)
  and c.invalid_reason is null

) E ON I.concept_id = E.concept_id
WHERE E.concept_id is null
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 6 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (262,9201,9203)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (262,9201,9203)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 7 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (318800,30437)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (318800,30437)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 8 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (192671,26727,201129,443530,4103703)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (192671,26727,201129,443530,4103703)
  and c.invalid_reason is null

) I
) C;
INSERT INTO #Codesets (codeset_id, concept_id)
SELECT 9 as codeset_id, c.concept_id FROM (select distinct I.concept_id FROM
( 
  select concept_id from @cdm_database_schema.CONCEPT where concept_id in (192671,26727,201129,443530,4103703)and invalid_reason is null
UNION  select c.concept_id
  from @cdm_database_schema.CONCEPT c
  join @cdm_database_schema.CONCEPT_ANCESTOR ca on c.concept_id = ca.descendant_concept_id
  and ca.ancestor_concept_id in (192671,26727,201129,443530,4103703)
  and c.invalid_reason is null

) I
) C;


with primary_events (event_id, person_id, start_date, end_date, op_start_date, op_end_date, visit_occurrence_id) as
(
-- Begin Primary Events
select row_number() over (PARTITION BY P.person_id order by P.start_date) as event_id, P.person_id, P.start_date, P.end_date, OP.observation_period_start_date as op_start_date, OP.observation_period_end_date as op_end_date, P.visit_occurrence_id
FROM
(
  select P.person_id, P.start_date, P.end_date, row_number() OVER (PARTITION BY person_id ORDER BY start_date ASC) ordinal, P.visit_occurrence_id
  FROM 
  (
  -- Begin Drug Era Criteria
select C.person_id, C.drug_era_id as event_id, C.drug_era_start_date as start_date, C.drug_era_end_date as end_date, C.drug_concept_id as TARGET_CONCEPT_ID, NULL as visit_occurrence_id
from 
(
  select de.*, row_number() over (PARTITION BY de.person_id ORDER BY de.drug_era_start_date, de.drug_era_id) as ordinal
  FROM @cdm_database_schema.DRUG_ERA de
where de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 2)
) C
JOIN @cdm_database_schema.PERSON P on C.person_id = P.person_id
WHERE DATEDIFF(d,C.drug_era_start_date, C.drug_era_end_date) >= 14
AND YEAR(C.drug_era_start_date) - P.year_of_birth >= 40
-- End Drug Era Criteria

  ) P
) P
JOIN @cdm_database_schema.observation_period OP on P.person_id = OP.person_id and P.start_date >=  OP.observation_period_start_date and P.start_date <= op.observation_period_end_date
WHERE DATEADD(day,365,OP.OBSERVATION_PERIOD_START_DATE) <= P.START_DATE AND DATEADD(day,0,P.START_DATE) <= OP.OBSERVATION_PERIOD_END_DATE
-- End Primary Events

)
SELECT event_id, person_id, start_date, end_date, op_start_date, op_end_date, visit_occurrence_id
INTO #qualified_events
FROM 
(
  select pe.event_id, pe.person_id, pe.start_date, pe.end_date, pe.op_start_date, pe.op_end_date, row_number() over (partition by pe.person_id order by pe.start_date ASC) as ordinal, pe.visit_occurrence_id
  FROM primary_events pe
  
) QE

;


create table #inclusionRuleCohorts 
(
  inclusion_rule_id bigint,
  person_id bigint,
  event_id bigint
)
;
INSERT INTO #inclusionRuleCohorts (inclusion_rule_id, person_id, event_id)
select 0 as inclusion_rule_id, person_id, event_id
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  LEFT JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Drug Exposure Criteria
select C.person_id, C.drug_exposure_id as event_id, C.drug_exposure_start_date as start_date, COALESCE(C.drug_exposure_end_date, DATEADD(day, 1, C.drug_exposure_start_date)) as end_date, C.drug_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id
from 
(
  select de.*, row_number() over (PARTITION BY de.person_id ORDER BY de.drug_exposure_start_date, de.drug_exposure_id) as ordinal
  FROM @cdm_database_schema.DRUG_EXPOSURE de
where de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 1)
) C


-- End Drug Exposure Criteria

) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-60,P.START_DATE) and A.START_DATE <= DATEADD(day,-30,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) <= 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

INSERT INTO #inclusionRuleCohorts (inclusion_rule_id, person_id, event_id)
select 1 as inclusion_rule_id, person_id, event_id
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  LEFT JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Drug Exposure Criteria
select C.person_id, C.drug_exposure_id as event_id, C.drug_exposure_start_date as start_date, COALESCE(C.drug_exposure_end_date, DATEADD(day, 1, C.drug_exposure_start_date)) as end_date, C.drug_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id
from 
(
  select de.*, row_number() over (PARTITION BY de.person_id ORDER BY de.drug_exposure_start_date, de.drug_exposure_id) as ordinal
  FROM @cdm_database_schema.DRUG_EXPOSURE de
where de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 2)
) C


-- End Drug Exposure Criteria

) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) and A.START_DATE <= DATEADD(day,-1,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) <= 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

INSERT INTO #inclusionRuleCohorts (inclusion_rule_id, person_id, event_id)
select 2 as inclusion_rule_id, person_id, event_id
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  LEFT JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.*, row_number() over (PARTITION BY co.person_id ORDER BY co.condition_start_date, co.condition_occurrence_id) as ordinal
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  where co.condition_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 7)
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-30,P.START_DATE) and A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) >= 1
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

INSERT INTO #inclusionRuleCohorts (inclusion_rule_id, person_id, event_id)
select 3 as inclusion_rule_id, person_id, event_id
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  LEFT JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Visit Occurrence Criteria
select C.person_id, C.visit_occurrence_id as event_id, C.visit_start_date as start_date, C.visit_end_date as end_date, C.visit_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id
from 
(
  select vo.*, row_number() over (PARTITION BY vo.person_id ORDER BY vo.visit_start_date, vo.visit_occurrence_id) as ordinal
  FROM @cdm_database_schema.VISIT_OCCURRENCE vo
where vo.visit_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 6)
) C


-- End Visit Occurrence Criteria

) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,0,P.START_DATE) and A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) <= 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

INSERT INTO #inclusionRuleCohorts (inclusion_rule_id, person_id, event_id)
select 4 as inclusion_rule_id, person_id, event_id
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  LEFT JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.*, row_number() over (PARTITION BY co.person_id ORDER BY co.condition_start_date, co.condition_occurrence_id) as ordinal
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  where co.condition_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 5)
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-365,P.START_DATE) and A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) <= 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

INSERT INTO #inclusionRuleCohorts (inclusion_rule_id, person_id, event_id)
select 5 as inclusion_rule_id, person_id, event_id
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  LEFT JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Drug Exposure Criteria
select C.person_id, C.drug_exposure_id as event_id, C.drug_exposure_start_date as start_date, COALESCE(C.drug_exposure_end_date, DATEADD(day, 1, C.drug_exposure_start_date)) as end_date, C.drug_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id
from 
(
  select de.*, row_number() over (PARTITION BY de.person_id ORDER BY de.drug_exposure_start_date, de.drug_exposure_id) as ordinal
  FROM @cdm_database_schema.DRUG_EXPOSURE de
where de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 3)
) C


-- End Drug Exposure Criteria

) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= P.OP_START_DATE and A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) <= 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

INSERT INTO #inclusionRuleCohorts (inclusion_rule_id, person_id, event_id)
select 6 as inclusion_rule_id, person_id, event_id
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  LEFT JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.*, row_number() over (PARTITION BY co.person_id ORDER BY co.condition_start_date, co.condition_occurrence_id) as ordinal
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  where co.condition_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 4)
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-365,P.START_DATE) and A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) <= 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;

INSERT INTO #inclusionRuleCohorts (inclusion_rule_id, person_id, event_id)
select 7 as inclusion_rule_id, person_id, event_id
FROM 
(
  select pe.person_id, pe.event_id
  FROM #qualified_events pe
  
JOIN (
-- Begin Criteria Group
select 0 as index_id, person_id, event_id
FROM
(
  select E.person_id, E.event_id 
  FROM #qualified_events E
  LEFT JOIN
  (
    -- Begin Correlated Criteria
SELECT 0 as index_id, p.person_id, p.event_id
FROM #qualified_events P
LEFT JOIN
(
  -- Begin Condition Occurrence Criteria
SELECT C.person_id, C.condition_occurrence_id as event_id, C.condition_start_date as start_date, COALESCE(C.condition_end_date, DATEADD(day,1,C.condition_start_date)) as end_date, C.CONDITION_CONCEPT_ID as TARGET_CONCEPT_ID, C.visit_occurrence_id
FROM 
(
  SELECT co.*, row_number() over (PARTITION BY co.person_id ORDER BY co.condition_start_date, co.condition_occurrence_id) as ordinal
  FROM @cdm_database_schema.CONDITION_OCCURRENCE co
  where co.condition_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 9)
) C


-- End Condition Occurrence Criteria

) A on A.person_id = P.person_id and A.START_DATE >= P.OP_START_DATE AND A.START_DATE <= P.OP_END_DATE AND A.START_DATE >= DATEADD(day,-365,P.START_DATE) and A.START_DATE <= DATEADD(day,0,P.START_DATE)
GROUP BY p.person_id, p.event_id
HAVING COUNT(A.TARGET_CONCEPT_ID) <= 0
-- End Correlated Criteria

  ) CQ on E.person_id = CQ.person_id and E.event_id = CQ.event_id
  GROUP BY E.person_id, E.event_id
  HAVING COUNT(index_id) = 1
) G
-- End Criteria Group
) AC on AC.person_id = pe.person_id AND AC.event_id = pe.event_id
) Results
;


with cteIncludedEvents(event_id, person_id, start_date, end_date, op_start_date, op_end_date, ordinal) as
(
  SELECT event_id, person_id, start_date, end_date, op_start_date, op_end_date, row_number() over (partition by person_id order by start_date ASC) as ordinal
  from
  (
    select Q.event_id, Q.person_id, Q.start_date, Q.end_date, Q.op_start_date, Q.op_end_date, SUM(coalesce(POWER(cast(2 as bigint), I.inclusion_rule_id), 0)) as inclusion_rule_mask
    from #qualified_events Q
    LEFT JOIN #inclusionRuleCohorts I on I.person_id = Q.person_id and I.event_id = Q.event_id
    GROUP BY Q.event_id, Q.person_id, Q.start_date, Q.end_date, Q.op_start_date, Q.op_end_date
  ) MG -- matching groups

  -- the matching group with all bits set ( POWER(2,# of inclusion rules) - 1 = inclusion_rule_mask
  WHERE (MG.inclusion_rule_mask = POWER(cast(2 as bigint),8)-1)

)
select event_id, person_id, start_date, end_date, op_start_date, op_end_date
into #included_events
FROM cteIncludedEvents Results

;

-- Apply end date stratagies
-- by default, all events extend to the op_end_date.
select event_id, person_id, op_end_date as end_date
into #cohort_ends
from #included_events;

-- Custom Era Strategy
INSERT INTO #cohort_ends (event_id,  person_id, end_date)
select et.event_id, et.person_id, ERAS.era_end_date as end_date
from #included_events et
JOIN 
(
  select ENDS.person_id, min(drug_exposure_start_date) as era_start_date, DATEADD(day,0, ENDS.era_end_date) as era_end_date
  from
  (
    select de.person_id, de.drug_exposure_start_date, MIN(e.END_DATE) as era_end_date
    FROM (
      -- cteDrugTarget
       select de.PERSON_ID, DRUG_EXPOSURE_START_DATE, 
        COALESCE(DRUG_EXPOSURE_END_DATE, DATEADD(day,DAYS_SUPPLY,DRUG_EXPOSURE_START_DATE), DATEADD(day,1,DRUG_EXPOSURE_START_DATE)) as DRUG_EXPOSURE_END_DATE 
      FROM @cdm_database_schema.DRUG_EXPOSURE de
      JOIN #included_events et on de.PERSON_ID = et.PERSON_ID
      WHERE de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 2)
    ) DE
    JOIN 
    (
      --cteEndDates
      select PERSON_ID, DATEADD(day,-1 * 30,EVENT_DATE) as END_DATE -- unpad the end date by 30
      FROM
      (
        select E1.PERSON_ID, E1.EVENT_DATE, COALESCE(E1.START_ORDINAL,MAX(E2.START_ORDINAL)) START_ORDINAL, E1.OVERALL_ORD 
        FROM 
        (
          select PERSON_ID, EVENT_DATE, EVENT_TYPE, 
          START_ORDINAL,
          ROW_NUMBER() OVER (PARTITION BY PERSON_ID ORDER BY EVENT_DATE, EVENT_TYPE) AS OVERALL_ORD -- this re-numbers the inner UNION so all rows are numbered ordered by the event date
          from
          (
            -- select the start dates, assigning a row number to each
            Select PERSON_ID, DRUG_EXPOSURE_START_DATE AS EVENT_DATE, 0 as EVENT_TYPE, ROW_NUMBER() OVER (PARTITION BY PERSON_ID ORDER BY DRUG_EXPOSURE_START_DATE) as START_ORDINAL
            from (
              -- cteDrugTarget
               select de.PERSON_ID, DRUG_EXPOSURE_START_DATE, 
                COALESCE(DRUG_EXPOSURE_END_DATE, DATEADD(day,DAYS_SUPPLY,DRUG_EXPOSURE_START_DATE), DATEADD(day,1,DRUG_EXPOSURE_START_DATE)) as DRUG_EXPOSURE_END_DATE 
              FROM @cdm_database_schema.DRUG_EXPOSURE de
              JOIN #included_events et on de.PERSON_ID = et.PERSON_ID
              WHERE de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 2)
            ) D

            UNION ALL

            -- add the end dates with NULL as the row number, padding the end dates by 30 to allow a grace period for overlapping ranges.
            select PERSON_ID, DATEADD(day,30,DRUG_EXPOSURE_END_DATE), 1 as EVENT_TYPE, NULL
            FROM (
              -- cteDrugTarget
               select de.PERSON_ID, DRUG_EXPOSURE_START_DATE, 
                COALESCE(DRUG_EXPOSURE_END_DATE, DATEADD(day,DAYS_SUPPLY,DRUG_EXPOSURE_START_DATE), DATEADD(day,1,DRUG_EXPOSURE_START_DATE)) as DRUG_EXPOSURE_END_DATE 
              FROM @cdm_database_schema.DRUG_EXPOSURE de
              JOIN #included_events et on de.PERSON_ID = et.PERSON_ID
              WHERE de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 2)
            ) D
          ) RAWDATA
        ) E1
        LEFT JOIN (
          Select PERSON_ID, DRUG_EXPOSURE_START_DATE AS EVENT_DATE, ROW_NUMBER() OVER (PARTITION BY PERSON_ID ORDER BY DRUG_EXPOSURE_START_DATE) as START_ORDINAL
          from (
            -- cteDrugTarget
             select de.PERSON_ID, DRUG_EXPOSURE_START_DATE, 
              COALESCE(DRUG_EXPOSURE_END_DATE, DATEADD(day,DAYS_SUPPLY,DRUG_EXPOSURE_START_DATE), DATEADD(day,1,DRUG_EXPOSURE_START_DATE)) as DRUG_EXPOSURE_END_DATE 
            FROM @cdm_database_schema.DRUG_EXPOSURE de
            JOIN #included_events et on de.PERSON_ID = et.PERSON_ID
            WHERE de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 2)
          ) D
        ) E2 ON E1.PERSON_ID = E2.PERSON_ID AND E2.EVENT_DATE <= E1.EVENT_DATE
        GROUP BY E1.PERSON_ID, E1.EVENT_DATE, E1.START_ORDINAL, E1.OVERALL_ORD
      ) E
      WHERE 2 * E.START_ORDINAL - E.OVERALL_ORD = 0
    ) E on DE.PERSON_ID = E.PERSON_ID and E.END_DATE >= DE.DRUG_EXPOSURE_START_DATE
    GROUP BY de.person_id, de.drug_exposure_start_date
  ) ENDS
  GROUP BY ENDS.person_id, ENDS.era_end_date
) ERAS on ERAS.person_id = et.person_id 
WHERE et.start_date between ERAS.era_start_date and ERAS.era_end_date

;

INSERT INTO #cohort_ends (event_id, person_id, end_date)
select i.event_id, i.person_id, MIN(c.start_date) as end_date
FROM #included_events i
JOIN
(
-- Begin Drug Exposure Criteria
select C.person_id, C.drug_exposure_id as event_id, C.drug_exposure_start_date as start_date, COALESCE(C.drug_exposure_end_date, DATEADD(day, 1, C.drug_exposure_start_date)) as end_date, C.drug_concept_id as TARGET_CONCEPT_ID, C.visit_occurrence_id
from 
(
  select de.*, row_number() over (PARTITION BY de.person_id ORDER BY de.drug_exposure_start_date, de.drug_exposure_id) as ordinal
  FROM @cdm_database_schema.DRUG_EXPOSURE de
where de.drug_concept_id in (SELECT concept_id from  #Codesets where codeset_id = 1)
) C


-- End Drug Exposure Criteria

) C on C.person_id = I.person_id and C.start_date >= I.start_date and C.START_DATE <= I.op_end_date
GROUP BY i.event_id, i.person_id
;


with collapse_constructor_input (person_id, start_date, end_date) as
(
	select F.person_id, F.start_date, F.end_date
	FROM (
	  select I.event_id, I.person_id, I.start_date, E.end_date, row_number() over (partition by I.person_id, I.event_id order by E.end_date) as ordinal 
	  from #included_events I
	  join #cohort_ends E on I.event_id = E.event_id and I.person_id = E.person_id and E.end_date >= I.start_date
	) F
	WHERE F.ordinal = 1
)
select person_id, start_date, end_date
into #collapse_constructor_input
from collapse_constructor_input
;

-- era constructor
WITH cteSource (person_id, start_date, end_date, groupid) AS
(
	SELECT
		person_id  
		, start_date
		, end_date
		, dense_rank() over(order by person_id) as groupid
	FROM #collapse_constructor_input as so
)
,
--------------------------------------------------------------------------------------------------------------
cteEndDates (groupid, end_date) AS -- the magic
(	
	SELECT
		groupid
		, DATEADD(day,-1 * 0, event_date)  as end_date
	FROM
	(
		SELECT
			groupid
			, event_date
			, event_type
			, MAX(start_ordinal) OVER (PARTITION BY groupid ORDER BY event_date, event_type ROWS UNBOUNDED PRECEDING) AS start_ordinal 
			, ROW_NUMBER() OVER (PARTITION BY groupid ORDER BY event_date, event_type) AS overall_ord
		FROM
		(

			SELECT
				groupid
				, start_date AS event_date
				, -1 AS event_type
				, ROW_NUMBER() OVER (PARTITION BY groupid ORDER BY start_date) AS start_ordinal
			FROM cteSource
		
			UNION ALL
		

			SELECT
				groupid
				, DATEADD(day,0,end_date) as end_date
				, 1 AS event_type
				, NULL
			FROM cteSource
		) RAWDATA
	) e
	WHERE (2 * e.start_ordinal) - e.overall_ord = 0
),
--------------------------------------------------------------------------------------------------------------
cteEnds (groupid, start_date, end_date) AS
(
	SELECT
		 c.groupid
		, c.start_date
		, MIN(e.end_date) AS era_end_date
	FROM cteSource c
	JOIN cteEndDates e ON c.groupid = e.groupid AND e.end_date >= c.start_date
	GROUP BY
		 c.groupid
		, c.start_date
)
select person_id, start_date, end_date
into #collapse_constructor_output
from
(
	select distinct person_id , min(b.start_date) as start_date, b.end_date
	from
		(select distinct person_id, groupid from cteSource) as a
	inner join
		cteEnds as b
	on a.groupid = b.groupid
	group by person_id, end_date
) q
;


DELETE FROM @target_database_schema.@target_cohort_table where cohort_definition_id = @target_cohort_id;
INSERT INTO @target_database_schema.@target_cohort_table (cohort_definition_id, subject_id, cohort_start_date, cohort_end_date)
select @target_cohort_id as cohort_definition_id, person_id, start_date, end_date
FROM #collapse_constructor_output CO --@output: change depending on what is selected for collapse construction
;



TRUNCATE TABLE #collapse_constructor_input;
DROP TABLE #collapse_constructor_input;

TRUNCATE TABLE #collapse_constructor_output;
DROP TABLE #collapse_constructor_output;

TRUNCATE TABLE #cohort_ends;
DROP TABLE #cohort_ends;

TRUNCATE TABLE #inclusionRuleCohorts;
DROP TABLE #inclusionRuleCohorts;

TRUNCATE TABLE #qualified_events;
DROP TABLE #qualified_events;

TRUNCATE TABLE #included_events;
DROP TABLE #included_events;

TRUNCATE TABLE #Codesets;
DROP TABLE #Codesets;

