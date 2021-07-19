run:
	hugo server -v -D --bind="0.0.0.0" --port=31313

build:
	hugo -D

build_commit_blog:
	{
		git pull origin master ;\
		git submodule update --init --force --remote ;\
		time=`date +%Y-%m-%d` ;\
		msg="rebuild blog at $time" ;\
		if [ $# -eq 1]; then ;\
			msg=$1 ;\
		fi ;\
		git commit -m "$msg" ;\
		git push origin master ;\
	}
