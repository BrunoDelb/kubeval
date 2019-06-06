# Kubeval

`kubeval` is a tool for validating a Kubernetes YAML or JSON configuration file.
It does so using schemas generated from the Kubernetes OpenAPI specification, and
therefore can validate schemas for multiple versions of Kubernetes.

To run a specific test:

```
docker run -v $PWD/fixtures:/fixtures kubeval kubeval-run blank.yaml
```

To run all the tests in the directory:

```
docker run -v $PWD/fixtures:/fixtures kubeval kubeval-run-all
```


For full usage and installation instructions see [kubeval.instrumenta.dev](https://kubeval.instrumenta.dev/).
