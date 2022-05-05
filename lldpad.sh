#!/bin/bash

touch verify.yml



echo "---" >> verify.yml

echo "- name: \"Check lldpad version\"" >> verify.yml

echo "  hosts: all" >> verify.yml

echo "  gather_facts: no" >> verify.yml

echo "  tasks:" >> verify.yml

echo "    - name: \"Check lldpad version\"" >> verify.yml

echo "      command: lldptool -V" >> verify.yml

echo "      register: lldpad_version" >> verify.yml

echo "      changed_when: False" >> verify.yml

echo "    - name: \"Start lldpad service\"" >> verify.yml

echo "      service:" >> verify.yml

echo "        name: lldpad" >> verify.yml

echo "        state: started" >> verify.yml



cat verify.yml



hash_output=$(sha1sum verify.yml)



echo $hash_output verify.yml

#Carl_2022
