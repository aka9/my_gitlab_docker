ARG JP_GITLAB_VERSION=9.1.4
FROM sameersbn/gitlab:${JP_GITLAB_VERSION}

ARG JP_GITLAB_VERSION=9.1.4

WORKDIR /home/git/gitlab

# gitlabの日本語化(https://github.com/ksoichiro/gitlab-i18n-patch)
## Copyright (c) 2014 Soichiro Kashima
## Licensed under MIT (https://github.com/ksoichiro/gitlab-i18n-patch/blob/master/LICENSE)

RUN apt-get update && apt-get install patch && apt-get clean

RUN wget "https://raw.githubusercontent.com/ksoichiro/gitlab-i18n-patch/master/patches/v${JP_GITLAB_VERSION}/app_ja.patch" && \
        patch -p1 < ./app_ja.patch