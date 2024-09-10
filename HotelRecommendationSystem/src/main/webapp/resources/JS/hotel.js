function fetchCity() {
		let xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				let jsonObj= this.responseText;
				let jsObj= JSON.parse(jsonObj);
				let dropDown= document.getElementById("citySelect");
				for(var i=0; i<jsObj.length; i++){
					let option= document.createElement("option");
					option.innerHTML= jsObj[i].name;
					console.write(jsObj[i].name);
					dropDown.append(option);
					
				}
			}
		};
		xhttp.open("GET", "fetchCity", true);
		xhttp.send();
		
	}
	
	let fetchArea=()=> {
		let xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				let jsonObj= this.responseText;
				let jsObj= JSON.parse(jsonObj);
				let dropDown= document.getElementById("areaSelect");
				for(var i=0; i<jsObj.length; i++){
					let option= document.createElement("option");
					option.innerHTML= jsObj[i].name;
					dropDown.append(option);
				}
			}
		}
		xhttp.open("GET", "fetchArea", true);
		xhttp.send();
	}
	
function loadAreas(id) {
	/* alert(id); */
	let cityId = document.getElementById("citySelect").value;
	let xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			document.getElementById("areaSelect").innerHTML = this.responseText;
		}
	};
	xhttp.open("GET", "getAreas?cityId=" + id, true);
	xhttp.send();
}
function sendDataToApi() {
    var area = document.getElementById("area_id").value;
    let cityId = document.getElementById("citySelect").value;

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            alert("Data sent successfully");       
            document.getElementById("areaSelect").innerHTML = this.responseText;
        }
    };

    xhttp.open("GET", "addArea?cityId=" + cityId + "&area=" + area, true); // Corrected variables
    xhttp.send(); 
}


let count=0;
function addCityForm(){
	if(count<1){
		let formData= document.createElement("form");
		formData.setAttribute("name", "frm");
		formData.setAttribute("action", "addCity");
		formData.setAttribute("method", "POST");
		formData.setAttribute("id", "f");
		
		let newTextCtrl= document.createElement("input");
		newTextCtrl.setAttribute("type", "text");
		newTextCtrl.setAttribute("name", "city_name");
		newTextCtrl.setAttribute("placeholder", "Enter city name");
		
		let btn= document.createElement("input");
		btn.setAttribute("type", "submit");
		btn.setAttribute("value", "Add city");
		
		formData.append(newTextCtrl);
        formData.append(btn);
        
        let div= document.getElementById("cityRuntimeForm");
		div.append(formData);
		++count;
	}
}

count=0;
function addAreaForm() {
	if (count < 1) {
		let formData = document.createElement("form");
		formData.setAttribute("name", "frm");
		formData.setAttribute("action", "");
		formData.setAttribute("method", "POST");
		formData.setAttribute("id", "f");

		let newTextCtrl = document.createElement("input");
		newTextCtrl.setAttribute("type", "text");
		newTextCtrl.setAttribute("id", "area_id");
		newTextCtrl.style.marginLeft="340px";
		newTextCtrl.setAttribute("name", "area_name");
		newTextCtrl.setAttribute("placeholder", "Enter area name");

		let btn = document.createElement("input");
		btn.setAttribute("type", "submit");
		btn.setAttribute("value", "Add area");
		btn.setAttribute("onclick", "sendDataToApi()");
		
		formData.append(newTextCtrl);
		formData.append(btn);

		let div = document.getElementById("areaRuntimeForm");
		div.append(formData);
		++count;
	}
}

count=0;
function addRoomForm(){
	if(count<1){
		let formData= document.createElement("form");
		formData.setAttribute("name", "frm");
		formData.setAttribute("action", "addRoom");
		formData.setAttribute("method", "POST");
		formData.setAttribute("id", "f");
		
		let newTextCtrl= document.createElement("input");
		newTextCtrl.setAttribute("type", "text");
		newTextCtrl.setAttribute("name", "room_type");
		newTextCtrl.setAttribute("placeholder", "Enter room-type");
		
		let btn= document.createElement("input");
		btn.setAttribute("type", "submit");
		btn.setAttribute("value", "Add room-type");
		
		formData.append(newTextCtrl);
        formData.append(btn);
        
        let div= document.getElementById("roomRuntimeForm");
		div.append(formData);
		++count;
	}
}

count=0;
function addAmenityForm(){
	if(count<1){
		let formData= document.createElement("form");
		formData.setAttribute("name", "frm");
		formData.setAttribute("action", "addAmenity");
		formData.setAttribute("method", "POST");
		formData.setAttribute("id", "f");
		
		let newTextCtrl= document.createElement("input");
		newTextCtrl.setAttribute("type", "text");
		newTextCtrl.setAttribute("name", "amenity");
		newTextCtrl.setAttribute("placeholder", "Enter amenity");
		
		let btn= document.createElement("input");
		btn.setAttribute("type", "submit");
		btn.setAttribute("value", "Add amenity");
		
		formData.append(newTextCtrl);
        formData.append(btn);
        
        let div= document.getElementById("amenityRuntimeForm");
		div.append(formData);
		++count;
	}
}

count=0;
function addServiceForm(){
	if(count<1){
		let formData= document.createElement("form");
		formData.setAttribute("name", "frm");
		formData.setAttribute("action", "addService");
		formData.setAttribute("method", "POST");
		formData.setAttribute("id", "f");
		
		let newTextCtrl= document.createElement("input");
		newTextCtrl.setAttribute("type", "text");
		newTextCtrl.setAttribute("name", "service");
		newTextCtrl.setAttribute("placeholder", "Enter service");
		
		let btn= document.createElement("input");
		btn.setAttribute("type", "submit");
		btn.setAttribute("value", "Add service");
		
		formData.append(newTextCtrl);
        formData.append(btn);
        
        let div= document.getElementById("serviceRuntimeForm");
		div.append(formData);
		++count;
	}
}