# Hashicorp_vault_kubernetes_project



step:

install install.sh
edit iam role for temporary give admin acccess and configure with aws configure

******************************************************************************************
Now using eksctl configuration yaml create aws eks cluster

kind: ClusterConfig

metadata:
  name: cluster-vault
  region: us-east-1

nodeGroups:
  - name: ng-1
    instanceType: t2.micro
    desiredCapacity: 2
    volumeSize: 30


iam:
  withOIDC: true

addons:

- name: vpc-cni
  attachPolicyARNs:
    - arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy

- name: coredns
  version: latest

- name: kube-proxy
  version: latest

- name: aws-ebs-csi-driver
  wellKnownPolicies:
    ebsCSIController: true
********************************

Apply this cluster.yaml file with command:  eksctl create cluster -f cluster.yaml


*********************************************************************

