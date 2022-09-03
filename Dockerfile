FROM public.ecr.aws/bitnami/node:14.20.0

COPY . .

RUN npm install --omit=dev

ENV MODE="development"
CMD node -e 'require("./index").lambdaHandler()' MODE=${MODE}