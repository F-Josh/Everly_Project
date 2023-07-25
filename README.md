# Title: Design Choices and why?

Design choices that led me to use Docker and Helm in my CI/CD pipeline. These technologies have been instrumental in revolutionizing our software development and deployment processes. Let me share the reasons behind this decision:

Docker - The Foundation of Portability and Consistency:
Docker has been a game-changer in the world of DevOps, and it made perfect sense to leverage its capabilities in our CI/CD pipeline. Here's why we chose Docker:

Portability: With Docker's containerization, we can package applications along with their dependencies, libraries, and configurations into a single, lightweight container. This portability means that our applications can run consistently across various environments, from development and testing to production. This consistency ensures that what works locally during development will work flawlessly in the production environment.

Efficient Resource Utilization: Docker's containerization optimizes resource usage, allowing us to run multiple containers on a single host. This efficiency not only saves costs but also ensures the best use of available resources in our infrastructure.

Scalability: Docker's horizontal scaling capabilities has revolutinozed the tech space. As our user base grows, we can effortlessly scale our applications by adding more container instances, providing a seamless experience for our users without compromising on performance.

Helm - A tool for simplifying Kubernetes Deployments:
Kubernetes has become the industry standard for container orchestration, and Helm acts as the perfect companion for simplifying application deployments. Here's why I chose Helm:

Streamlined Deployments: Helm allows us to define our applications in reusable, version-controlled Helm charts. This approach streamlines the deployment process and significantly reduces the chances of errors during deployments. We can confidently release updates to our applications with minimal downtime.

Versioning and Rollbacks: With Helm charts, we have the ability to version our applications. In case issues arise during a deployment, we can easily roll back to a previous version, ensuring the highest level of application availability and minimizing potential disruptions.

Templating and Customization: Helm's templating engine enables us to parameterize values, creating dynamic configurations based on the environment. This flexibility allows us to customize deployments for various stages, such as development, staging, and production, without duplicating configuration files.

Growing Community: Helm has an active and growing community, leading to an extensive repository of Helm charts. This ecosystem accelerates our deployment process and allows us to focus on building our applications rather than reinventing the wheel.

In conclusion, the decision to use Docker and Helm in our CI/CD pipeline for this project has been transformative. Docker's containerization ensures consistency, portability, and efficient resource utilization, while Helm simplifies Kubernetes deployments with versioning, templating, and an expanding chart repository.

The assumption is that this application will be deployed in a kubernetes cluster(EKS, GKS etc) and that the KUBECONFIG file will be available and TOKEN set up in gitlab before deployment.
It is also worthy to note that the application can also be set up to build in ECS.
I also used Gitlab CI/CD pipeline as directed in the instruction.