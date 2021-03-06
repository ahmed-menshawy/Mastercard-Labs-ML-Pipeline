{
  global: {},
  components: {
    train: {
      batchSize: 100,
      envVariables: 'GOOGLE_APPLICATION_CREDENTIALS=/var/secrets/user-gcp-sa.json',
      exportDir: '',
      image: '',
      learningRate: '0.01',
      modelDir: '',
      name: 'kfdemo-train',
      numPs: 0,
      numWorkers: 0,
      secret: '',
      secretKeyRefs: '',
      trainSteps: 200,
    },
    "kfdemo-deploy-gcp": {
      defaultCpuImage: 'tensorflow/serving:1.11.1',
      defaultGpuImage: 'tensorflow/serving:1.11.1-gpu',
      deployHttpProxy: 'false',
      enablePrometheus: 'true',
      gcpCredentialSecretName: 'user-gcp-sa',
      httpProxyImage: '',
      injectIstio: 'false',
      modelBasePath: '',
      modelName: 'kfdemo',
      name: 'kfdemo-deploy-gcp',
      numGpus: '0',
      versionName: 'v1',
    },
    "kfdemo-service": {
      enablePrometheus: 'true',
      injectIstio: 'false',
      modelName: 'kfdemo',
      name: 'kfdemo-service',
      serviceType: 'ClusterIP',
      trafficRule: 'v1:100',
    },
    "tensorboard": {
      envVariables: 'GOOGLE_APPLICATION_CREDENTIALS=/var/secrets/user-gcp-sa.json',
      image: "tensorflow/tensorflow:1.11.0",
      logDir: "gs://example/to/model/logdir",
      name: "tensorboard",
      secret: '',
      secretKeyRefs: '',
    },
    "web-ui": {
      containerPort: 5000,
      image: "",
      name: "web-ui",
      replicas: 1,
      servicePort: 80,
      type: "ClusterIP",
    },
  },
}