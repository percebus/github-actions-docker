FROM node:23 AS base

FROM base AS project
WORKDIR /usr/project
COPY . .
RUN ls -la

FROM project AS dev
RUN echo "base > dev"

FROM dev AS tested
RUN echo "base > dev > tested"

FROM dev AS dist
RUN echo "base > dev > dist"


FROM project AS release
RUN echo "base > release"

FROM release AS final
RUN echo "base > release > final"
