# mmcli
# Autogenerated from man page /usr/share/man/man1/mmcli.1.gz
complete -c mmcli -s h -l help --description 'Show summary of options by group.'
complete -c mmcli -l help-all --description 'Show all groups and options.'
complete -c mmcli -l help-manager --description 'Show manager specific options.'
complete -c mmcli -l help-common --description 'Show common options.'
complete -c mmcli -l help-modem --description 'Show modem specific options.'
complete -c mmcli -l help-3gpp --description 'Show 3GPP specific options.'
complete -c mmcli -l help-cdma --description 'Show CDMA specific options.'
complete -c mmcli -l help-simple --description 'Show simple options.'
complete -c mmcli -l help-location --description 'Show location or positioning specific options.'
complete -c mmcli -l help-messaging --description 'Show messaging specific options.  See also --help-sms which is related.'
complete -c mmcli -l help-time --description 'Show time specific options.'
complete -c mmcli -l help-firmware --description 'Show firmware specific options.'
complete -c mmcli -l help-oma --description 'Show OMA specific options.'
complete -c mmcli -l help-sim --description 'Show SIM card specific options.'
complete -c mmcli -l help-bearer --description 'Show bearer specific options.'
complete -c mmcli -l help-sms --description 'Show SMS specific options.  See also --help-messaging which is related.'
complete -c mmcli -s B -l get-daemon-version --description 'Retrieve the version of the currently running ModemManager daemon.'
complete -c mmcli -s G -l set-logging --description 'Set the logging level in ModemManager daemon.'
complete -c mmcli -s L -l list-modems --description 'List available modems.'
complete -c mmcli -s M -l monitor-modems --description 'List available modems and monitor modems added or removed.'
complete -c mmcli -s S -l scan-modems --description 'Scan for any potential new modems.'
complete -c mmcli -s I -l inhibit-device --description 'Inhibit the specific device from being used by ModemManager.'
complete -c mmcli -l report-kernel-event --description 'Manually report kernel events, instead of relying on udev (e. g.'
complete -c mmcli -l report-kernel-event-auto-scan --description 'When built with udev support but the daemon is running with.'
complete -c mmcli -l no-auto-scan --description 'events based on udev.'
complete -c mmcli -s m -l modem --description 'Specify a modem.'
complete -c mmcli -s b -l bearer --description 'Specify a bearer.'
complete -c mmcli -s i -l sim --description 'Specify a SIM card.'
complete -c mmcli -s s -l sms --description 'Specify an SMS.'
complete -c mmcli -s w -l monitor-state --description 'Monitor the state of a given modem.'
complete -c mmcli -s e -l enable --description 'Enable a given modem.'
complete -c mmcli -s d -l disable --description 'Disable a given modem.'
complete -c mmcli -s r -l reset --description 'Resets the modem to the settings it had when it was power cycled.'
complete -c mmcli -l factory-reset --description 'Resets the modem to its original factory default settings.'
complete -c mmcli -l command --description 'Send an AT COMMAND to the given modem.'
complete -c mmcli -l create-bearer --description 'Create a new packet data bearer for a given modem.'
complete -c mmcli -l delete-bearer --description 'Delete bearer from a given modem.'
complete -c mmcli -l set-allowed-modes --description 'Set allowed modes for a given modem.'
complete -c mmcli -l set-preferred-mode --description 'Set the preferred MODE for the given modem.'
complete -c mmcli -l set-current-bands --description 'Set bands to be used for a given modem.'
complete -c mmcli -l inhibit --description 'Inhibit the specific modem from being used by ModemManager.'
complete -c mmcli -l 3gpp-scan --description 'Scan for available 3GPP networks.'
complete -c mmcli -l 3gpp-register-home --description 'Request a given modem to register in its home network.'
complete -c mmcli -l 3gpp-register-in-operator --description 'Request a given modem to register on the network of the given MCCMNC (Mobile …'
complete -c mmcli -l 3gpp-ussd-status --description 'Request the status of ANY ongoing USSD session.'
complete -c mmcli -l 3gpp-ussd-initiate --description 'Request the given modem to initiate a USSD session with COMMAND.'
complete -c mmcli -l 3gpp-ussd-respond --description 'When initiating an USSD session, a RESPONSE may be needed by a network-origin…'
complete -c mmcli -l 3gpp-ussd-cancel --description 'Cancel an ongoing USSD session for a given modem.'
complete -c mmcli -l cdma-activate --description 'Activate the given modem using OTA (Over the Air) settings.'
complete -c mmcli -l simple-connect --description 'Run a full connection sequence using KEY / VALUE pairs.'
complete -c mmcli -l simple-disconnect --description 'Disconnect ALL connected bearers for a given modem.'
complete -c mmcli -l location-status --description 'Show the current status for discovering our location.'
complete -c mmcli -l location-get --description 'Show all location information available.'
complete -c mmcli -l location-enable-3gpp --description 'Enable location discovery using the 3GPP network.'
complete -c mmcli -l location-disable-3gpp --description 'Disable location discovery using the 3GPP network.'
complete -c mmcli -l location-enable-agps-msa --description 'Enable A-GPS (MSA) support.'
complete -c mmcli -l location-enable-gps-nmea --description '.'
complete -c mmcli -l location-disable-agps-msa --description 'Disable A-GPS (MSA) support.'
complete -c mmcli -l location-enable-agps-msb --description 'Enable A-GPS (MSB) support.'
complete -c mmcli -l location-disable-agps-msb --description 'Disable A-GPS (MSB) support.'
complete -c mmcli -l location-disable-gps-nmea --description 'Disable location discovery using GPS and NMEA traces.'
complete -c mmcli -l location-enable-gps-raw --description 'Enable location discovery using GPS and reported with raw (i. e.'
complete -c mmcli -l location-disable-gps-raw --description 'Disable location discovery using GPS and raw values.'
complete -c mmcli -l location-enable-cdma-bs --description 'Enable location discovery using the 3GPP2 network.'
complete -c mmcli -l location-disable-cdma-bs --description 'Disable location discovery using the 3GPP2 network.'
complete -c mmcli -l location-enable-gps-unmanaged --description 'Enable location discovery using GPS but without taking control of the NMEA tt…'
complete -c mmcli -l location-disable-gps-unmanaged --description 'Disable location discovery using GPS and unmanaged port.'
complete -c mmcli -l location-set-gps-refresh-rate --description 'Set the location refresh rate on the DBus interface to SEC seconds.'
complete -c mmcli -l location-set-supl-server -l location-set-supl-server --description 'Configure the location of the A-GPS SUPL server, either specifying the IP add…'
complete -c mmcli -l location-inject-assistance-data --description 'Inject assistance data into the GNSS module, loaded from a local file at PATH.'
complete -c mmcli -l location-set-enable-signal --description 'Enable reporting location updates via DBus property signals.'
complete -c mmcli -l location-set-disable-signal --description 'Disable reporting location updates via DBus property signals.'
complete -c mmcli -l messaging-status --description 'Show the status of the messaging support.'
complete -c mmcli -l messaging-list-sms --description 'List SMS messages available on a given modem.'
complete -c mmcli -l messaging-create-sms --description 'Create a new SMS on a given modem.'
complete -c mmcli -l messaging-create-sms-with-data --description 'Use PATH to a filename as the data to create a new SMS.'
complete -c mmcli -l messaging-delete-sms --description 'Delete an SMS from a given modem.'
complete -c mmcli -l time --description 'Display the current network time from the operator.'
complete -c mmcli -l voice-list-calls --description 'List calls managed (initiated, received, ongoing) on a given modem.'
complete -c mmcli -l voice-create-call --description 'Create a new outgoing call on a given modem.'
complete -c mmcli -l voice-delete-call --description 'Delete a call from a given modem.'
complete -c mmcli -l firmware-status --description 'Show firmware update specific details and properties.'
complete -c mmcli -l firmware-list --description 'List all the firmware images installed on a given modem.'
complete -c mmcli -l firmware-select --description 'Select a firmware image from those installed on a given modem.'
complete -c mmcli -l signal-setup --description 'Setup extended signal quality information retrieval at the specified rate (in…'
complete -c mmcli -l signal-get --description 'Retrieve the last extended signal quality information loaded.'
complete -c mmcli -l oma-status --description 'Show the status of the OMA device management subsystem.'
complete -c mmcli -l oma-start-client-initiated-session --description 'Request to start a client initiated session.'
complete -c mmcli -l oma-accept-network-initiated-session --description 'Request to accept a network initiated session.'
complete -c mmcli -l oma-reject-network-initiated-session --description 'Request to reject a network initiated session.'
complete -c mmcli -l oma-cancel-session --description 'Request to cancel current OMA session, if any.'
complete -c mmcli -l pin --description 'Send PIN code to a given SIM card.'
complete -c mmcli -l puk --description 'Send PUK code to a given SIM card.  This must be used WITH.'
complete -c mmcli -l enable-pin --description 'Enable PIN request for a given SIM card.  This must be used WITH.'
complete -c mmcli -l disable-pin --description 'Disable PIN request for a given SIM card.  This must be used WITH.'
complete -c mmcli -l change-pin --description 'Change the PIN for a given SIM card.  It will be set to PIN.'
complete -c mmcli -s c -l connect --description 'Connect to a given bearer.'
complete -c mmcli -s x -l disconnect --description 'Disconnect from a given bearer.'
complete -c mmcli -l send --description 'Send an SMS.'
complete -c mmcli -l store --description 'This option will store the SMS in the default storage defined by the modem, w…'
complete -c mmcli -l store-in-storage --description 'This option states which STORAGE to use for SMS messages.'
complete -c mmcli -l create-file-with-data --description 'This option takes an SMS that has DATA (not TEXT) and will create a local fil…'
complete -c mmcli -l start --description 'Initiate an outgoing call.'
complete -c mmcli -l accept --description 'Accept an incoming call.'
complete -c mmcli -l hangup --description 'Reject an incoming call or hangup an ongoing one.'
complete -c mmcli -l send-dtmf --description 'Send a DTMF sequence through an ongoing call.'
complete -c mmcli -s K -l output-keyvalue --description 'Run action with machine-friendly key-value output, to be used e. g.'
complete -c mmcli -s v -l verbose --description 'Perform actions with more details reported and/or logged.'
complete -c mmcli -s V -l version --description 'Returns the version of this program.'
complete -c mmcli -s a -l async --description 'Use asynchronous methods.'
complete -c mmcli -l timeout --description 'Use SECONDS for the timeout when performing operations with this command.'

