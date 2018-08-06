kops create cluster \
	--cloud=aws \
	--dns=private \
	--dns-zone=k8slabs.com \
	--zones=ap-south-1b,ap-south-1a \
	--master-count=1 \
	--master-size=t2.micro \
	--master-zones=ap-south-1b \
	--master-volume-size=10 \
	--node-count=3 \
	--node-size=t2.micro \
	--node-volume-size=10 \
	--vpc=vpc-4fdb4b27 \
	--network-cidr=172.31.0.0/16 \
	--networking=calico \
	--kubernetes-version=1.8.6 \
	--topology=private \
	--associate-public-ip=false \
	--bastion=true \
	--ssh-public-key=id_rsa.pub \
	--state s3://kops-lab \
	--name=mylabs.k8slabs.com \
	--authorization=rbac \
	--encrypt-etcd-storage
