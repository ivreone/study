# Which Java versions can be used to run Jenkins
JAVA_ALLOWED_VERSIONS=( "18" "110" )
# Work out the JAVA version we are working with:

JAVA=`type -p java`
JAVA_VERSION=$($JAVA -version 2>&1 | sed -n ';s/.* version "\(.*\)\.\(.*\)\..*".*/\1\2/p;')
#JAVA_VERSION=$($JAVA -version 2>&1 | sed -n ';s/.* version "\(.*\)\.\(.*\)\..*".*/\1\2/p;')
echo $JAVA_VERSION
JAVA_VERSION="11.0.9"
if [[ ${JAVA_ALLOWED_VERSIONS[*]} =~ "$JAVA_VERSION" ]]; then
    echo "Correct java version found" >&2
    echo $JAVA_VERSION
else
    echo "Found an incorrect Java version" >&2
    echo "Java version found:" >&2
    echo $($JAVA -version) >&2
    echo "Aborting" >&2
    exit 1
fi

