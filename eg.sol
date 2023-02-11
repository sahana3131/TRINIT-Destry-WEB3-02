// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract HealthcareRepository {
    struct HealthcareProfessional {
        string name;
        string qualifications;
        string certificationDetails;
    }

    mapping (address => HealthcareProfessional) healthcareProfessionals;

    function addHealthcareProfessional(
        string memory _name,
        string memory _qualifications,
        string memory _certificationDetails
    ) public {
        healthcareProfessionals[msg.sender] = HealthcareProfessional(_name, _qualifications, _certificationDetails);
    }

    function updateHealthcareProfessional(
        string memory _name,
        string memory _qualifications,
        string memory _certificationDetails
    ) public {
        healthcareProfessionals[msg.sender] = HealthcareProfessional(_name, _qualifications, _certificationDetails);
    }

    function getHealthcareProfessional(address _address) public view returns (
        string memory,
        string memory,
        string memory
    ) {
        HealthcareProfessional storage healthcareProfessional = healthcareProfessionals[_address];
        return (healthcareProfessional.name, healthcareProfessional.qualifications, healthcareProfessional.certificationDetails);
    }
}
