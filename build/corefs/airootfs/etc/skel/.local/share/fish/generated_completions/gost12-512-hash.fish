# gost12-512-hash
# Autogenerated from man page /usr/share/man/man1/gost12-512-hash.1.gz
complete -c gost12-512-hash -l printf -l template --description 'To output all sums use the `-a\' option.'
complete -c gost12-512-hash -s c -l check --description 'Check hash files specified by command line.'
complete -c gost12-512-hash -s u -l update --description 'Update the hash file specified by the option.'
complete -c gost12-512-hash -s k -l check-embedded --description 'Verify files by crc32 sum embedded in their names.'
complete -c gost12-512-hash -l torrent --description 'Create a torrent file for each processed file.'
complete -c gost12-512-hash -s h -l help --description 'Help: print help screen and exit.'
complete -c gost12-512-hash -s V -l version --description 'Version: print version and exit.'
complete -c gost12-512-hash -s B -l benchmark --description 'Run benchmark for the selected hash algorithm(s).'
complete -c gost12-512-hash -s C -l crc32 --description 'CRC32: Select CRC32 checksum algorithm.'
complete -c gost12-512-hash -l crc32c --description 'CRC32C: Select CRC32C checksum algorithm.'
complete -c gost12-512-hash -l md4 --description 'MD4: Select MD4 hash function.'
complete -c gost12-512-hash -s M -l md5 --description 'MD5: Select MD5 hash function.'
complete -c gost12-512-hash -s H -l sha1 --description 'SHA1: Select SHA1 hash function.'
complete -c gost12-512-hash -l sha224 -l sha256 -l sha384 -l sha512 --description 'Select specified SHA2 hash function.'
complete -c gost12-512-hash -l sha3-224 -l sha3-256 -l sha3-384 -l sha3-512 --description 'Select specified SHA3 hash function.'
complete -c gost12-512-hash -l tiger --description 'Tiger: Select Tiger hash function.'
complete -c gost12-512-hash -s T -l tth --description 'TTH: Select DC++ TTH hash function.'
complete -c gost12-512-hash -l btih --description 'BTIH: Select BitTorrent Info Hash.'
complete -c gost12-512-hash -s A -l aich --description 'AICH: Select AICH hash function.'
complete -c gost12-512-hash -s E -l ed2k --description 'ED2K: Select eDonkey 2000 hash function.'
complete -c gost12-512-hash -s L -l ed2k-link --description 'eDonkey link: calculate and print eDonkey link.'
complete -c gost12-512-hash -s W -l whirlpool --description 'Whirlpool: Select Whirlpool hash function.'
complete -c gost12-512-hash -s G -l gost12-256 --description 'GOST-2012: Select 256-bit GOST R 34.'
complete -c gost12-512-hash -l gost12-512 --description 'GOST-2012: Select 512-bit GOST R 34.'
complete -c gost12-512-hash -l gost94 --description 'GOST-94: Select GOST R 34. 11-94, the deprecated Russian hash function.'
complete -c gost12-512-hash -l gost94-cryptopro --description 'GOST-94-CRYPTOPRO: Select the CryptoPro version of the deprecated Russian GOS…'
complete -c gost12-512-hash -l ripemd160 --description 'RIPEMD-160: Select RIPEMD-160 hash function.'
complete -c gost12-512-hash -l has160 --description 'HAS-160: Select HAS-160 hash function.'
complete -c gost12-512-hash -l snefru128 -l snefru256 --description 'SNEFRU: Select SNEFRU-128/256 hash function.'
complete -c gost12-512-hash -l edonr256 -l edonr512 --description 'EDON-R: Select EDON-R 256/512 hash function.'
complete -c gost12-512-hash -s a -l all --description 'Calculate all supported hash functions.'
complete -c gost12-512-hash -l list-hashes --description 'List names of all supported hash functions, one per line.'
complete -c gost12-512-hash -s r -l recursive --description 'Recursively process directories, specified by command line.'
complete -c gost12-512-hash -l file-list --description 'Process given file as a file-list.'
complete -c gost12-512-hash -s m -l message --description 'Calculate message digests of the given text message.'
complete -c gost12-512-hash -l follow --description 'Follow symbolic links when processing directories recursively.'
complete -c gost12-512-hash -s v -l verbose --description 'Be verbose.'
complete -c gost12-512-hash -s P -l percents --description 'Show percents, while calculating or checking sums.'
complete -c gost12-512-hash -l skip-ok --description 'Don\'t print OK messages for successfully verified files.'
complete -c gost12-512-hash -s i -l ignore-case --description 'Ignore case of filenames when updating crc files.'
complete -c gost12-512-hash -l speed --description 'Print per-file and the total processing speed.'
complete -c gost12-512-hash -s e -l embed-crc --description 'Rename files by inserting crc32 sum into name.'
complete -c gost12-512-hash -l embed-crc-delimiter --description 'Insert specified <delimiter> before a crc sum in the --embed-crc mode, defaul…'
complete -c gost12-512-hash -l path-separator --description 'Use specified path separator to display paths.'
complete -c gost12-512-hash -s q -l accept --description 'Set a comma-delimited list of extensions of the files to process.'
complete -c gost12-512-hash -l exclude --description 'Set a comma-delimited list of extensions of the files to exclude from process…'
complete -c gost12-512-hash -s t -l crc-accept --description 'Set a comma-delimited list of extensions of the hash files to verify.'
complete -c gost12-512-hash -l maxdepth --description 'Descend at most <levels> (a non-negative integer) levels of directories below…'
complete -c gost12-512-hash -s o -l output --description 'Set the file to output calculated message digests or verification results to.'
complete -c gost12-512-hash -s l -l log --description 'Set the file to log errors and verbose information to.'
complete -c gost12-512-hash -l openssl --description 'Specify which hash functions should be calculated using the OpenSSL library.'
complete -c gost12-512-hash -l gost-reverse --description 'Reverse bytes in hexadecimal output of a GOST hash functions.'
complete -c gost12-512-hash -l bt-batch --description 'Turn on torrent batch mode (implies torrent mode).'
complete -c gost12-512-hash -l bt-private --description 'Generate BTIH for a private BitTorrent tracker.'
complete -c gost12-512-hash -l bt-piece-length --description 'Set the piece length value for torrent file.'
complete -c gost12-512-hash -l bt-announce --description 'Add a tracker announce URL to the created torrent file(s).'
complete -c gost12-512-hash -l benchmark-raw --description 'Switch benchmark output format to be a machine-readable tab-delimited text wi…'
complete -c gost12-512-hash -l sfv --description 'Print message digests in the SFV (Simple File Verification) output format (de…'
complete -c gost12-512-hash -s g -l magnet --description 'Print message digests formatted as magnet links.'
complete -c gost12-512-hash -l bsd --description 'Use BSD output format.'
complete -c gost12-512-hash -l simple --description 'Use simple output format.'
complete -c gost12-512-hash -l hex --description 'Print message digests in hexadecimal format.'
complete -c gost12-512-hash -l base32 --description 'Print message digests in Base32 format.'
complete -c gost12-512-hash -l base64 --description 'Print message digests in Base64 format.'
complete -c gost12-512-hash -l uppercase --description 'Print message digests in upper case.'
complete -c gost12-512-hash -l lowercase --description 'Print message digests in lower case.'
complete -c gost12-512-hash -s p --description 'Format: print format string the standard output, interpreting `\' escapes and …'

