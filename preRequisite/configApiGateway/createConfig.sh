kubectl delete --context $PUBLIC_CONTEXT --namespace $PUBLIC_NAMESPACE configmap ocelot
kubectl delete --context $PRIVATE_CONTEXT --namespace $PRIVATE_NAMESPACE configmap ocelot
kubectl create --context $PUBLIC_CONTEXT --namespace $PUBLIC_NAMESPACE configmap ocelot --from-file=mm=./configuration-mobile-marketing.json --from-file=ms=./configuration-mobile-shopping.json --from-file=wm=./configuration-web-marketing.json --from-file=ws=./configuration-web-shopping.json 
kubectl create --context $PRIVATE_CONTEXT --namespace $PRIVATE_NAMESPACE configmap ocelot --from-file=mm=./configuration-mobile-marketing.json --from-file=ms=./configuration-mobile-shopping.json --from-file=wm=./configuration-web-marketing.json --from-file=ws=./configuration-web-shopping.json 
