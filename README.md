## Micronaut 4.9.2 Documentation

- [User Guide](https://docs.micronaut.io/4.9.2/guide/index.html)
- [API Reference](https://docs.micronaut.io/4.9.2/api/index.html)
- [Configuration Reference](https://docs.micronaut.io/4.9.2/guide/configurationreference.html)
- [Micronaut Guides](https://guides.micronaut.io/index.html)

---

## Deployment with GraalVM

If you want to deploy to AWS Lambda as a GraalVM native image, run:

```bash
./mvnw clean  package -Dpackaging=docker-native -Dmicronaut.runtime=lambda -Dmicronaut.aot.enabled=true -Pgraalvm
```

This will build the GraalVM native image inside a docker container and generate the `function.zip` ready for the
deployment.

## Testing locally with the SAM CLI

From the project root folder - where the `template.yml` file is located - start the API with the SAM CLI.

```bash
sam local start-api --warm-containers EAGER
```

Fire request ``http://127.0.0.1:3000/``

```bash
curl -s http://127.0.0.1:3000/
```

## Debug Locally

```bash
# Invoke a function locally in debug mode on port 5005
sam local invoke -d 5005 <function logical id>
OR
# Start local API Gateway in debug mode on port 5005
sam local start-api -d 5005 --warm-containers EAGER
```

## Handler

Handler: com.example.FunctionRequestHandler

[AWS Lambda Handler](https://docs.aws.amazon.com/lambda/latest/dg/java-handler.html)

- [Micronaut Maven Plugin documentation](https://micronaut-projects.github.io/micronaut-maven-plugin/latest/)

## Feature aws-lambda-custom-runtime documentation

- [Micronaut Custom AWS Lambda runtime documentation](https://micronaut-projects.github.io/micronaut-aws/latest/guide/index.html#lambdaCustomRuntimes)

- [https://docs.aws.amazon.com/lambda/latest/dg/runtimes-custom.html](https://docs.aws.amazon.com/lambda/latest/dg/runtimes-custom.html)

## Feature aws-lambda-events-serde documentation

- [Micronaut AWS Lambda Events Serde documentation](https://micronaut-projects.github.io/micronaut-aws/snapshot/guide/#eventsLambdaSerde)

- [https://github.com/aws/aws-lambda-java-libs/tree/main/aws-lambda-java-events](https://github.com/aws/aws-lambda-java-libs/tree/main/aws-lambda-java-events)

## Feature maven-enforcer-plugin documentation

- [https://maven.apache.org/enforcer/maven-enforcer-plugin/](https://maven.apache.org/enforcer/maven-enforcer-plugin/)

## Feature http-client-jdk documentation

- [Micronaut HTTP Client Jdk documentation](https://docs.micronaut.io/latest/guide/index.html#jdkHttpClient)

- [https://openjdk.org/groups/net/httpclient/intro.html](https://openjdk.org/groups/net/httpclient/intro.html)

## Feature aws-lambda documentation

- [Micronaut AWS Lambda Function documentation](https://micronaut-projects.github.io/micronaut-aws/latest/guide/index.html#lambda)

## Feature serialization-jackson documentation

- [Micronaut Serialization Jackson Core documentation](https://micronaut-projects.github.io/micronaut-serialization/latest/guide/)

## Feature spotless documentation

- [https://github.com/diffplug/spotless](https://github.com/diffplug/spotless)