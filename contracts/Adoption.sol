pragma solidity ^0.4.17;

contract Adoption {
    
    //이더리움 Address 배열
    address[16] public adopters;

    //애완견 입양요청 함수
    function adopt(uint petId) public returns (uint) {
        
        //배열내에 ID가 있는지 확인
        require(petId >= 0 && petId <= 15);
        //범위내에 있으면 배열에 호출한 주소 추가
        adopters[petId] = msg.sender;
        
        return petId;
    }

    //전체배열반환
    function getAdopters() public view returns (address[16]){
        return adopters;
    }
}
