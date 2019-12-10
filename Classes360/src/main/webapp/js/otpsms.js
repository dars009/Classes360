var otp = 0;
		var msgstring = " is your one time password (OTP) for Smarttradex Signup. Thank you, www.smarttradex.com";
		function genrateotp() {
			var moblnumbr = document.getElementById("mobnum").value;
			// alert(moblnumbr);

			if (moblnumbr.length != 10) {
				alert("Mobile Number Invalid");
				document.getElementById("mobnum").focus();
				return false;
			}

			else {
				alert("OTP sent successfully");
				console.clear();
				otp = Math.floor(Math.random() * 90000) + 10000;

				//   alert(otp);

				// sending OTP to constomer for verification via api 

				$
						.ajax({
							type : 'POST',
							url : 'http://bhashsms.com/api/sendmsg.php?user=SMARTTRADEX&pass=6122&sender=STXPNQ&phone='
									+ moblnumbr
									+ '&text='
									+ otp
									+ msgstring
									+ '&priority=ndnd&stype=normal',

							success : function(msg) {
								//alert("success");
								console.clear();
								alert("Enter the OTP sent to your mobile number");
								console.clear();
							}
						});
				
				countdown(1);
				console.clear();
				$('#timer').css('visibility','visible');
				$('#clickforotp').css('visibility','hidden');
				console.clear();
				
			}
		}
		
		//countdown OTP
		var timeoutHandle;
		function countdown(minutes) {
			
			console.clear();
			
			var seconds = 60;
			var mins = minutes
			function tick() {
				console.clear();
				var counter = document.getElementById("timer");
				var current_minutes = mins - 1
				seconds--;
				counter.innerHTML = "You will receive OTP in " + current_minutes.toString() + ":"
						+ (seconds < 10 ? "0" : "") + String(seconds) + " seconds";
				if (seconds > 0) {
					timeoutHandle = setTimeout(tick, 1000);
					console.clear();
				} else {

					if (mins > 1) {
						// countdown(mins-1);   never reach “00″ issue solved.
						setTimeout(function() {
							countdown(mins - 1);
						}, 1000);
					}
					$('#timer').css('visibility','hidden');
					$('#clickforotp').css('visibility','visible');
					console.clear();
				}
			}
			tick();
			console.clear();
		}
		
		

		

		function verifyotp() {
			console.clear();
			var otpui = document.getElementById("otp").value;
			//alert(otpui);

			if (otp == otpui) {
				//alert("OTP valid");
				$('#register-submit').prop('disabled', false);
			} else {
				alert("Incorrect OTP");
				$('#register-submit').prop('disabled', true);
			}

			console.clear();
		}
		
		function hideseconds()
		{
			$('#timer').css('visibility','hidden');
			$('#clickforotp').css('visibility','visible');
			console.clear();
		}