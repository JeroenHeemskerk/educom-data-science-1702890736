SELECT 
    name,
    REPLACE(
    REPLACE(
    REPLACE(
    REPLACE(
    REPLACE(
    REPLACE(
    REPLACE(name, 	"&Uuml;", "Ü"),
                  	"&ouml;", "ö"),
            	  	"&iuml;", "ï"),
        		  	"&euml;", "ë"),
        		  	"&eacute;", "é"),
        			"&egrave;", "è"),
        			"&acirc;", "â")
    AS nice_name
FROM `mhl_suppliers`
WHERE name LIKE '%&%;%'
LIMIT 25
