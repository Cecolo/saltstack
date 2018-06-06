salt.modules.grains.filter_by(lookup_dict, grain='os_family', merge=None)
* lookup_dict is the dictionary where you want a filter to be applied. It has keys and values. The keys are pointed by the next argument.
* grain is by default the os_family grain. (salt-call grains.items to see them).
* merge argument lets you merge another dictionary. With it you can add more specific data, or to retrieve pillar data. 
