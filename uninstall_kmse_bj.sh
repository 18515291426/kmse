


s=`kubectl get svc --all-namespaces | grep swift | awk '{print $4}' | sed -n '1p'`


Consul=http://$s/tiller/v2/releases/consul-kmse-system/json?purge=true
echo $Consul
curl --request DELETE $Consul

Elasticsearch=http://$s/tiller/v2/releases/elasticsearch/json?purge=true
echo $Elasticsearch
curl --request DELETE $Elasticsearch


filebeat=http://$s/tiller/v2/releases/filebeat/json?purge=true
echo $filebeat
curl --request DELETE $filebeat

KmseAlert=http://$s/tiller/v2/releases/kmse-alert-kmse-system/json?purge=true
echo $KmseAlert
curl --request DELETE $KmseAlert

KmseApiList=http://$s/tiller/v2/releases/kmse-api-list-kmse-system/json?purge=true
echo $KmseApiList
curl --request DELETE $KmseApiList

KmseApplicationShop=http://$s/tiller/v2/releases/kmse-application-shop/json?purge=true
echo $KmseApplicationShop
curl --request DELETE $KmseApplicationShop

KmseLogin=http://$s/tiller/v2/releases/kmse-login/json?purge=true
echo $KmseLogin
curl --request DELETE $KmseLogin

KmseBridge=http://$s/tiller/v2/releases/kmse-bridge/json?purge=true
echo $KmseBridge
curl --request DELETE $KmseBridge

KmseCircuitbreak=http://$s/tiller/v2/releases/kmse-circuitbreak-limit-kmse-system/json?purge=true
echo $KmseCircuitbreak
curl --request DELETE $KmseCircuitbreak

KmseConfigCenter=http://$s/tiller/v2/releases/kmse-config-center-kmse-system/json?purge=true
echo $KmseConfigCenter
curl --request DELETE $KmseConfigCenter

KmseConsulProxy=http://$s/tiller/v2/releases/kmse-consul-proxy/json?purge=true
echo $KmseConsulProxy
curl --request DELETE $KmseConsulProxy

KmseGeneratorSpringboot=http://$s/tiller/v2/releases/kmse-generator-springboot-kmse-system/json?purge=true
echo $KmseGeneratorSpringboot
curl --request DELETE $KmseGeneratorSpringboot

KmseInstaller=http://$s/tiller/v2/releases/kmse-installer-kmse-system/json?purge=true
echo $KmseInstaller
curl --request DELETE $KmseInstaller

KmseLogService=http://$s/tiller/v2/releases/kmse-log-service-kmse-system/json?purge=true
echo $KmseLogService
curl --request DELETE $KmseLogService

KmseMonitor=http://$s/tiller/v2/releases/kmse-monitor-kmse-system/json?purge=true
echo $KmseMonitor
curl --request DELETE $KmseMonitor

KmseOperatingPlatform=http://$s/tiller/v2/releases/kmse-operating-platform/json?purge=true
echo $KmseOperatingPlatform
curl --request DELETE $KmseOperatingPlatform

KmseServiceStat=http://$s/tiller/v2/releases/kmse-service-stat-kmse-system/json?purge=true
echo $KmseServiceStat
curl --request DELETE $KmseServiceStat

KmseTelemetryTracking=http://$s/tiller/v2/releases/kmse-telemetry-tracking-kmse-system/json?purge=true
echo $KmseTelemetryTracking
curl --request DELETE $KmseTelemetryTracking

KmseTrackingLink=http://$s/tiller/v2/releases/kmse-tracking-link-kmse-system/json?purge=true
echo $KmseTrackingLink
curl --request DELETE $KmseTrackingLink

NginxIngress=http://$s/tiller/v2/releases/nginx-ingress/json?purge=true
echo $NginxIngress
curl --request DELETE $NginxIngress

Prometheus=http://$s/tiller/v2/releases/prometheus/json?purge=true
echo $Prometheus
curl --request DELETE $Prometheus


kubectl delete crd --all -n kmse-system


