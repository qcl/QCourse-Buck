# release v2019.09.03.01
FACEBOOK_COMMIT_SHA=07bab57e7eeb4814969db6b6fda5a5f8561612f9

BUCK=tools/buck.pex

all:
	echo "Hoi"

build:
	${BUCK} build //App:QCourse

debug:
	$(BUCK) install //App:QCourse --run --simulator-name 'iPhone Xs'

install_buck: 
	curl --progress-bar https://jitpack.io/com/github/facebook/buck/${FACEBOOK_COMMIT_SHA}/buck-${FACEBOOK_COMMIT_SHA}.pex --output tools/buck.pex
	chmod u+x tools/buck.pex

kill_buckd:
	$(BUCK) killall

clean:
	rm -rf **/*.xcworkspace
	rm -rf **/*.xcodeproj
	rm -rf buck-out

project: clean
	${BUCK} project //App:QCourseWorkspace
	open -a Xcode App/QCourse.xcworkspace/
#	open QCourse/QCourse.xcworkspace/
#	Xcode 11 beta 6 failed to build while Xcode 11 beta 2 is okay, currently use Xcode 10 first
