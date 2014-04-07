<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    	               "http://www.w3.org/TR/html4/loose.dtd">

<html>
  <head>
 <!-- <script src="jquery-2.1.0.min.js"></script>-->
    <link rel="stylesheet" href="ht//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    	<title>Hackathon</title>

 <script>
$(function() {
var availableTags = [
"Kareem Abdul-jabbar",
"Shareef Abdur-rahim",
"Alvan Adams",
"Mark Aguirre",
"Danny Ainge",
"Ray Allen",
"Kenny Anderson",
"Nick Anderson",
"Carmelo Anthony",
"Nate Archibald",
"Paul Arizin",
"Thurl Bailey",
"Vin Baker",
"Charles Barkley",
"Dick Barnett",
"Rick Barry",
"Elgin Baylor",
"Walt Bellamy",
"Mike Bibby",
"Chauncey Billups",
"Dave Bing",
"Larry Bird",
"Otis Birdsong",
"Rolando Blackman",
"Mookie Blaylock",
"Ron Boone",
"Bob Boozer",
"Elton Brand",
"Carl Braun",
"Bill Bridges",
"Junior Bridgeman",
"Fred Brown",
"Roger A. Brown",
"Kobe Bryant",
"Mack Calvin",
"Elden Campbell",
"Austin Carr",
"Joe Barry Carroll",
"Vince Carter",
"Bill Cartwright",
"Sam Cassell",
"Tom Chambers",
"Wilt Chamberlain",
"Maurice Cheeks",
"Archie Clark",
"Derrick Coleman",
"Bob Cousy",
"Dave Cowens",
"Terry Cummings",
"Billy Cunningham",
"Dell Curry",
"Lou Dampier",
"Bob Dandridge",
"Mel Daniels",
"Adrian Dantley",
"Brad Daugherty",
"Baron Davis",
"Walter Davis",
"Dave Debusschere",
"Vlade Divac",
"John Drew",
"Clyde Drexler",
"Joe Dumars",
"Tim Duncan",
"James Edwards",
"Sean Elliott",
"Dale Ellis",
"Leroy Ellis",
"Wayne Embry",
"Alex English",
"Julius Erving",
"Julius Erving",
"Patrick Ewing",
"Michael Finley",
"Vern Fleming",
"Sleepy Floyd",
"Larry Foust",
"Steve Francis",
"Walt Frazier",
"Donnie Freeman",
"World Free",
"Kevin Garnett",
"Pau Gasol",
"George Gervin",
"Armen Gilliam",
"Kendall Gill",
"Artis Gilmore",
"Mike Gminski",
"Gail Goodrich",
"Horace Grant",
"A.c. Green",
"Johnny Green",
"Hal Greer",
"Darrell Griffith",
"Richie Guerin",
"Cliff Hagan",
"Happy Hairston",
"Richard Hamilton",
"Anfernee Hardaway",
"Tim Hardaway",
"Derek Harper",
"Ron Harper",
"Al Harrington",
"John Havlicek",
"Hersey Hawkins",
"Elvin Hayes",
"Spencer Haywood",
"Tom Heinsohn",
"Grant Hill",
"Jeff Hornacek",
"Allan Houston",
"Juwan Howard",
"Bailey Howell",
"Lou Hudson",
"Zydrunas Ilgauskas",
"Dan Issel",
"Dan Issel",
"Allen Iverson",
"Jim Jackson",
"Mark Jackson",
"LeBron James",
"Antawn Jamison",
"Richard Jefferson",
"Dennis Johnson",
"Eddie Johnson",
"Eddie A. Johnson",
"John Johnson",
"Joe Johnson",
"Kevin Johnson",
"Larry Johnson",
"Magic Johnson",
"Marques Johnson",
"Mickey Johnson",
"Neil Johnston",
"Stew Johnson",
"Vinnie Johnson",
"Eddie Jones",
"Jimmy Jones",
"Sam Jones",
"Steve Jones",
"Michael Jordan",
"Shawn Kemp",
"Johnny Kerr",
"Jerome Kersey",
"Jason Kidd",
"Bernard King",
"Billy Knight",
"Sam Lacey",
"Christian Laettner",
"Bill Laimbeer",
"Bob Lanier",
"Rudy Larusso",
"Lafayette Lever",
"Freddie Lewis",
"Rashard Lewis",
"John Long",
"Kevin Loughery",
"Bob Love",
"Clyde Lovellette",
"Jerry Lucas",
"Maurice Lucas",
"Ed Macauley",
"Corey Maggette",
"Dan Majerle",
"Jeff Malone",
"Karl Malone",
"Moses Malone",
"Danny Manning",
"Pete Maravich",
"Stephon Marbury",
"Jack Marin",
"Shawn Marion",
"Donyell Marshall",
"Jamal Mashburn",
"Cedric Maxwell",
"Vernon Maxwell",
"Bob McAdoo",
"Xavier McDaniel",
"Antonio McDyess",
"Tracy McGrady",
"Kevin McHale",
"Derrick McKey",
"George Mikan",
"Vern Mikkelsen",
"Andre Miller",
"Reggie Miller",
"Mike Mitchell",
"Cuttino Mobley",
"Sidney Moncrief",
"Earl Monroe",
"Alonzo Mourning",
"Chris Mullin",
"Jeff Mullins",
"Calvin Murphy",
"Dikembe Mutombo",
"Larry Nance",
"Steve Nash",
"Calvin Natt",
"Willie Naulls",
"Don Nelson",
"Mike Newlin",
"Johnny Newman",
"Norm Nixon",
"Dirk Nowitzki",
"Charles Oakley",
"Lamar Odom",
"Don Ohl",
"Hakeem Olajuwon",
"Jermaine O'neal",
"Shaquille O'neal",
"Robert Parish",
"Tony Parker",
"Jim Paxson",
"Gary Payton",
"Sam Perkins",
"Chuck Person",
"Bob Pettit",
"Paul Pierce",
"Ricky Pierce",
"Scottie Pippen",
"Terry Porter",
"Mark Price",
"Michael Redd",
"Willis Reed",
"Robert Reid",
"Glen Rice",
"Jason Richardson",
"Mitch Richmond",
"Alvin Robertson",
"Oscar Robertson",
"Clifford T. Robinson",
"Clifford R.  Robinson",
"David Robinson",
"Glenn Robinson",
"Truck Robinson",
"Guy Rodgers",
"Jalen Rose",
"Dan Roundfield",
"Bill Russell",
"Cazzie Russell",
"Dolph Schayes",
"Detlef Schrempf",
"Byron Scott",
"Ray Scott",
"Bill Sharman",
"Purvis Short",
"Gene Shue",
"Jack Sikma",
"Paul Silas",
"Jerry Sloan",
"Bingo Smith",
"Joe Smith",
"Randy Smith",
"Steve Smith",
"Rik Smits",
"Dick Snyder",
"Ricky Sobers",
"Latrell Sprewell",
"Jerry Stackhouse",
"John Starks",
"John Stockton",
"Peja Stojakovic",
"Damon Stoudamire",
"Rod Strickland",
"Jason Terry",
"Reggie Theus",
"Isiah Thomas",
"David Thompson",
"Mychal Thompson",
"Otis Thorpe",
"Nate Thurmond",
"Wayman Tisdale",
"Rudy Tomjanovich",
"Kelly Tripucka",
"Jack Twyman",
"Wes Unseld",
"Dick Van Arsdale",
"Tom Van Arsdale",
"Kiki Vandeweghe",
"Nick Van Exel",
"Antoine Walker",
"Chet Walker",
"Jimmy Walker",
"Rasheed Wallace",
"Clarence Weatherspoon",
"Chris Webber",
"Scott Wedman",
"David Wesley",
"Jerry West",
"Paul Westphal",
"Jojo White",
"Sidney Wicks",
"Jamaal Wilkes",
"Lenny Wilkens",
"Dominique Wilkins",
"Gerald Wilkins",
"Buck Williams",
"Gus Williams",
"Herb Williams",
"Kevin Willis",
"Ray Williams",
"Brian Winters",
"Mike Woodson",
"Orlando Woolridge",
"James Worthy"
];
$( "#tags" ).autocomplete({
source: availableTags
});
});
</script>


    	
<script type="text/javascript">
 $( document ).ready(function() {

	    $('#uploadSolr').click(function(){
	    	var url = $("#tags").val();

	    	window.location = "jaxrs/generic/uploadJson2Solr/"+url;
	    });    
	    
	    $('#queryId').click(function(){ 
	    	var url = $("#tags").val();
			alert(url);
	    	//window.location = "jaxrs/generic/queryId/"+"\""+url+"\"";
	    	var J = "http://134.193.136.127:8983/solr/collection1_shard1_replica1/select?q=id%3A%22"+url+"%22&wt=json";
		    var marker;
		    alert(J);
		    $.getJSON(J,function(result){
				alert(result);
		        //$("div").append(JSON.stringify(result) + " ");
		    });
		//alert(result);    
	    });    
	    
	    $('#getSong').click(function(){ 
	    	var song  = $("#tags").val();
			alert(song);
	    	//window.location = "jaxrs/generic/queryId/"+"\""+url+"\"";
	    	var S = "http://api.musixmatch.com/ws/1.1/track.search?apikey=ad80e662a303ac0d66dc8447be31626b&q_lyrics="+song	;
			alert(S);
		    var marker;
		    $.getJSON(S,function(res){
				alert(result);
		        $("div").append(JSON.stringify(res) + " ");
			
		    });
		//alert(res);    
    	});    	    
	    
 	});        

</script>    	
  </head>
  <body>
  <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="brand" href="#">Hackathon</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="index.jsp">Home</a></li>
            </ul>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>
<br/>
<br/>
<div class="container">  
    <center><h1>NBA Stars</h1></center>
    
    <div>
    <p>
    Type an NBA star's name: 
    </p>
    <label for="tags">Player:</label>
    <input id="tags"/>
	<button id="queryId">Get Stats</button>    	
    <label for="sngs">Search for songs this player's been mentioned in:</label>
	<button id="getSong">Get Songs</button>    	

    </div>
    <hr/>

    </div>    
    
 	<script src="bootstrap/js/bootstrap.min.js"></script>

  </body>
</html> 
