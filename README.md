This is example of adding a text "plugin-load = auth_socket.so" after section [mysqld] in the configuration file of mariadb.
Various distros has their conf files located in different places. 
In map.jinja is used function grains.filter_by.

grains.filter_by(lookup_dict, grain='os_family', merge=None)
* lookup_dict is the dictionary where you want a filter to be applied. It has keys and values. The keys are pointed by the next argument.
* grain is by default the os_family grain. (salt-call grains.items to see them).
* merge argument lets you merge another dictionary. With it you can add more specific data, or to retrieve pillar data. 

In the first part of map.jinja you can map 'os_family' key (Debian, RedHat). That is the default grain, that is why it is not shown.
It is used merge argument to make precise mapping by grain='oscodename' for bionic distros, because it has different path unlike other Debian's.
