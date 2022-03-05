-- Observing the players stats
Select *
From Cumberland.dbo.PlayerStats
Order by [No#]
-- Looking at the first game
Select * 
From cumberland.dbo.Benedictine

-- Combining all the box scores into one table for missing stats
select [No#], 
		Player, 
		sum([Reception Errors]) as [Reception Errors], 
		Sum([Service Errors]) as [Service Errors],
		sum([Block Errors]) as [Block Errors],
		sum([Ball Handling Errors]) as [Ball Handling Errors]
from
(
    select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
    from Benedictine
    union all
    select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
    from [Bethel(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Bethel(3)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Bethel
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from BlueMountain
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Brescia
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Bryan
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Campbellsville(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Campbellsville
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Columbia
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Concordia(MI)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Cornerstone
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Cumberlands
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Fisk
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Florida College]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Freed-Hardeman(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Freed-Hardeman]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Georgetown
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Grace
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Grace(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Life(10)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Life(12)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Life
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [LindseyWilson(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from LindseyWilson
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Marian
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Milligan
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from MissouriValley
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Pikeville(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Pikeville
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from SaintXavier
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from ShawneeState
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from StFrancis
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Stephens
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [TennesseeSouthern(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from TennesseeSouthern
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from ThomasMore
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Trinity
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from WilliamsBaptist 

)	t
Group by No#, Player
order by No#



-- Temp Table
Create Table AdditionalStats
(
[No#] Float,
Player nvarchar(255),
[Reception Errors] Float,
[Service Errors] Float,
[Block Errors] Float,
[Ball Handling Errors] Float
)

Insert Into AdditionalStats
select [No#], 
		Player, 
		sum([Reception Errors]) as [Reception Errors], 
		Sum([Service Errors]) as [Service Errors],
		sum([Block Errors]) as [Block Errors],
		sum([Ball Handling Errors]) as [Ball Handling Errors]
from
(
    select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
    from Benedictine
    union all
    select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
    from [Bethel(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Bethel(3)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Bethel
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from BlueMountain
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Brescia
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Bryan
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Campbellsville(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Campbellsville
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Columbia
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Concordia(MI)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Cornerstone
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Cumberlands
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Fisk
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Florida College]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Freed-Hardeman(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Freed-Hardeman]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Georgetown
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Grace
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Grace(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Life(10)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Life(12)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Life
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [LindseyWilson(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from LindseyWilson
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Marian
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Milligan
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from MissouriValley
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [Pikeville(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Pikeville
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from SaintXavier
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from ShawneeState
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from StFrancis
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Stephens
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from [TennesseeSouthern(2)]
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from TennesseeSouthern
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from ThomasMore
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from Trinity
	union all
	select [No#], Player, [Reception Errors], [Service Errors], [Block Errors], [Ball Handling Errors]
	from WilliamsBaptist 

)	t
Group by No#, Player
order by No#

-- Looking at temp table
Select *
From AdditionalStats
order by [No#]

--cleaning player info error
Delete From AdditionalStats
Where Player = 'Biance Rodriguez'

-- Joining temp table to PlayerStats table
Select p.*, a.[Reception Errors], a.[Service Errors], a.[Block Errors], a.[Ball Handling Errors]
From AdditionalStats a
inner join PlayerStats p
on a.[No#] = p.[No#]
order by [No#]

