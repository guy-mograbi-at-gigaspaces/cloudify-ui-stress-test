set -e
set -v

sudo apt-get update -y
sudo apt-get install python-pip python-dev  -y
sudo pip install virtualenv

VE_NAME=stress-test
virtualenv $VE_NAME

source $VE_NAME/bin/activate

pip install cloudify
sudo apt-get install git -y

mkdir test
cd test
cfy init
git clone https://github.com/cloudify-cosmo/cloudify-manager-blueprints
cfy local install-plugins -p cloudify-manager-blueprints/openstack/openstack-manager-blueprint.yaml

# wget https://github.com/cloudify-cosmo/cloudify-nodecellar-example/archive/master.tar.gz
# tar xf master.tar.gz
# mkdir workspace && cd workspace
# cfy local init --blueprint-path ~/cloudify-nodecellar-example-master/local-blueprint.yaml
# cfy local execute -w install
