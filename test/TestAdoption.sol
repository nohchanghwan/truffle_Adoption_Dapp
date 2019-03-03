pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";
//Assert는 테스트에서 통과 실패 반환 등 여부확인용
//Deployed는 디플로이된 컨트랙트 주소가져옴

contract TestAdoption {
    Adoption adoption = Adoption(DeployedAddresses.Adoption());
    
    uint expectedPetId = 8;
    address expectedAdopter = address(this);

    //테스트 Adoption 함수
    function testUserCanAdoptPet() public {
        uint returnedId = adoption.adopt(expectedPetId);
        Assert.equal(returnedId,expectedPetId, "결과1");
    }

    // 입양한 펫 소유자 검색
    function testGetAdopterAddressByPetId() public {
        address adopter = adoption.adopters(expectedPetId);

        Assert.equal(adopter, expectedAdopter, "결과2");
    }

    //모든 애완동물 소유자 검색
    function testGetAdopterAddressByPetIdInArray() public {
        address[16] memory adopters = adoption.getAdopters();

        Assert.equal(adopters[expectedPetId], expectedAdopter, "결과3");
    }
}
