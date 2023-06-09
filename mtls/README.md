## mTLS

The point is that PeerAuthentication defines what the destination service requires from the client (e.g. must provide a client cert).

The destination rule controls what the client side will provide.

So if a PeerAuthentication requires strict mode, the DestinationRule must provide a certificate (using tls mode MUTUAL or ISTIO_MUTUAL).

If the PeerAuthentication is permissive, the DestinationRule may provide a certificate but is not required to.

# EXAMPLE
1. Peer Auth is STRICT MODE
The example we provided is app 1 is able to call app 2 because app 2 provide tls cert by add property in destination rule ISTIO_MUTUAL. 
But App2 cant make call to app1 since app1 destination rule not configured to provide tls cert by disabled it.