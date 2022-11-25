# 1. Введение в Ansible
## Основная часть:
1. Значение факта:  
   ![fact](./pictures/fact.PNG)  
2. Значение находится в [этом](./playbook/group_vars/all/examp.yml) файле.
3. Окружение создано:  
   ![docker](./pictures/docker.PNG)
4. Полученные значения:  
   ![facts](./pictures/facts.PNG)
5. Соответствующие файлы [deb](./playbook/group_vars/deb/examp.yml) и [el](./playbook/group_vars/el/examp.yml) изменены.
6. Вывод после модификации файлов:  
   ![facts 2](./pictures/facts%202.PNG)
7. Файлы зашифрованы:  
   ![encrypt](./pictures/encrypt.PNG)
8. Пароль был запрошен, playbook отрабатывает:  
   ![playbook with pass](./pictures/playbook%20with%20pass.PNG)
9. Плагин ```local``` позволяет выполнять сценарии на ```control node```.
10. Файл [prod.yml](./playbook/inventory/prod.yml) изменен в соответствии с заданием.
11. Playbook успешно выполняется:  
    ![playbook with localhost](./pictures/playbook%20with%20localhost.PNG)

## Необязательная часть:
1. Файлы расшифрованы:  
   ![decrypt](./pictures/decrypt.PNG)
2. Строка ```PaSSw0rd``` зашифрована:  
   ![encrypt 2](./pictures/encrypt%202.PNG)  
   И с этой стракой создан [файл](./playbook/group_vars/all/exmp.yml) как указано в задании.
3. Playbook успешно отрабатывает:  
   ![playbook with pass 2](./pictures/playbook%20with%20pass%202.PNG)
4. Новый хост добавлен в [inventory файл](./playbook/inventory/prod.yml) и создан новый [файл с переменными](./playbook/group_vars/fed/examp.yml).
5. [Скрипт](./my_script.sh) написан и успешно отрабатывает:  
   ![script 1](./pictures/script%201.PNG)  
   ![script 2](./pictures/script%202.PNG)