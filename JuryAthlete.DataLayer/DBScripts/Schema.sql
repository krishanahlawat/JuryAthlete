DROP PROCEDURE IF EXISTS usp_Upcomingcompetitions;
CREATE PROCEDURE usp_Upcomingcompetitions()
select 
	c.id, c.f_nom
	, date_format(c.f_date, '%d-%m') date, c.f_heure, c.f_matin, c.f_apresmidi, c.f_soir
	, c.f_club, c.f_lieu, CONCAT_WS(' ', o.f_adresse, o.f_cp, o.f_ville) lieu
	, s.id saison_id
	, c.f_entry_dt
	, c.f_visible
from 
	t_competitions c
	join t_clubs o
	on o.f_club = c.f_club
	join t_md_saisons s
	on s.f_start_dt <= c.f_date and s.f_end_dt >= c.f_date
where
	c.f_date >= curdate()
	and c.f_actif = 1
order by c.f_date, c.f_club;


DROP PROCEDURE IF EXISTS usp_OfficielsMeritantsList;
CREATE PROCEDURE usp_OfficielsMeritantsList
(
 in year int
)
select 
	m.id, 
    m.f_annee, 
    coalesce(o.f_nom, m.f_nom) f_nom, m.f_officiel_id, 
    m.f_remarque, 
    o.f_actif
from  t_officiels_meritants m
left join (select id, concat(f_nom, ' ', f_prenom) f_nom, f_actif from t_officiels) o
on o.id = m.f_officiel_id
where m.f_annee <= year
order by m.f_annee