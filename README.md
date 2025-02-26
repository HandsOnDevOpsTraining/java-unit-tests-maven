Microsoft Azure DevOps Sample Yaml Pipeline

https://learn.microsoft.com/en-us/azure/devops/pipelines/ecosystems/java?view=azure-devops

Microsoft Sample Github Java Code
https://github.com/MicrosoftDocs/pipelines-java



https://learn.microsoft.com/en-us/azure/devops/pipelines/tasks/reference/copy-files-v2?view=azure-pipelines&tabs=yaml

<img width="1107" alt="image" src="https://github.com/user-attachments/assets/66214114-7e75-4562-98c7-90c0078d11b6">

<img width="1395" alt="image" src="https://github.com/user-attachments/assets/e0b4967d-5d7c-45d3-8074-ae465ea42f16">

**Common Errors:**
If you get below errors when running pipeline, 
```permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock:```
Then execute below commands in the Jenkins EC2 machine
```
Solution:

Run the following command to add the Jenkins user to the Docker group:
sudo usermod -aG docker jenkins

After adding the user to the docker group, you must restart Jenkins for the changes to take effect:
sudo systemctl restart jenkins

You can verify if the user was added to the group by running:
groups jenkins
```


SonarQube pipeline
https://dev.azure.com/june2024devops/JavaMaven/_apps/hub/ms.vss-ciworkflow.build-ci-hub?_a=edit-build-definition&id=22
