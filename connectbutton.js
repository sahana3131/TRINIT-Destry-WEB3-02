import React from "react";
import Web3Connect from "web3connect";

const ConnectButton = () => {
  const handleConnect = (provider) => {
    const web3 = new Web3(provider);
  };

  const handleClose = () => {
    console.log("Web3Connect Modal Closed");
  };

  return (
    <Web3Connect.Button
      providerOptions={{
        portis: {
          id: "PORTIS_ID",
          network: "mainnet"
        },
        fortmatic: {
          key: "FORTMATIC_KEY",
          network: "mainnet"
        }
      }}
      onConnect={handleConnect}
      onClose={handleClose}
    />
  );
};

export default ConnectButton;
