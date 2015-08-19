#!/bin/bash
# this generates the taniumpy/ dir under ../pytan/
# this uses the taniumpy github repo, and should not be done unless you are absolutely sure
# you know you want to!!!!!
script="${0}"
myscript=`basename "${script}"`
mydir=`dirname "${script}"`
mydir=`cd "${mydir}" ; pwd`
rootdir=`cd "${mydir}"/../ ; pwd`
taniumpydir=`cd "${rootdir}"/../taniumpy ; pwd`

echo "Generating taniumpy API at: -o ${TMPDIR}/api"
${taniumpydir}/BUILD/generate_api.py -i ${rootdir}/doc/console.wsdl -o ${TMPDIR} -f

echo ""
echo "Differences between ${TMPDIR}/api and ${rootdir}/lib/taniumpy:"
diff -urq ${TMPDIR}/api ${rootdir}/lib/taniumpy
echo ""

echo "Are you sure you want to re-generate ${rootdir}/lib/taniumpy?? See above for differences. Press any key to continue, or control-C to cancel!!"
read -n 1 -s

rm -rf ${rootdir}/lib/taniumpy
mv ${TMPDIR}/api ${rootdir}/lib/taniumpy
echo "Moved ${TMPDIR}/api to ${rootdir}/lib/taniumpy"
