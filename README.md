## Pipeline Chart
Creates and starts pipleline using Tekton for the application  


Creating new release

```
git checkout release
helm package .
mv  pipeline*.tgz release/
helm repo index --url https://jland-redhat.github.io/pipeline-helm-chart/ .
git add --all
git commit -m "Updating to version x.x.x"
```


## Testing chart

### Add helm repo
```
helm repo add oauth https://jaland.github.io/pipeline-helm-chart/
helm repo list
```

### Deploy chart
```
helm install oauth/pipeline-chart --name-template pipeline
```
