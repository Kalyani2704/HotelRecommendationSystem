function validateName(str) {
		let len = str.length;
		let flag = false;
		for (var i = 0; i < len; i++) {
			let ascii = str.charCodeAt(i);
			if (!((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122))) {
				flag = true;
				break;
			}
		}
		if (flag) {
			document.getElementById("f").innerHTML = "Enter valid name";
			document.getElementById("f").style.color = "red";
		} else {
			document.getElementById("f").innerHTML = "";
		}
	}

	function validateSurname(str) {
		let len = str.length;
		let flag = false;
		for (var i = 0; i < len; i++) {
			let ascii = str.charCodeAt(i);
			if (!((ascii >= 65 && ascii <= 90) || (ascii >= 97 && ascii <= 122))) {
				flag = true;
				break;
			}
		}
		if (flag) {
			document.getElementById("l").innerHTML = "Enter valid name";
			document.getElementById("l").style.color = "red";
		} else {
			document.getElementById("l").innerHTML = "";
		}
	}

	function validateContact(str) {
		let len = str.length;
		let flag = false;
		for (var i = 0; i < len; i++) {
			let ascii = str.charCodeAt(i);
			if (!((ascii >= 48 && ascii <= 57) && str.length == 10)) {
				flag = true;
				break;
			}
		}
		if (flag) {
			document.getElementById("c").innerHTML = "Enter valid Contact Number";
			document.getElementById("c").style.color = "red";
		} else {
			document.getElementById("c").innerHTML = "";
		}
	}

	function validateEmail(str) {
		let index = str.indexOf("@");
		if (index <= 0) {
			document.getElementById("e").innerHTML = "Enter valid email address";
			document.getElementById("e").style.color = "red";
		} else {
			let lastIndex = str.lastIndexOf("@");
			let diff = lastIndex - index;
			if (diff > 0) {
				document.getElementById("e").innerHTML = "@ should not repeat";
			} else {
				let afterAt = str.slice((index + 1));
				let dotIndex = afterAt.lastIndexOf(".");
				if (!(dotIndex == (afterAt.length - 4) || dotIndex == (afterAt.length - 3))) {
					document.getElementById("e").innerHTML = "Enter valid email address";
				} else {
					document.getElementById("e").innerHTML = "";
				}
			}
		}
	}

	let sccount = 0, dcount = 0, ucount = 0, lcount = 0;
	function validatePassword(str) {
		if (str.length <=7) {
			document.getElementById("p").innerHTML = "Enter valid password";
			document.getElementById("p").style.color = "red";
		} else {

			for (var i = 0; i < str.length; i++) {
				if ((str.charCodeAt(i) >= 65 && str.charCodeAt(i) <= 90)) {
					++ucount;
				}
				if ((str.charCodeAt(i) >= 97 && str.charCodeAt(i) <= 122)) {
					++lcount;
				}

				if ((str.charCodeAt(i) >= 48 && str.charCodeAt(i) <= 57)) {
					++dcount;
				}
				if (!((str.charCodeAt(i) >= 65 && str.charCodeAt(i) <= 90)
						|| (str.charCodeAt(i) >= 97 && str.charCodeAt(i) <= 122) || (str
						.charCodeAt(i) >= 97 && str.charCodeAt(i) <= 122))) {
					++sccount;
				}
			}
			if (sccount >= 1 && dcount >= 1 && ucount >= 1 && lcount >= 1) {
				document.getElementById("p").innerHTML = "";
			} else {
				document.getElementById("p").innerHTML = "Enter valid password";
			}
		}
	}