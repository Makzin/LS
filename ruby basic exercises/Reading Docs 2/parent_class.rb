# The phrase "though perhaps in modified form" from above is there because a class can override the members of its superclass.
# In fact, most of the Core and Standard Library API classes do just that. For example, String overrides Object#==.
# What this means for you is that you must first look at the documentation for your class before looking at the documentation for the superclass. 
# So, even if you know that the superclass has a particular method, you should always check that it isn't being overridden by the subclass.
