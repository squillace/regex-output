#!/bin/sh
#echo "This is what you passed: $1"

echo '{
    "apiVersion": "v1",
    "kind": "Pod",
    "metadata": {
        "creationTimestamp": "2020-01-06T23:35:58Z",
        "generateName": "buck-porter-9dfd5f7b5-",
        "labels": {
            "app.kubernetes.io/instance": "buck-porter",
            "app.kubernetes.io/name": "buck",
            "pod-template-hash": "9dfd5f7b5"
        },
        "name": "buck-porter-9dfd5f7b5-wq8zp",
        "namespace": "default",
        "ownerReferences": [
            {
                "apiVersion": "apps/v1",
                "blockOwnerDeletion": true,
                "controller": true,
                "kind": "ReplicaSet",
                "name": "buck-porter-9dfd5f7b5",
                "uid": "67206358-1862-432a-8bbf-f251b7d524e0"
            }
        ],
        "resourceVersion": "8319896",
        "selfLink": "/api/v1/namespaces/default/pods/buck-porter-9dfd5f7b5-wq8zp",
        "uid": "0f811d57-740d-46bf-8708-fe2a6d53855e"
    },
    "spec": {
        "containers": [
            {
                "env": [
                    {
                        "name": "PROJECT",
                        "value": "brigade-22f9b93f15d92f621b229abe40de5a49f07076360cc23509dd5ea6"
                    },
                    {
                        "name": "GROUP",
                        "value": "cnab.technosophos.com"
                    },
                    {
                        "name": "VERSION",
                        "value": "v1"
                    },
                    {
                        "name": "KIND",
                        "value": "Release"
                    },
                    {
                        "name": "PLURAL",
                        "value": "releases"
                    },
                    {
                        "name": "NAMESPACE",
                        "valueFrom": {
                            "fieldRef": {
                                "apiVersion": "v1",
                                "fieldPath": "metadata.namespace"
                            }
                        }
                    }
                ],
                "image": "brigadecore/buck:latest",
                "imagePullPolicy": "Always",
                "name": "buck",
                "resources": {},
                "terminationMessagePath": "/dev/termination-log",
                "terminationMessagePolicy": "File",
                "volumeMounts": [
                    {
                        "mountPath": "/var/run/secrets/kubernetes.io/serviceaccount",
                        "name": "buck-porter-token-xf42r",
                        "readOnly": true
                    }
                ]
            }
        ],
        "dnsPolicy": "ClusterFirst",
        "enableServiceLinks": true,
        "nodeName": "aks-linux-46343503-vmss000000",
        "priority": 0,
        "restartPolicy": "Always",
        "schedulerName": "default-scheduler",
        "securityContext": {},
        "serviceAccount": "buck-porter",
        "serviceAccountName": "buck-porter",
        "terminationGracePeriodSeconds": 30,
        "tolerations": [
            {
                "effect": "NoExecute",
                "key": "node.kubernetes.io/not-ready",
                "operator": "Exists",
                "tolerationSeconds": 300
            },
            {
                "effect": "NoExecute",
                "key": "node.kubernetes.io/unreachable",
                "operator": "Exists",
                "tolerationSeconds": 300
            }
        ],
        "volumes": [
            {
                "name": "buck-porter-token-xf42r",
                "secret": {
                    "defaultMode": 420,
                    "secretName": "buck-porter-token-xf42r"
                }
            }
        ]
    },
    "status": {
        "conditions": [
            {
                "lastProbeTime": null,
                "lastTransitionTime": "2020-01-06T23:35:58Z",
                "status": "True",
                "type": "Initialized"
            },
            {
                "lastProbeTime": null,
                "lastTransitionTime": "2020-01-06T23:36:03Z",
                "status": "True",
                "type": "Ready"
            },
            {
                "lastProbeTime": null,
                "lastTransitionTime": "2020-01-06T23:36:03Z",
                "status": "True",
                "type": "ContainersReady"
            },
            {
                "lastProbeTime": null,
                "lastTransitionTime": "2020-01-06T23:35:58Z",
                "status": "True",
                "type": "PodScheduled"
            }
        ],
        "containerStatuses": [
            {
                "containerID": "docker://957fef2969c565b01f9ea5265caf8f0f9ba69a8183f770c09d554b260d5de7f4",
                "image": "brigadecore/buck:latest",
                "imageID": "docker-pullable://brigadecore/buck@sha256:03269c69e944ac879303792596b4858c457921a81030d0a7ff428c4bcd9a2da3",
                "lastState": {},
                "name": "buck",
                "ready": true,
                "restartCount": 0,
                "state": {
                    "running": {
                        "startedAt": "2020-01-06T23:36:02Z"
                    }
                }
            }
        ],
        "hostIP": "10.240.0.4",
        "phase": "Running",
        "podIP": "10.240.0.16",
        "qosClass": "BestEffort",
        "startTime": "2020-01-06T23:35:58Z"
    }
}'
