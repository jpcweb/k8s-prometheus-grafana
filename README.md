<p align="center">
  <h3 align="center">K8s - Prometheus Kube-state Grafana</h3>

  <p align="center">
    Monitoring structure for kubernetes
  </p>
</p>



<!-- TABLE OF CONTENTS -->
## Table of Contents

* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
  * [Warning](#warning)
* [Roadmap](#roadmap)
* [Contributing](#contributing)
* [Contact](#contact)



## Getting Started

### Prerequisites
A kubernetes cluster and an admin access are required.
You must have a nobody account (65534:65534)

### Installation
1. Clone the repo
```sh
git clone https://github.com/jpcweb/k8s-prometheus-grafana.git
```
2. Create your grafana secret
```sh
cat <<< 'GF_SECURITY_ADMIN_USER=myuser
GF_SECURITY_ADMIN_PASSWORD=mypass' > grafana-secrets.env
```

3. Execute setup.sh
```sh
./setup.sh
```

4. Use them
```sh
# Find the services
kubectl get svc
```
<strong>Grafana</strong>
http://grafana-ip:port <br/>
<strong>Prometheus</strong>
http://prom-ip:port <br/>
http://prom-ip:port/targets<br/>

You can add http://prometheus-service:9090 as a datasource in Grafana

<!-- USAGE EXAMPLES -->

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/jpcweb/k8s-prometheus-grafana/issues) for a list of proposed features (and known issues).



<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request



<!-- LICENSE -->


<!-- CONTACT -->
## Contact

Jérémie Payet - [JPCWeb](https://github.com/jpcweb) 
