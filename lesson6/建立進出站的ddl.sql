-- public.台鐵車站資訊 definition

-- Drop table

-- DROP TABLE public.台鐵車站資訊;

CREATE TABLE public.台鐵車站資訊 (
	stationcode int4 NOT NULL,
	stationname varchar(50) NULL,
	"name" varchar(50) NULL,
	stationaddrtw varchar(50) NULL,
	stationtel varchar(50) NULL,
	gps varchar(50) NULL,
	havebike varchar(50) NULL,
	CONSTRAINT 台鐵車站資訊_pkey PRIMARY KEY (stationcode)
);


-- public.每日各站進出站人數 definition

-- Drop table

-- DROP TABLE public.每日各站進出站人數;

CREATE TABLE public.每日各站進出站人數 (
	日期 date NULL,
	車站代碼 int4 NULL,
	進站人數 int4 NULL,
	出站人數 int4 NULL,
	CONSTRAINT 每日各站進出站人數_車站代碼_fkey FOREIGN KEY (車站代碼) REFERENCES public.台鐵車站資訊(stationcode)
);