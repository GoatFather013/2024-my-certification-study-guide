kubectl get pod nginx-manifest -o=jsonpath='{.metadata.name}'
result = nginx-manifest