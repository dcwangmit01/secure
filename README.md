

```

Usage: secure encrypt
       secure decrypt
       secure genkeys
       secure loadkeys
       secure deps
       secure usage

Arguments:
  none
Options:
  -h --help  help

GPG can be used to do multi-party encryption/decryption.  For example,
you can encrypt a file which several parties may decrypt using their
own private keys.  Here's how to do it using this wrapper tool.

* Before you start, ensure you have gpg installed
  - On Centos6: yum -y install gpg
  - On Ubuntu: apt-get -y install gpg
  - On OSX: brew install gpg
* First, generate your own gpg keys
  - secure genkeys
* Then, load other people's public keys, which you will use to encrypt.
  - secure loadkeys
* Name any directory or file that you wish to encrypt with the
  ".private" extension suffix.
* Make sure to add "*.private" to .gitignore
* Check in the file, as well as your new public key
  - git add ./secure/gpgkeys/you@domain.com.gpg
  - git add ./secure/encrypted/you.enc
* Now, anyone who had previously added their public gpg in
  ./secure/gpgkeys should be able to decrypt the new file, using their
  own public key, using the command:
  - secure decrypt

```
