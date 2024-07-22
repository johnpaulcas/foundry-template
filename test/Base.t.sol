//SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import "forge-std/Test.sol";

struct Users {
    address payable admin;
    address payable alice;
    address payable eve;
}

contract Base_Test is Test {
    /*//////////////////////////////////////////////////////////////////////////
                                    VARIABLES
    //////////////////////////////////////////////////////////////////////////*/

    Users internal users;

    /*//////////////////////////////////////////////////////////////////////////
                                MODIFIERS
    //////////////////////////////////////////////////////////////////////////*/

    modifier whenCallerAdmin() {
        changePrank(users.admin);
        _;
    }

    modifier whenCallerAlice() {
        changePrank(users.alice);
        _;
    }

    modifier whenCallerEve() {
        changePrank(users.eve);
        _;
    }

    /*//////////////////////////////////////////////////////////////////////////
                                SET-UP FUNCTION
    //////////////////////////////////////////////////////////////////////////*/

    function setUp() public virtual {
        users = Users({
            admin: createUser("admin"),
            alice: createUser("alice"),
            eve: createUser("eve")
        });
    }

    /*//////////////////////////////////////////////////////////////////////////
                                    HELPERS
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev Generates a user,labels its address, and funds it with 100 ether
    function createUser(string memory name) internal returns (address payable) {
        address payable user = payable(makeAddr(name));
        vm.label({ account: user, newLabel: name });
        vm.deal({ account: user, newBalance: 100 ether });
        return user;
    }

    /// @dev Change contract `msg.sender` to `msgSender`
    function changePrank(address msgSender) internal override {
        vm.stopPrank();
        vm.startPrank(msgSender);
    }
}