<?php
class Db
{
    private $dbServer = 'localhost';
    private $dbUser = 'wadhuaum_nizami';
    private $dbPassword = 'Xomt[OX!^~Q)';
    private $dbName = 'wadhuaum_wuxingpackaging'; 
    
function __construct()
{
$this->mysqli = new mysqli($this->dbServer,$this->dbUser,$this->dbPassword,$this->dbName);
// Check connection
if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
 }
}
//Data Insertion Function
	public function create($tableName, $Data =  array())
	{
	    $tableColumns = implode(',', array_keys($Data));
        $tableValues = implode("','", $Data);
        $query="INSERT INTO $tableName($tableColumns) VALUES('$tableValues')";
        $result = $this->mysqli->query($query);
	}
    public $sql;
    public function read($table,$rows="*",$where = null){ 
        if ($where != null) {
            $sql="SELECT $rows FROM $table WHERE $where";
        }else{
            $sql="SELECT $rows FROM $table";
        }

        return $this->mysqli->query($sql);
        }
    
    public function update($tableName,$Data=array(),$id){
        $valuesToBeUpdated = array();
        foreach ($Data as $key => $value) {
            $valuesToBeUpdated[] = "$key = '$value'"; 
        }
        $query="UPDATE  $tableName SET " . implode(',', $valuesToBeUpdated);
        $query .=" WHERE $id";
        $result = $this->mysqli->query($query);
        }
    public function delete($tableName,$id){
            $sql="DELETE FROM $tableName";
            $sql .=" WHERE $id ";
            $sql;
            $result = $this->mysqli->query($sql);
        }
        

        public function __destruct(){
            $this->mysqli->close();
        }
}
$a = new Db();
$username = 1;
$password = 2;
$data = 3;
//create
$a->create('testing', ['name' => $username, 'password'=>$password, 'data'=>$data]);

//read data
$result = $a->read("testing", "*");
while($row = mysqli_fetch_assoc($result)){
    echo $row['name'];
    echo $row['password'];
    echo $row['data'];
}
//update data
$a->update("testing", ["name"=>10, "password"=>10, "data"=>10], "id>3");

//Delete Data
$a->delete("testing", "id >5 && id<7");
?>