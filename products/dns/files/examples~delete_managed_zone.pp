<% if false # the license inside this if block assertains to this file -%>
# Copyright 2017 Google Inc.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
<% end -%>
<% unless name == "README.md" -%>
<%= compile 'templates/license.erb' -%>

<%= compile 'templates/autogen_notice.erb' -%>

# An example Puppet manifest that ensures Google Cloud Computing DNS Managed
# Zones in a project do not exist.

<%= compile 'templates/puppet/examples~credential.pp.erb' -%>

# Ensures the managed zone is not in the project.
gdns_managed_zone { <%= example_resource_name('test-example-zone') -%>:
  ensure     => absent,
  project    => 'google.com:graphite-playground',
  credential => 'mycred',
}

# Ensures the managed zone is not in the project.
gdns_managed_zone { <%= example_resource_name('testzone-2-com') -%>:
  ensure     => absent,
  project    => 'google.com:graphite-playground',
  credential => 'mycred',
}

# Ensures the managed zone is not in the project.
gdns_managed_zone { <%= example_resource_name('id-for-testzone-3-com') -%>:
  ensure     => absent,
  project    => 'google.com:graphite-playground',
  credential => 'mycred',
}

<% end # name == README.md -%>
gdns_managed_zone { <%= example_resource_name('testzone-4-com') -%>:
  ensure     => absent,
  project    => 'google.com:graphite-playground',
  credential => 'mycred',
}
