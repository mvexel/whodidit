FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
  libxml2-dev \
  cpanminus \
  curl \
  git \
  apache2
# Install Perl requirements
RUN cpanm DBIx::Simple LWP::Simple XML::LibXML::Reader Devel::Size
