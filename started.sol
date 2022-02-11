pragma solidity ^0.4.0; // Any version till 0.5.0
pragma experimental ABIEncderV2;

contract started{

	uint val; // int bez znaków, uint == uint256
	//int8, int16, ... int256;
	address userAddress; // adres zewnęcznego konta lub adres umowy 
	string public message;
	unit a;

	uint constant MS_IN_SEC = 1000; // stała

	uint power = a ** 3; // sześcian z a 											

	uint left a << 2; // przesunięcie binarne 


	function getValue() public returns(uint) {
		return val;
	}

	function setValue(uint newVal, string newMsg) public {
;
	}


	// FUNKCJA ZWRCAJĄCA DWIE WARTOŚCI

	function getValuesFirstWay(uint a) returns (uint b, uint c) { // nazwy wypów zwracanych są opcjonalne
		return (a, a+1);
	}

	function getValuesSecondWay(uint a) returns (uint b, uint c) { // nazwy wypów zwracanych są opcjonalne
		b = a;
		c = a+1;
	}

	// MODYFIKATORY DOSTĘPU 

	function onlyFromOutside() external {;} // metoda może zoatać wykonana tylko z zewnątrz
	function accessibleFromAnywhere() public {;}

	function accessibleFromAnywhere() {;} // domyślnym modyfikatorem jest public

	function accessibleInternaly() private {;}
	function accessibleInternaly() internal {;}

	//POLA

 	uint public value; // tylko do odczytu z zewnąt (do modyfikacji trzeba urzyć setValue() )
	 uint internal value;
	 uint private value;

	 uint value; // domyślnym modyfikatorem jest private 

	function getValue() view returns(uint) {
		return val;
	}

	function sum(uint a, uint b) pure returns(uint) {

		return a + b;
	}


	// ZABEZPIECZENIA

	require(optionPos < optionCount); // if(false) wykonanie transakcji zostanie zatrzymane, a zmiany zostaną wycofane 
	require(optionPos < optionCount, "Invalid option"); // a gass zostanie wrócony

	assert(titalVotesNum == sumOfVotes); // przestanie realizować transakcję ale gass nie zostanie zwrócony

	if (optionPos >= optionCount) {
		revert(); // bezwarunkiwi idwraca transakcję, zwyle w bloku if, przywruci wszystkie zmiany, zatrzymuje transakcje i zwraca pozostały gass
		//Deprecated keyword (will be removed)
		throw; // przestarzała 
	}

	function methot() {

		msg.senter; // adres nadawcy transakcji 
		msg.value; // ilość etheru (wei) jaka zostałą wysłana z tą transakcją od tego nadawcy
		msg.data; 
		msg.sig // podpis - numeryczny identyfikator
		msg.gass; // pozostały gass dla tej transakcji (przestarzałe)

		// MAPPING

		//mapping ([key-type] => [value-type]) mapName;

		mapping (address => bool) hasVoted;

		mapping (string => uint) scoreFor;
		scoreFor["Adam"] = 1; // map.put("Adam", 1);

		uint userScore = scoreFor["Adam"]; // int userScore = map.get("Adam"), int userScore = map.get("Adam")

		uint userScore = scoreFor["non-existing-user"]; //0

		// WARTOŚCI DOMYŚLNE
		bool flag; // false
		uint num; // 0
		uint[] arr; // empty array
		string str; // " " (pusty ciąg, wię chyba jednak "")
	}

	//if ... else 

	string str1 = "abc";
	string str2 = "bcd";
	if (str == str2) {...} //NOt supported

	bytes[32] hash = keccak256(str); // Hash value

	if(keccak256(str1) == keccak256(str2)) { succesful}

	//STRUKTURY

	struct User {
		string name;
		string surname;
		uint8 age;
	}

	User user = User("John", "Doe", 35);

	User user = User({name: "John",surname: "Doe", age: 35});

	uint age = user.age;
	user.age = 26;

	// TYPY PAMIĘCI

	uint[] memory memoryArr = array;
	memoryArr[0] = 0; // modyfiles a copy;

	uint[] storage storageArr = array;
	storageArr[0] = 0; // MOdyfiels an orginal

// WYSYŁANIE płatnych kontraktów 

	// Called when ether is sent without a method

	function buyGadgets(uint gaddetsNum) payable {

			//check send amount
		require(msg.value > 1000)
		// payment is accepted

		//FUNKCJA REZERWOWA DO ODBIERANIA PŁATNOŚCI 
		function () payable {
			require(smg.value > 100);

			address addr = msg.sender;
			uint accountBalance = addr.balance;
			 //contract's balance
			 address(this).balance;

			 // Recerts execution if fails
			 addr.transfer(1000); // weis not ether
			 // Returns "false" if fails
			 bool succeeses = addr.send(1000);
			 // Should check return value!
			 
		}
	}

	modifier isOwner {
		require(msg.sender == owner);
		_;
	}
	string verb;

		event nazwaEventu(string _message, address _user); // wywoładnie eventów nas nic nie kosztuje


	function usingMofifier(newVerb) public isOwner returns(string) {

		verb = newVal;

		emit nazwaEventu("Adres użytkownika to ", msg.sender);

		return verb;
	}

	string internal domyslnyModyfikator;
}

contract Foo {

	uint deadline = ...; // Time im seconds

	function checkTime() {
		 uint currentTime = block.timestamp;
		 require(currentTime < deadline);
		 uint currentTime = noe; // Alias for "block.timestamp"

		 uint oneSecond = 1 seconds;
		 uint oneHour = 60 minutes;
		 uint oneWeek = 7 days;

		 
	}

	function method() {

		block.timestamp; // Block timestamp
		block.difficulty; // aktualny poziom trudności bloku
		block.gaslimit;
		block.numer; // block number
		block.coinbase // Miner's address
	}

	function convertToSeconds(uint mins) returns (uint) {
		 uint inSeconds = mins minutes; // NOT allowed
		 uint inSeconds = mins * 1 minute; // Use instead

	}

			uint v1 = 10 wei	
		uint v2 = finney;
		uint v3 = ether;

		function convertToWei(uint sumInTth )  returns(uint) {
			return sumInEth * 1 ether;
		}
	
} 

contract ExampleOfEnum {

	enum AuctionState {
		NotStarted,
		Ongoing,
		Finished
	}

	AuctionState currentState = AuctionState.Ongoing;

	require(currentState != AuctionState.Finished);
}