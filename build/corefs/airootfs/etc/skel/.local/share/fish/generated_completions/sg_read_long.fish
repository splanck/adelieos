# sg_read_long
# Autogenerated from man page /usr/share/man/man8/sg_read_long.8.gz
complete -c sg_read_long -s S -l 16 --description 'uses a SCSI READ LONG(16) command.'
complete -c sg_read_long -s c -l correct --description 'sets the \'CORRCT\' bit in the SCSI READ LONG command.'
complete -c sg_read_long -s h -l help --description 'output the usage message then exit.'
complete -c sg_read_long -s l -l lba --description 'where LBA is the logical block address of the sector to read.'
complete -c sg_read_long -s o -l out --description 'instead of outputting ASCII hex to stdout, send it in binary to the file call…'
complete -c sg_read_long -s p -l pblock --description 'sets the \'PBLOCK\' bit in the SCSI READ LONG command.'
complete -c sg_read_long -s r -l readonly --description 'opens the DEVICE read-only rather than read-write which is the default.'
complete -c sg_read_long -s v -l verbose --description 'increase the level of verbosity, (i. e.  debug output).'
complete -c sg_read_long -s V -l version --description 'print the version string and then exit.'
complete -c sg_read_long -s x -l xfer_len --description 'where BTL is the byte transfer length (default to 520).'

