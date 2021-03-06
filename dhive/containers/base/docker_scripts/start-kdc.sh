#! /bin/bash

source /common.sh

/usr/sbin/kdb5_util -P changeme create -s


## password only user
/usr/sbin/kadmin.local -q "addprinc  -randkey random_user"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/random_user.keytab random_user"

/usr/sbin/kadmin.local -q "addprinc -randkey HTTP/server.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/server.keytab HTTP/server.example.com"

/usr/sbin/kadmin.local -q "addprinc -randkey hdfs/nn.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey HTTP/nn.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey yarn/nn.example.com"

/usr/sbin/kadmin.local -q "addprinc -randkey hdfs/dn1.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey HTTP/dn1.example.com"

/usr/sbin/kadmin.local -q "addprinc -randkey hdfs/rm.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey HTTP/rm.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey yarn/rm.example.com"


/usr/sbin/kadmin.local -q "addprinc -randkey hdfs/nm1.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey HTTP/nm1.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey yarn/nm1.example.com"

/usr/sbin/kadmin.local -q "addprinc -randkey hdfs/hs2.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey hive/hs2.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey hive_meta/hs2.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey HTTP/hs2.example.com"

/usr/sbin/kadmin.local -q "addprinc -randkey hdfs/hm.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey hive/hm.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey hive_meta/hm.example.com"

/usr/sbin/kadmin.local -q "addprinc -randkey admin/ranger.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey hive/ranger.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey HTTP/ranger.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey lookup/ranger.example.com"

/usr/sbin/kadmin.local -q "addprinc -randkey hive/llap.example.com"
# Needed for llap
/usr/sbin/kadmin.local -q "addprinc -randkey hive/nm1.example.com"

/usr/sbin/kadmin.local -q "addprinc -randkey zookeeper/zk1.example.com"
/usr/sbin/kadmin.local -q "addprinc -randkey hive/zk1.example.com"

# This is a random user who we are giving a keytab. He could be wherever but he'll be in hs2
/usr/sbin/kadmin.local -q "addprinc -randkey whoever/hs2.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hdfs/nn.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab HTTP/nn.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab yarn/nn.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive/nn.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive_meta/nn.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hdfs/dn1.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab HTTP/dn1.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hdfs/rm.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab HTTP/rm.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab yarn/rm.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hdfs/nm1.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab HTTP/nm1.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab yarn/nm1.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hdfs/hs2.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive/hs2.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive_meta/hs2.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab HTTP/hs2.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hdfs/hm.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive/hm.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive_meta/hm.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab admin/ranger.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive/ranger.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab HTTP/ranger.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab lookup/ranger.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive/llap.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive/nm1.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab zookeeper/zk1.example.com"
/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab hive/zk1.example.com"

/usr/sbin/kadmin.local -q "ktadd -k /var/keytabs/hdfs.keytab whoever/hs2.example.com"


chown hdfs /var/keytabs/hdfs.keytab


keytool -genkey -alias nn.example.com -keyalg rsa -keysize 1024 -dname "CN=nn.example.com" -keypass changeme -keystore /var/keytabs/hdfs.jks -storepass changeme
keytool -genkey -alias dn1.example.com -keyalg rsa -keysize 1024 -dname "CN=dn1.example.com" -keypass changeme -keystore /var/keytabs/hdfs.jks -storepass changeme

chmod 700 /var/keytabs/hdfs.jks
chown hdfs /var/keytabs/hdfs.jks


krb5kdc -n
