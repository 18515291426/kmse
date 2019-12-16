
s=`kubectl get svc --all-namespaces | grep swift | awk '{print $4}' | sed -n '1p'`

NginxIngress=http://$s/tiller/v2/releases/nginx-ingress/json
echo $NginxIngress
curl -H "Content-Type:application/json" -XPOST $NginxIngress -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/nginx-ingress-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

Elasticsearch=http://$s/tiller/v2/releases/elasticsearch/json
echo Elasticsearch
curl -H "Content-Type:application/json" -XPOST $Elasticsearch -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/elasticsearch-7.2.1-0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

ConsulKmseSystem=http://$s/tiller/v2/releases/consul-kmse-system/json
echo $ConsulKmseSystem
curl -H "Content-Type:application/json" -XPOST $ConsulKmseSystem -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/consul-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

PrometheusOperator=http://$s/tiller/v2/releases/prometheus/json
echo $PrometheusOperator
curl -H "Content-Type:application/json" -XPOST $PrometheusOperator -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/prometheus-operator-8.3.3.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 10

KmseConsulProxy=http://$s/tiller/v2/releases/kmse-consul-proxy/json
echo $KmseConsulProxy
curl -H "Content-Type:application/json" -XPOST $KmseConsulProxy -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-consul-proxy-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseLogin=http://$s/tiller/v2/releases/kmse-login/json
echo $KmseLogin
curl -H "Content-Type:application/json" -XPOST $KmseLogin -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-login-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseOperatingPlatform=http://$s/tiller/v2/releases/kmse-operating-platform/json
echo $KmseOperatingPlatform
curl -H "Content-Type:application/json" -XPOST $KmseOperatingPlatform -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/operating-platform-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseBridge=http://$s/tiller/v2/releases/kmse-bridge/json
echo $KmseBridge
curl -H "Content-Type:application/json" -XPOST $KmseBridge -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-bridge-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseApplicationShop=http://$s/tiller/v2/releases/kmse-application-shop/json
echo $KmseApplicationShop
curl -H "Content-Type:application/json" -XPOST $KmseApplicationShop -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-application-shop-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseApiList=http://$s/tiller/v2/releases/kmse-api-list-kmse-system/json
echo $KmseApiList
curl -H "Content-Type:application/json" -XPOST $KmseApiList -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-api-list-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseGeneratorSpringboot=http://$s/tiller/v2/releases/kmse-generator-springboot-kmse-system/json
echo $KmseGeneratorSpringboot
curl -H "Content-Type:application/json" -XPOST $KmseGeneratorSpringboot -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-generator-springboot-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseInstaller=http://$s/tiller/v2/releases/kmse-installer-kmse-system/json
echo $KmseInstaller
curl -H "Content-Type:application/json" -XPOST $KmseInstaller -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-installer-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseConfigCenter=http://$s/tiller/v2/releases/kmse-config-center-kmse-system/json
echo $KmseConfigCenter
curl -H "Content-Type:application/json" -XPOST $KmseConfigCenter -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-config-center-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseCircuitbreakLimit=http://$s/tiller/v2/releases/kmse-circuitbreak-limit-kmse-system/json
echo $KmseCircuitbreakLimit
curl -H "Content-Type:application/json" -XPOST $KmseCircuitbreakLimit -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-circuitbreak-limit-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseServiceStat=http://$s/tiller/v2/releases/kmse-service-stat-kmse-system/json
echo $KmseServiceStat
curl -H "Content-Type:application/json" -XPOST $KmseServiceStat -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-service-stat-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseMonitor=http://$s/tiller/v2/releases/kmse-monitor-kmse-system/json
echo $KmseMonitor
curl -H "Content-Type:application/json" -XPOST $KmseMonitor -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-monitor-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseTelemetryTrackingLink=http://$s/tiller/v2/releases/kmse-telemetry-tracking-kmse-system/json
echo $KmseTelemetryTrackingLink
curl -H "Content-Type:application/json" -XPOST $KmseTelemetryTrackingLink -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-telemetry-tracking-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

filebeat=http://$s/tiller/v2/releases/filebeat/json
echo $filebeat
curl -H "Content-Type:application/json" -XPOST $filebeat -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/filebeat-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseTracking=http://$s/tiller/v2/releases/kmse-tracking-link-kmse-system/json
echo $KmseTracking
curl -H "Content-Type:application/json" -XPOST $KmseTracking -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-tracking-link-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseLogService=http://$s/tiller/v2/releases/kmse-log-service-kmse-system/json
echo $KmseLogService
curl -H "Content-Type:application/json" -XPOST $KmseLogService -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-log-service-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5

KmseAlert=http://$s/tiller/v2/releases/kmse-alert-kmse-system/json
echo $KmseAlert
curl -H "Content-Type:application/json" -XPOST $KmseAlert -d '{"chart_url": "https://hub-cn-guangzhou-1.kce.ksyun.com/chartrepo/kmse-system/charts/kmse-alert-1.0.0.tgz","namespace": "kmse-system","insecure_skip_verify":true }'

sleep 5



echo "******************* 微服务平台安装成功******************"
LBIP=`kubectl get svc -n kmse-system |grep kmse-application-shop |awk '{print $4}'`
LBPORT=30008
echo "【请访问：$LBIP:$LBPORT】"
echo "*******************************************************"
