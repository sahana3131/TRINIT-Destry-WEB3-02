const contractAddress = '0x5B38Da6a701c568545dCfcB03FcB875f56beddC4'; // Replace with the deployed contract address
const abi = [
    {
        [
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_name",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_qualifications",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_certificationDetails",
				"type": "string"
			}
		],
		"name": "addHealthcareProfessional",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "address",
				"name": "_address",
				"type": "address"
			}
		],
		"name": "getHealthcareProfessional",
		"outputs": [
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "",
				"type": "string"
			}
		],
		"stateMutability": "view",
		"type": "function"
	},
	{
		"inputs": [
			{
				"internalType": "string",
				"name": "_name",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_qualifications",
				"type": "string"
			},
			{
				"internalType": "string",
				"name": "_certificationDetails",
				"type": "string"
			}
		],
		"name": "updateHealthcareProfessional",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
   ]
  }
]; 
const contract = new web3.eth.Contract(abi, contractAddress);

// Get the address of the healthcare professional you want to retrieve information for
const healthcareProfessionalAddress = '0x...';

contract.methods.getHealthcareProfessional(healthcareProfessionalAddress)
  .call()
  .then(function(result) {
    console.log(result);
    // Output: [name, qualifications, certificationDetails]
  });
