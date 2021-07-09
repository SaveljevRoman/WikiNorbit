FROM fluent/fluentd:edge-debian-onbuild

USER root

RUN fluent-gem install elasticsearch -v 7.5
RUN fluent-gem install elasticsearch-transport -v 7.5.0
RUN fluent-gem install fluent-plugin-elasticsearch -v 1.13.0 --no-rdoc --no-ri

RUN buildDeps="sudo make gcc g++ libc-dev ruby-dev" \
    && apt-get update \
    && apt-get install -y --no-install-recommends htop $buildDeps \
    && sudo gem install elasticsearch -v 7.5 \
    && sudo gem install elasticsearch-transport -v 7.5.0 \
    && sudo gem install fluent-plugin-elasticsearch -v 1.13.0 --no-rdoc --no-ri \
    && sudo gem install fluent-plugin-input-gelf gelf fluent-plugin-elasticsearch fluent-plugin-mongo-slow-query strptime \
    && sudo gem sources --clear-all \
    && SUDO_FORCE_REMOVE=yes \
        apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false $buildDeps \
    && rm -rf /var/lib/apt/lists/* /home/fluent/.gem/ruby/2.3.0/cache/*.gem \
    && mkdir /var/log/apps \
    && chown fluent -R /var/log/apps

#RUN mv /var/lib/gems/2.3.0/gems/fluent-plugin-input-gelf-0.2.0/lib/fluent/plugin/in_gelf.rb /fluentd/plugins

USER fluent

EXPOSE 12201