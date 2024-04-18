window.onload =()=>{
	let wlat = '위도'
	let wlon = '경도';
	
	const req = new XMLHttpRequest();
	
	req.onload =() =>{
			//값 받아오기
	
	}
	req.open('get','${pageContext.request.contextPath}/weather/listwea.do?wlat='+wlat+'&wlon='+wlon);
	req.send();
	
}



