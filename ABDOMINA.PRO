domains
	list=symbol*
predicates
	pain_place(symbol,list)
clauses
	pain_place("up right",Y):-Y=["Ulcers","Pancreatitis","Gallstones"].
	pain_place("up middle",Y):-Y=["Sore","Indigestion","Gerd","pancreatitis hernia"].
	pain_place("up left",Y):-Y=["Duodenal ulcer","Bile duct obstruction","pancreatitis"].
	pain_place("middle right",Y):-Y=["Gallstones","Urinary tract infection","Herniated disc"].
	pain_place("center",Y):-Y=["pancreatitis","Umbilical hernia","Ulcer"].
	pain_place("middle left",Y):-Y=["Constipation","Colitis"].
	pain_place("down right",Y):-Y=["Constipation","Pelvic pain"].
	pain_place("down middle",Y):-Y=["Urinary tract infection","Colitis","pelvic pain"].
	pain_place("down left",Y):-Y=["Colon infiltration"].
	
goal
	write("Where does your stomach ache from?"),nl,readln(X),nl,
	pain_place(X,Y),write("the possibility of your infected ==>\n ",Y).	