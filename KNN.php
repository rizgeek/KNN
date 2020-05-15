<?php
/**
 * MUHAMMAD RIZKI
 * CREATE 15 MAY 2020
 * MOHON DIGUNAKAN SEBAGIK MUNGKIN
 */
class KNN
{
		public function koneksi()
		{
			$koneksi = mysqli_connect("localhost", "root", "", "data_mining");
			return $koneksi;
		}

		public function data()
		{
			$data = mysqli_query($this->koneksi(), "SELECT * FROM knn");
			return $data;
		}

		public function squareDistance($data,$cari)
		{
			$squareDistance = array();
			$index = 0;
			foreach ($data as $value) {
				$tmp = sqrt(pow(($value["x"] - $cari["x"]),2) + pow(($value["y"] - $cari["y"]),2) +pow(($value["z"] - $cari["z"]),2) );
				$squareDistance[$index++] = ["distance" => $tmp, "class" => $value["kelas"]];
			}
			return $squareDistance;
		}

		public function sortAndCountValue($data,$kValue)
		{	$GOOD = 0;
			$BAD = 0;
			sort($data);
			for($i = 0; $i< $kValue; $i++){
				if($data[$i]["class"] == "GOOD"){
					$GOOD++;
				}else{
					$BAD++;
				}
			}

			if($GOOD>$BAD){
				echo "GOOD";
			}else{
				echo "BAD";
			}
			
		}
}

$cari = array("x" => 1, "y" => 1, "z" => 3);
$knn = new KNN();
$knn->sortAndCountValue($knn->squareDistance($knn->data(), $cari),3);









