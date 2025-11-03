--Nombre total des transactions
--SElect count(class) from creditcard_fraud

--Nombre et montant des transactions non frauduleuses
--SELECT count(class), sum(amount) FROM creditcard_fraud WHERE class = 0

--Nombre et montant des transactions frauduleuses
--select count(class), sum(amount) from creditcard_fraud where class = 1

--Pourcentage de transactions frauduleuses
--select concat(Round(sum(class)*100.0/count(*),2),'%') as pourcentage_fraud from creditcard_fraud

--Distribution des montants
--Select max(amount) as montant_max, avg(amount) as montant_moy, min(amount) as montant_min from creditcard_fraud

--Distribution des montants transactions fraudulauses
--Select max(amount) as montant_max, avg(amount) as montant_moy, min(amount) as montant_min from creditcard_fraud where class = 1

--Heure de transaction avec plus de fraudes
--SELECT FLOOR(time_seconds/3600) AS hour_of_day, COUNT(*) AS fraud_count
--FROM creditcard_fraud
--WHERE class = 1
--GROUP BY hour_of_day
--ORDER BY fraud_count DESC;

--Statistique des variables V-V28
--SELECT 
   -- AVG(v1) AS avg_v1, STDDEV(v1) AS std_v1,
  --  AVG(v2) AS avg_v2, STDDEV(v2) AS std_v2,
	--AVG(v3) AS avg_v3, STDDEV(v3) AS std_v3
--FROM creditcard_fraud;