# nvme-resv-report
# Autogenerated from man page /usr/share/man/man1/nvme-resv-report.1.gz
complete -c nvme-resv-report -s n -l namespace-id --description 'Retrieve the reservation report structure for the given nsid.'
complete -c nvme-resv-report -s d -l numd --description 'Specify the number of Dwords of the Reservation Status structure to transfer.'
complete -c nvme-resv-report -s c -l cdw11 --description 'The value for command dword 11.'
complete -c nvme-resv-report -s b -l raw-binary --description 'Print the raw buffer to stdout.  Structure is not parsed by program.'
complete -c nvme-resv-report -s o -l output-format --description 'Set the reporting format to normal, json, or binary.'

