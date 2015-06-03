


echo hello

sudo apt-get install python-pip -y
sudo pip install virtualenv

VE_NAME=stress-test
virtualenv $VE_NAME

source $VE_NAME/bin/activate

sudo pip install cloudify --pre

# wget https://github.com/cloudify-cosmo/cloudify-nodecellar-example/archive/master.tar.gz
# tar xf master.tar.gz
# mkdir workspace && cd workspace
# cfy local init --blueprint-path ~/cloudify-nodecellar-example-master/local-blueprint.yaml
# cfy local execute -w install
