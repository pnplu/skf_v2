<!DOCTYPE html>
<html>
<head>
	<title></title>
	<script type="text/javascript" src="js/jquery.js"></script>
</head>
<body>
	<script type="text/javascript">
		function timeDifference(current, previous) {
    
		    var msPerMinute = 60 * 1000;
		    var msPerHour = msPerMinute * 60;
		    var msPerDay = msPerHour * 24;
		    var msPerMonth = msPerDay * 30;
		    var msPerYear = msPerDay * 365;
		    
		    var elapsed = current - previous;
		    
		    if (elapsed < msPerMinute) {
		         return Math.round(elapsed/1000) + ' วินาทีที่ผ่านมา';   
		    }
		    
		    else if (elapsed < msPerHour) {
		         return Math.round(elapsed/msPerMinute) + ' นาทีที่ผ่านมา';   
		    }
		    
		    else if (elapsed < msPerDay ) {
		         return Math.round(elapsed/msPerHour ) + ' ชั่วโมงที่ผ่านมา';   
		    }

		    else if (elapsed < msPerMonth) {
		         return 'ประมาณ ' + Math.round(elapsed/msPerDay) + ' วันที่ผ่านมา';   
		    }
		    
		    else if (elapsed < msPerYear) {
		         return 'ประมาณ ' + Math.round(elapsed/msPerMonth) + ' เดือนที่ผ่านมา';   
		    }
		    
		    else {
		         return 'ประมาณ ' + Math.round(elapsed/msPerYear ) + ' ปีที่ผ่านมา';   
		    }
		}


		// TESTS
		var current= new Date();
		alert(timeDifference(current, new Date(2012,03,24,17,45,12)));
	</script>
</body>
</html>