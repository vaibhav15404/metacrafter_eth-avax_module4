Our goal in this project is to develop an ERC20 token and introduce it to the Avalanche network. 
The following features ought to be included in the smart contract:

Minting new tokens: The platform should be able to create new tokens and distribute them to players as rewards. Only the owner can mint tokens.
Transferring tokens: Players should be able to transfer their tokens to others.
Redeeming tokens: Players should be able to redeem their tokens for items in the in-game store.
Checking token balance: Players should be able to check their token balance at any time.
Burning tokens: Anyone should be able to burn tokens, that they own, that are no longer needed.
Setting avalnche network on metamask
Go to networks in account section and add avalanche network in custom network by entering following details:

Network Name: Fuji Testnet
New RPC URL: https://api.avax-test.network/ext/bc/C/rpc
Chain ID: 43113
Symbol (optional): AVAX
Block Explorer URL (optional): https://cchain.explorer.avax-test.network/
connecting and deploying contract to metamask
Write your code on remix
Go to deploy and run transaction and change environment to injected provider metamask.
Enter metamask password and it will get connected
For minting ,burning and redeeming we first deploy the contract and after that we have to approve on the metamask.Then this funtion will get executed.
Transfering avax tokens for testing transaction
For testing transactions we need some tokens in our account and we have to go to faucet and enter our metamask account address and transfer erc20 avax tokens.

Now deploy contract on remix and you will get notification to approve on metamask. After that go to snow trace testnet and put deployed contract address to verify your transaction.

Author
Vaibhav Rajput










