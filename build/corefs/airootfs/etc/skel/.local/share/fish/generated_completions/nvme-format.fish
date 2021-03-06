# nvme-format
# Autogenerated from man page /usr/share/man/man1/nvme-format.1.gz
complete -c nvme-format -s n -l namespace-id --description 'Send the format command for the specified nsid.'
complete -c nvme-format -s l -l lbaf --description 'LBA Format: This field specifies the LBA format to apply to the NVM media.'
complete -c nvme-format -s b -l block-size --description 'Block Size: This field is used to specify the target block size to format to.'
complete -c nvme-format -s s -l ses --description 'Secure Erase Settings: This field specifies whether a secure erase should be …'
complete -c nvme-format -s p -l pil --description 'Protection Information Location: If set to \\(oq1\\(cq and protection informati…'
complete -c nvme-format -s i -l pi --description 'Protection Information: This field specifies whether end-to-end data protecti…'
complete -c nvme-format -s m -l ms --description 'Metadata Settings: This field is set to \\(oq1\\(cq if the metadata is transfer…'
complete -c nvme-format -s r -l reset --description 'Issue a reset after successful format.'
complete -c nvme-format -s f -l force --description 'Just send the command immediately without warning of the implications.'
complete -c nvme-format -s t -l timeout --description 'Override default timeout value.  In milliseconds.'

