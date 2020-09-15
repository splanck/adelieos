# sg_vpd
# Autogenerated from man page /usr/share/man/man8/sg_vpd.8.gz
complete -c sg_vpd -s a -l all --description 'decode all VPD pages.'
complete -c sg_vpd -s e -l enumerate --description 'list the names of the known VPD pages, first the standard pages (i. e.'
complete -c sg_vpd -s E -l examine --description 'scan part of all of the VPD space (from 0x0 to 0xff) and output any pages fou…'
complete -c sg_vpd -s f -l force --description 'As a sanity check, the normal action when fetching VPD pages other than page …'
complete -c sg_vpd -s h -l help --description 'outputs the usage message summarizing command line options then exits.'
complete -c sg_vpd -s H -l hex --description 'outputs the requested VPD page in ASCII hexadecimal.'
complete -c sg_vpd -s i -l ident --description 'decode the device identification (0x83) VPD page.'
complete -c sg_vpd -s I -l inhex --description 'FN is expected to be a file name (or \'-\' for stdin) which contains ASCII hexa…'
complete -c sg_vpd -s l -l long --description 'when decoding some VPD pages, give a little more output.'
complete -c sg_vpd -s m -l maxlen --description 'where LEN is the (maximum) response length in bytes.'
complete -c sg_vpd -s p -l page --description 'where PG is the VPD page to be decoded or output.'
complete -c sg_vpd -s q -l quiet --description 'suppress the amount of decoding output.'
complete -c sg_vpd -s r -l raw --description 'if not used with --inhex=FN then output requested VPD page in binary.'
complete -c sg_vpd -s M -l vendor --description 'where VP is a vendor (e. g.  "sea" for Seagate) or vendor/product acronym (e.'
complete -c sg_vpd -s v -l verbose --description 'increases the level or verbosity.'
complete -c sg_vpd -s V -l version --description 'print out version string then exit.'

