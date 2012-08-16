# == Class: users::sshkeys::users
# This is where all SSH keys are stored. SSH keys are friggin long and messy, so we keep it out of the initialization file. When you paste a key, make sure to leave out the "ssh-rsa" as well as the "==" and characteres following in, such as the email. Make sure that the variable is unique - you can simply user their organization email.
#
class users::sshkeys::users{

#internal developers L2
    $dtillery = 'AAAAB3NzaC1yc2EAAAABIwAAAQEAx6mP+eEfD0QgVg4l3aH/QUasJoUQh+0cPU2fHKi3NGmXxkMjO8I+WwQTtW/t+97FHqe2VpKzVm3Mj+Dq2SNMVSmJZmpdSuAl1fSuD/f73w5drmQAjBfsVBH+SJc6bJkPYtJO1WWTvfZ9ROJxWMx2G8OymMznLnIGWLMj/lkcrD4y9a+aByZsnlydLnYCDxo6tUxd1bq/hS4lZjbEmnIUiRCPT4qM3Q5s6RIDLI1BSl7vasm/hBT+NNhWfWTfLWoACazfHSgmsl7S6kztfwNqAh347921VgpFF1oNuShP658c0w9KfUiNTyhCpp5QzqzgFziftldywub4Coiq46+sAw'

    $cconlin = 'AAAAB3NzaC1yc2EAAAABIwAAAQEAyyFYevkPI1Th0StYe4OdFPSx0lkt8QtSdmkMe0JLhhc/tXkJp6EC1hkrKu/FxL006I9JGQDOvlue0VwCJpQX2oJlX6/cYT3wsNkuol12QGsSbG5F86M9CoOqDRyHJ51gaOybEJZGxHqm6CJNyJiX4/iUkVyBppN1ykdpgPnR7AVVDWso2poAihFaj1/HIHwnIlDOV8LPmA//ELYEQUQ80nSA8KqpnnM4O3pefoNu+Pllfdvu2CzyYv356STgIRr6dFAbuAUSYp3m9TU0q7pCy7WLEQd2SUKC/cPwVjU7+s5SEPvO9fvoM7hsJvr6wxT7j4oyI84gKTQqE4bM9Iearw'

    $rganeshan = 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCtGHrIYrpgFDhQrvu5YtLitMDArVkGDge74DWYf1NcH82FWx5Bqxn1Cu54a9z9NqQvKcrjds+4u7uvAZPbKJvm97oSyG/wPZ5O2ek1LHxf8OBzAlKzqzeN9AUSWm9fGFPLg9MEWmwNNKP44U1Nauhw4v6VnAu2nmwFqjBNywfiDD0ybDAX8/68gL3SiwSXCkKt9U5NLlRqNTqe+qA78VGnfT0uVY1uUIwsghPeIiTnBo/oEawvVFgfQbf4ZNdCKaniIfdiXXHh79FEb9HWDH0USEiuwUBb0j+4TVJlnW3PD2G7VsnvSxFXIroDsHNzvH/QJaIAKulIO3W33CcZ2HCh'

    $ryanoneill = 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC73gZS4WikA1wE8Jzxliley1qnBfaWuakC1wpsRG1gqUevI2bn1wk2GT1UPTt9MxO9WEUC6J42sGypFRn0BbHDrTml9IEE42tq7dnrypFdAcAz3vXYhi8Fo8Wj8iPc5gV7qyvxZZlK/9z4cZaP48hKWFaN5iNc5BikvE2/Dw89isl14NmnUctqreqQ9SDKg0sNIOxattyVhxs2YmkZBmsQSmdIHSFvEq89UR8hYavpVHVBHDPwobYr0JDu9M3hX3FgnC/sD7qUhaAttpIezh92ma9nLo0cpTvQO7nS/wzwc865KQXdEyFjHNHR8VqhOZM155o8z5+aajJGd7vJAvgN'

#internal developers L1
    $dpeifer = 'AAAAB3NzaC1yc2EAAAABIwAAAQEApkF8JlxsDrLCV8ljoyDcqjRJjl3P9VtN7rtOqoa1gPlzNW6xk/lrBELiNoRScmi5g8j+sksjrYFas4G/jmq1XLuV7+SCfVj6+38Knw7m2lL6+FW0MHCLJB/Viof3WiuNWCMDQhCuGOMVpf4kDOoUh+Mr300B9+4/K0FSjAqoib49+Xjk1Bfz8CiHaEY5EnK5PMhtI7JaKPKZNkP5bTnD4j5mWyPWplWzVdghFYoZoQEQuJWvLBWkwTOCNsGHGBWOgBI1nCSLpXneOjaFD7qCG51weL9u25g3NG3WJdjyn5juEBHDtz58mI1f0o1aIaM/S8Y4LJQb3wvHI7EZiicmew'

    $ssalenger = 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCsGG1ViNhVFKQWKvyks5efm92dhy7i3iPH1M6KPQA0a8HjlfklVoaz0IBXFyeFCqor+aiXUiOcozzvlUducdVnNP3xr4N4Xf4qfXQzj++2D5gmtZKhkarh8rxaNRdHBoRIX2gMWStlYKgT16c17FBcyTcPig/j3bNzKb4H5vtRaBix0dX1T/QIu2VhfzbxXiyvwsssa1BCvw4MtN8/wywFiPBKxDxk/8GpSmO5s9VL4AD47Gwpsw3DDiShSSUCRY5EhSa2lzfCZMO0s5g1X6e6eviVEvC3Ey3EDeXA6SxEiv+yuQThDRKYFbiv1GcbtHhA3lAjoyVJ/in77G2Gjt19'

#contracted marketing developers
    $mikeyfreedomhart = 'AAAAB3NzaC1yc2EAAAABIwAAAQEAxIZ1EV5k5zbOVByMiTPwXF3PWQE86710rgpvGQN4AQDI6nKoO6OQ1ZsyHPC526UJHloPhpMxzxJomTCs1mEVaROJUsIM0AA4nLkKkdIEkN6u1jkjtggVMNTGzZqHhoBekYoNnJIhpjJP/cOb8iumeTiDKfdkk8R5qGdQd1CAS+/6Oui2nQlrz5tmlyCTVUVsIJzs3SdfPn5wKsJWf2saUii/qrcbxg3onmF5WGv3qFxZty7oP7xk3f5+ubB5CTKlTvSHlYsuiTUw5hY6QcjT9MIVmXI3dez/erXPpvBzvddUFx5knTuaIbcVF7FTUNpEfRUkhYi9BI8sCAi+/RDubw'

    $mhart = 'AAAAB3NzaC1yc2EAAAABIwAAAQEAxIZ1EV5k5zbOVByMiTPwXF3PWQE86710rgpvGQN4AQDI6nKoO6OQ1ZsyHPC526UJHloPhpMxzxJomTCs1mEVaROJUsIM0AA4nLkKkdIEkN6u1jkjtggVMNTGzZqHhoBekYoNnJIhpjJP/cOb8iumeTiDKfdkk8R5qGdQd1CAS+/6Oui2nQlrz5tmlyCTVUVsIJzs3SdfPn5wKsJWf2saUii/qrcbxg3onmF5WGv3qFxZty7oP7xk3f5+ubB5CTKlTvSHlYsuiTUw5hY6QcjT9MIVmXI3dez/erXPpvBzvddUFx5knTuaIbcVF7FTUNpEfRUkhYi9BI8sCAi+/RDubw'

#EBD
    $rparipooranan = 'AAAAB3NzaC1yc2EAAAABIwAAAQEAt8DoZ0NLBWaKH2Nqf4IDlYTZO8HuO1TTuxgctxzZD1JrYNM5+Z5N2NNV0OniANPXAdsgik5LNX+epjHxr2ewnlQo2sWY/kCs86o47OYaRvhoBeeAZLe2SMgnOQqImcPnAZ8mduSRxSemdZdHBEayeCZyj/t8sxIQJ0YAI2d+njeo+9ogYU6bXUojcC8Q9F3PLDO6kWl17TV/FaiPpI9Aoagpn6gdLhLjntowsSwpr9Txi+EBEpQjIlGGIs4+mdXq530INXxDTWiaA+dlEGx9gzcYgBjHTAXSKaQkGYXXlmE6hmfWmNZ4voMqSxqDcmIJQu+G4/08t0oY5Yzq8L+jwQ'

    $nitai = 'AAAAB3NzaC1yc2EAAAABIwAAAQEAsomAqVjWsgDyI0FE6bpzheVv9xtDzbwHDCQ3D5+IyL1F2BWgp3xJkaZydBGsH8NLA4FhFgts0b9hgz49zAUrAX51YtFyG9LQgXSviyB7VKluKa1zdNdF9lrbbQJNuSaegn8N3ofk8SIWQz3eUhXc2/fTh6HRdR3li9deBmDs5/QJ2OKca4xX9kw23JmIzMupKJmm1slqpbD8b11BNZy6W0BqMP5XlpealAgJ8dPo5aM0++1PhzZWYHKaX8TMp06X4tIAr2P7/tFnBv4VECE8f4qm3GR/OJTgGMfCXAHU0Gdh1qZMiR8C9+7Ysmb3rZ/gF6bJd2/GgHGHsdVXaiq8ZQ'

#tech support
    $dmorales = 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCswd/XYp6mazrn0wMtt5QpNtVQW+n3Ii2sPkKwaqrH8E6dIUPOdz63JyXxTZz60gHjrtJePzjWGPlm31YsVLGBRJx77aeRx72itovLA5g+v4c3h4x8nzImaL8RBOYz4hPu8mWUm1FL64jPS4lLpGqDYsSsP4rMKmrPP/bsTweDNL1QaT2yXxl9UIpiBmkY3bkn97ifKaEy08ekccysOJPwR7uhE/Fr8I5qnCfeghbWlndX2WHFna9UViLWUKzuNFszF6DZjacvv+PzsBgmG35yelpZ13ZmZae2QYhd++mJ66IH5XeGq0qMi06NL37Nh7mMEEPU14aC4gunB60sbuox'

}
