# Create a native segwit address and get the public key from the address.
bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32"
bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo $(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "" "bech32") | grep pubkey
