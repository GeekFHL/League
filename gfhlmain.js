function random_mainpic(){
		var mainpic=new Array()
		mainpic[1]="la_icerink.jpg"
	        mainpic[2]="la_stanleycup.jpg"
		mainpic[3]="la_teampic.jpg"
		mainpic[4]="la_win.jpg"
		mainpic[5]="la_vspens.jpg"
		mainpic[6]="la_kingsrings.jpg"
		mainpic[7]="la_icerink.jpg"
	        mainpic[8]="la_stanleycup.jpg"
		mainpic[9]="la_teampic.jpg"
		mainpic[10]="la_win.jpg"
		mainpic[11]="la_vspens.jpg"
		mainpic[12]="la_kingsrings.jpg"
		mainpic[13]="la_wil.jpg"

		

		var maintext=new Array()
		maintext[1]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[2]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[3]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[4]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[5]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[6]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[7]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[8]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[9]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[10]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[11]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[12]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."
		maintext[13]="The Los Angeles Kings have won the Kassandra Cup! Congratulation Tom! Your hard work paid off with your second cup in 3 years."

		var ry=Math.floor(Math.random()*mainpic.length)
		
		if (ry==0)
		ry=1
		document.write('<img src="http://geekfhl.angelfire.com/'+mainpic[ry]+'" width="544" vspace="2" class="center"></img><center>'+maintext[ry]+'</center>');
	