***Solutions and lessons from ethernaut***

**Fallback** : The fallback function of this contract allows us to take ownership even though any one can access it, be careful with the logic you put in it...

**Fal1out** : Never trust comments when reviewing, the function under the comment is not actually a constructor, anyone can call it and reassign the owner. Best practice is using constructor() to define your constructors.

**Vault** : Private storage slots are not as private as you think, reading their value is a simple as `cast storage <ADDRESS> <SLOT>`.

**Telephone**: The condition to change the owner is to call the function `changeOwner` from a contract, that's what  `if (tx.origin != msg.sender)` means.

**Token**: This is a case of unsafe math, we can underflow the calculation in `require()` allowing to send more money than the account owns, then underflowing the `sender` account balance thus printing money for both the `sender` and `to` address. 

**Delegation**: We can simply call the `Delegation` contract with `pwn()` signature. The call will be forwarded with the player as `msg.sender`.

**Force**: We cannot prevent an attacker from self destroying and sending eth to a contract, thus we should not rely on the assumption that the balance cannot be altered.

**Magic Number**: The goal is to build a very small contract that returns 42. I used Huff to build the contract, no need to load the calldata meaning we only need 6 opcodes.