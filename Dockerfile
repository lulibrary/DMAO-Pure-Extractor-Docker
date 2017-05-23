FROM dmaonline/ruby-base:2.3.1

RUN groupadd -r pure && useradd -r -g pure pure

ENV DATA_ROOT /dmao-data
ENV APP_ROOT /dmao-extractor
RUN mkdir -p $DATA_ROOT
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

RUN gem install pure-extractor -v 1.1.0

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
