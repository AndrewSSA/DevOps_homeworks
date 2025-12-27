# Завдання:

1. Встановлення nginx
2. Питання-зітхання:
   
  2.1 Як саме запускається сервіс і чим керується?
  2.2 файлові дескриптори, що створюються процесом сервісу і навіщо кожен з них?
  2.3 як можна читати логи серверу?
  2.4 чи можемо ми змінити конфігурацію веб-сервера, не перезавантажуючи його?

3. Завдання з зірочкою

## Завдання 1:
<img width="1485" height="351" alt="image" src="https://github.com/user-attachments/assets/9994e5fd-70dd-47f8-9c08-956d1bcdec0b" />

## Завдання 2:

### 2.1:
<img width="1472" height="417" alt="image" src="https://github.com/user-attachments/assets/5b7a408a-f723-4bf9-bafb-47b4cb4deb70" />

nginx як процес керується файлом з файлу ``/usr/lib/systemd/system/nginx.service``, також nginx керується конфігураційним файлом ``nginx.conf``(по замовчанню)

### 2.2:
<img width="865" height="377" alt="image" src="https://github.com/user-attachments/assets/cc80d4a1-8a74-4f54-abc6-7d8ac4dd2b75" />
<img width="1918" height="589" alt="image" src="https://github.com/user-attachments/assets/7fbd4cdf-300a-4078-bc4d-35e0c1efaa92" />

0, 1	stdin/stdout відправка вводу/виводу в /dev/null.

2, 11(???)	error.log	Реєстрація помилок роботи сервера та системних збоїв.

12	access.log (HTTP logs).

13, 14, 3, 4, 5,6 Слухають порт 80 (IPv4 та IPv6) або керування робочими процесами (передача команд від Master до Workers).

### 2.3:
<img width="573" height="214" alt="image" src="https://github.com/user-attachments/assets/cc7132fa-e880-4999-9201-d6b6b1eea36e" />

Можемо за допомогою дії ``reload`` в команді ``systemctl``, що змушує сервіс прочитати новий конфіг сервісу на відмінно від дії ``restart``  


## Завдання 3( з зірочкою :) )
<img width="608" height="186" alt="image" src="https://github.com/user-attachments/assets/bbc9dc9c-68b1-41b8-afe8-7f50b92015d9" />
<img width="1263" height="404" alt="image" src="https://github.com/user-attachments/assets/696afdd1-f0bc-4fe5-b4aa-19fb9768c003" />

Створили новий диск на 10Gb встановили йому точку монтування та поправили файл /etc/fstab для монтування нового при старті системи

<img width="1919" height="742" alt="image" src="https://github.com/user-attachments/assets/89921cfa-6c53-4716-903e-5c6def8d3729" />
<img width="1071" height="243" alt="image" src="https://github.com/user-attachments/assets/b7c19897-3846-418f-b99e-64109357e572" />


MISSION COMPLETE
