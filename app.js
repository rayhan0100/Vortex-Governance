const connectBtn = document.getElementById('connect-btn');
const userPower = document.getElementById('user-power');

async function connect() {
    if (window.ethereum) {
        const provider = new ethers.providers.Web3Provider(window.ethereum);
        const accounts = await provider.send("eth_requestAccounts", []);
        connectBtn.innerText = accounts[0].slice(0, 6) + "...";
        
        // Fetch Token Balance (Simulated for this demo)
        userPower.innerText = "1,250 VTX";
    }
}

async function castVote(isFor) {
    // In a real app, you'd trigger the contract 'vote' function here:
    // const tx = await contract.vote(proposalId, isFor);
    alert(isFor ? "Voted FOR" : "Voted AGAINST");
}

connectBtn.onclick = connect;
