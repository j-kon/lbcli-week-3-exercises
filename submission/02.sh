# Create a native segwit address and get the public key from the address.
SEGWIT_ADDR=$(bitcoin-cli -regtest -rpcwallet=btrustwallet getnewaddress "label" "bech32")
bitcoin-cli -regtest -rpcwallet=btrustwallet getaddressinfo "$SEGWIT_ADDR" | grep "pubkey" | cut -d':' -f2 | tr -d ' ,"'
