# opening directory aliases
alias p='cd /home/LaxmanMaharjan/Project'

# poweroff and sleep
alias off='sudo poweroff'
alias sleep='sudo pm-suspend'

# to open dwm config file
alias dwm='vim /home/LaxmanMaharjan/.config/suckless/dwm/config.h'

# to open config folder
alias config='vim /home/LaxmanMaharjan/.config/'

# info developers
alias info='
cd /home/LaxmanMaharjan/Learning/Info/Django/
source django/bin/activate
cd Final_Project
cd sabaiko_mis
#'

# music generation system 
alias music='cd /home/LaxmanMaharjan/Project/"Music Generation using LSTM GAN"'

# info developers final project
alias dev='
cd /home/LaxmanMaharjan/Learning/Info/Django/Final_Project/
source django/bin/activate
cd final-project
vim sabaiko_mis
'
# for running server of  info developers final project
alias runserver='
cd /home/LaxmanMaharjan/Learning/Info/Django/Final_Project/
source django/bin/activate
cd final-project
cd sabaiko_mis
python manage.py runserver
'
# for deactivating and exiting
alias d='
deactivate
exit
'
