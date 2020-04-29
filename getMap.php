<?php 
			

	class education	{

		private $activity;
		private $county;
		
		private $latitude;
		private $longitude;
		private $conn;
		private $tableName = "nema_image";

		
		function setActivity($activity) { $this->activity = $activity; }
		function getActivity() { return $this->activity; }

		function setCounty($county) { $this->county = $county; }
		function getCounty() { return $this->county; }

		
		function setLat($lat) { $this->latitude = $latitude; }
		function getLat() { return $this->latitude; }

		function setLng($lng) { $this->longitude = $longitude; }
		function getLng() { return $this->longitude; }

		public function __construct() {
			require_once('mapDBConnect.php');
			$conn = new DbConnect;
			$this->conn = $conn->connect();
		}

		public function getAllColleges() {
			$sql = "SELECT * FROM $this->tableName";
			$stmt = $this->conn->prepare($sql);
			$stmt->execute();
			return $stmt->fetchAll(PDO::FETCH_ASSOC);
		}
	}

?>