FROM tomcat:8-jre8-alpine
RUN echo "151.101.72.249 dl-cdn.alpinelinux.org" >> /etc/hosts && \
	rm -rf /usr/local/tomcat/webapps/* && \
	apk add --no-cache tzdata ttf-dejavu && \
	cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
	echo "Asia/Shanghai" > /etc/timezone && \
	apk del tzdata
