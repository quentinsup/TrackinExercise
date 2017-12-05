<!doctype html>
<html lang="fr">
<head>

	<meta charset="utf-8">
	<title>Trackin Exercise</title>

	<link rel="stylesheet" href="resources/assets/vendor/jquery-ui/jquery-ui-1.12.1.structure.min.css">
	<link rel="stylesheet" href="resources/assets/vendor/bootstrap/bootstrap-grid.min.css">
	<link rel="stylesheet" href="resources/assets/vendor/animate/animate.css">
	<link rel="stylesheet" href="resources/assets/css/style.css">
	
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800" rel="stylesheet">

</head>
<body>

	<div id="search-box" class="animated fadeInDown">
		<input id="search-input" type="text" placeholder="Address" />
	</div>

	<div id="map"></div>

	<div id="waypoints">
		<ul>
			<!-- ko foreach: waypoints -->
			<li>
				<a data-bind="click: function() { centerizeWayPoint($data) }">
					<!-- ko if: type() == 0 -->
					<img src="resources/assets/images/pickup-icon.png" width="25px" alt="pickup" />
					<!-- /ko -->
					<!-- ko if: type() == 1 -->
					<img src="resources/assets/images/dropoff-icon.png" width="25px" alt="dropoff" />
					<!-- /ko -->
					<span data-bind="text: label"></span>
					<span data-bind="click: function() { deleteWayPoint($data) }" class="close"></span>
				</a>
				<div class="waypoint_detail">
					<img src="resources/assets/images/distance-128.png" /><span data-bind="text: distanceInMiles()"></span> miles<br />
					<img src="resources/assets/images/duration.png" /><span data-bind="text: durationInMinutes()"></span> minutes
				</div>
			</li>
			<!-- /ko -->
		</ul>
	</div>

	<%-- resources --%>
	<script src="resources/assets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<script src="resources/assets/vendor/jquery-ui/jquery-ui-1.12.1.min.js"></script>
	<script src="resources/assets/vendor/jquery/jquery.appear.js"></script>
	<script src="resources/assets/vendor/knockout/knockout-3.4.2.min.js"></script>
	<%-- App --%>
	<script src="resources/assets/js/app.js"></script>

	<%-- Other --%>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAV-WGVIfG4yamTnCInxyJ24E3Uqmc92Zk&libraries=places&callback=onMapLoaded"></script>


</body>
</html>