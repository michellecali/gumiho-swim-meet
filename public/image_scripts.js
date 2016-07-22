window.addEventListener("load", function() {
	var rArrow = document.getElementById("rArrow");

	var images = [
  {  
    id: "00",
    src: "Pools/Best-Collegiate-Competition-Pools.jpg",
    text: "Collegeranker\"s 10 Best Collegiate Swimming Pools",
    link: "http://www.collegeranker.com/features/best-collegiate-competition-swimming-pools/"
  },
  { 
    id: "01",
    src: "Pools/Denison-University-Trumbull-Aquatic.jpg",
    text: "Trumbull Aquatic Center – Denison University",
    link: "http://denisonbigred.com/facilities/trumbull_aquatics_center"
  },
  { 
    id: "02",
    src: "Pools/Princeton-University-Denunzio-Pool.jpg",
    text: "Denunzio Aquatic – Princeton University",
    link: "http://www.princeton.edu/~gpaczkow/"
  },
  { 
    id: "03",
    src: "Pools/Gabrielsen-Pool-University-of-Georgia.jpg",
    text: "Gabrielsen Natatorium – University of Georgia",
    link: "http://www.georgiadogs.com/facilities/gabrielsen-natatorium.html"
  },
  { 
    id: "04",
    src: "Pools/Kiphuth-Exhibition-Pool-Yale-University.jpg",
    text: "Robert Kiphuth Memorial Exhibition Pool – Yale University",
    link: "http://www.yalebulldogs.com/information/facilities/payne_whitney_gym/pools"
  },
  { 
    id: "05",
    src: "Pools/Avery-Aquatic-Stanford-University.jpg",
    text: "Avery Aquatic Center – Stanford University",
    link: "http://cardinalrec.stanford.edu/aquatics/avery-aquatic-center/"
  },
  { 
    id: "06",
    src: "Pools/Freeman-Aquatic-University-of-Minnesota.jpg",
    text: "Freeman Aquatic Center – University of Minnesota",
    link: "http://www.gophersports.com/facilities/acquatic-center.html"
  },
  { 
    id: "07",
    src: "Pools/McCorkle-Aquatic-Ohio-State.jpg",
    text: "Mccorkle Aquatic Pavilion – The Ohio State University",
    link: "http://www.ohiostatebuckeyes.com/facilities/mccorkle-pavilion.html"
  },
  { 
    id: "08",
    src: "Pools/IUPUI-Natatorium-Indiana-and-Purdue.jpg",
    text: "IU Natatorium – Indiana University – Purdue University – Indianapolis (IUPUI)",
    link: "https://www.iunat.iupui.edu/"
  },
  { 
    id: "09",
    src: "Pools/Jamail-Texas-at-Austin.jpg",
    text: "Lee and Joe Jamail Texas Swimming Center – University of Texas at Austin",
    link: "http://www.tsc.utexas.edu/"
  },
  { 
    id: "10",
    src: "Pools/McAuley-Aquatic-Center-Georgia-Tech.jpg",
    text: "Herb McAuley Aquatic Center – Georgia Tech",
    link: "http://www.crc.gatech.edu/aquatics/content/21/aquatic-center-facts"
  }]

	rArrow.addEventListener("click", function() {
		var imgSrc = document.getElementById("img");
		switch (imgSrc.src) {
			case "http://localhost:9292/Pools/Best-Collegiate-Competition-Pools.jpg":
				imgSrc.src = images[1].src;
				break;
			case "http://localhost:9292/Pools/Denison-University-Trumbull-Aquatic.jpg":
				imgSrc.src = images[2].src;
				break;
			case "http://localhost:9292/Pools/Princeton-University-Denunzio-Pool.jpg":
				imgSrc.src = images[3].src;
				break;
			case "http://localhost:9292/Pools/Gabrielsen-Pool-University-of-Georgia.jpg":
				imgSrc.src = images[4].src;
				break;
			case "http://localhost:9292/Pools/Kiphuth-Exhibition-Pool-Yale-University.jpg":
				imgSrc.src = images[5].src;
				break;
			case "http://localhost:9292/Pools/Avery-Aquatic-Stanford-University.jpg":
				imgSrc.src = images[6].src;
				break;
			case "http://localhost:9292/Pools/Freeman-Aquatic-University-of-Minnesota.jpg":
				imgSrc.src = images[7].src;
				break;
			case "http://localhost:9292/Pools/McCorkle-Aquatic-Ohio-State.jpg":
				imgSrc.src = images[8].src;
				break;
			case "http://localhost:9292/Pools/IUPUI-Natatorium-Indiana-and-Purdue.jpg":
				imgSrc.src = images[9].src;
				break;
			case "http://localhost:9292/Pools/Jamail-Texas-at-Austin.jpg":
				imgSrc.src = images[10].src;
				break;
			case "http://localhost:9292/Pools/McAuley-Aquatic-Center-Georgia-Tech.jpg":
				imgSrc.src = images[0].src;
				break;
			default: 
				imgSrc.src = images[0].src;
  		}
  		
  	});
});




  
 


// });