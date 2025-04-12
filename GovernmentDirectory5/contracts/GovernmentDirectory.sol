// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract GovernmentDirectory5 {
    struct Official {
        string name;
        string role;
        string contactInfo;
        uint level; // 0 = federal, 1 = state, 2 = local
    }

    Official[] public officials;

    function addOfficial(
        string memory _name,
        string memory _role,
        string memory _contactInfo,
        uint _level
    ) public {
        officials.push(Official(_name, _role, _contactInfo, _level));
    }

    function getOfficial(uint index) public view returns (
        string memory, string memory, string memory, uint
    ) {
        require(index < officials.length, "Index out of range");
        Official memory o = officials[index];
        return (o.name, o.role, o.contactInfo, o.level);
    }

    function getTotalOfficials() public view returns (uint) {
        return officials.length;
    }
}
