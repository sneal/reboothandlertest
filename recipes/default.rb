#
# Author:: Daptiv Engineering (<dl_teamengineering@daptiv.com>)
# Cookbook Name:: reboothandlertest
# Recipe:: default
#
# Copyright (c) 2014 Daptiv Solutions LLC.
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'reboot-handler'

node.run_state['reboot'] = true
