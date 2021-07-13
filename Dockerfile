FROM python:3.8-slim

LABEL maintainer="#dev_ops"

COPY .s3keyring.ini /
COPY entrypoint.sh /entrypoint.sh
RUN pip install awscli
RUN pip install s3keyring

ENTRYPOINT ["/entrypoint.sh"]

