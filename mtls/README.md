## mTLS

The point is that PeerAuthentication defines what the destination service requires from the client (e.g. must provide a client cert).

The destination rule controls what the client side will provide.

So if a PeerAuthentication requires strict mode, the DestinationRule must provide a certificate (using tls mode MUTUAL or ISTIO_MUTUAL).

If the PeerAuthentication is permissive, the DestinationRule may provide a certificate but is not required to.