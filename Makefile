# release v2019.09.03.01
FACEBOOK_COMMIT_SHA=07bab57e7eeb4814969db6b6fda5a5f8561612f9

all:
	echo "Hoi"

install_buck: 
	curl --progress-bar https://jitpack.io/com/github/facebook/buck/${FACEBOOK_COMMIT_SHA}/buck-${FACEBOOK_COMMIT_SHA}.pex --output tools/buck.pex
	chmod u+x tools/buck.pex
