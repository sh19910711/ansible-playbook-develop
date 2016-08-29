sudo apt update
sudo apt install -y ansible
mkdir -p tmp
cat >tmp/local <<EOF
localhost ansible_connection=local
EOF
ansible-playbook -i tmp/local ansible.yml
