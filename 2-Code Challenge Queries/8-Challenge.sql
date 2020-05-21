
-- ¿Qué nombres de artículos tienen la palabra 'bitcoin'?

-- Selecciona todas las columnas.

SELECT *
FROM news
WHERE title LIKE '%bitcoin%';


/*
id	    title	publisher	category	timestamp	url
199	Bitcoin Exchange Mt. Gox Seeks US Bankruptcy Relief	Law360 \(subscription\)	b	1394474320964	http://www.law360.com/articles/516804/bitcoin-exchange-mt-gox-seeks-us-bankruptcy-relief
201	Bitcoin exchange Mt. Gox files for US bankruptcy protection	The Globe and Mail	b	1394474321662	http://www.theglobeandmail.com/report-on-business/international-business/us-business/bitcoin-exchange-mt-gox-files-for-us-bankruptcy-protection/article17392957/
202	Hackers Claim Mt. Gox CEO Mark Karpeles Held 'Stolen' Customer Bitcoins	Design \& Trend	b	1394474321847	http://www.designntrend.com/articles/11510/20140310/hackers-strike-again-claiming-mt-gox-ceo-mark-karpeles-held-customer-bitcoins.htm
205	Report: Mt. Gox CEO Holding 'Stolen' Bitcoins	PC Magazine	b	1394474322360	http://www.pcmag.com/article2/0,2817,2454756,00.asp
209	Mt. Gox Chief Stole 100000 Bitcoins, Hackers Claim	InformationWeek	b	1394474323133	http://www.informationweek.com/security/attacks-and-breaches/mt-gox-chief-stole-100000-bitcoins-hackers-claim/d/d-id/1114197\?_mc=RSS_IWK_EDT
213	Anonymous hackers claim MtGox still has 'stolen' Bitcoins	SC Magazine UK	b	1394474323797	http://www.scmagazineuk.com/anonymous-hackers-claim-mtgox-still-has-stolen-bitcoins/article/337507/

*/