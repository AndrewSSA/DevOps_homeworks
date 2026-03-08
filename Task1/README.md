# DevOps_homeworks
## Використання протоколу TCP
<img width="711" height="157" alt="Screenshot From 2026-03-08 12-54-33" src="https://github.com/user-attachments/assets/5fb632b7-6e45-4786-9cc0-1a337b61966d" />

## Використання протоколу UDP
<img width="637" height="271" alt="Screenshot From 2026-03-08 12-52-29" src="https://github.com/user-attachments/assets/cafae1e1-fd83-473f-8ecb-5cbad66f481a" />

## Різниця у протоколах:

### UDP:
<img width="637" height="271" alt="Screenshot From 2026-03-08 12-52-41" src="https://github.com/user-attachments/assets/4edfb8b7-1872-47fb-a50a-0fc3f1087b2f" />

### TCP:
<img width="711" height="168" alt="Screenshot From 2026-03-08 12-54-46" src="https://github.com/user-attachments/assets/107a810f-f81b-49d4-9212-e73978cf09a5" />

Як бачимо з викристанням UDP при закритті з'єднання на одному пристрої, з'єднання залишається активним на іншому, тоді як при TCP при розриві з'єднання на одному пристрої розривається з'єднання на іншому також. Це пов'язано з відмінністю в роботі протоколів, TCP використовує тристороннє рукостискання для перевірки активності з'єднання та для гарантії доставки повідомлення,і при команді розрива з'єднання надсилає пакет з прапорцем FIN, який завершує комунікацію. тоді як UDP цього не робить і на одній сторін "підримує" з'єднання.

## Використання брандмауера:
### TCP:
<img width="1196" height="481" alt="Screenshot From 2026-03-08 13-27-04" src="https://github.com/user-attachments/assets/67592de9-53bd-4eed-a74f-0b572762a970" />

### UDP:
<img width="1183" height="543" alt="Screenshot From 2026-03-08 13-27-58" src="https://github.com/user-attachments/assets/87b7565b-328d-427c-a30d-5ad08cf7b683" />

### Правила брандмауера:
<img width="1183" height="198" alt="image" src="https://github.com/user-attachments/assets/b6e885f8-f5a8-42f9-87df-0d4157a072d0" />

Як бачимо за допомогою tcpdump з використання TCP протоколоку Відправник постійно намагається створити з'єднання за допомогою пакету з прапорцем SYN, але на жаль, це не виходить, через правила фаєрвола. Тоді як UDP одразу надсилає повідомлення, вони фіксуються за допомогою tcpdump, але не доходять до машини, бо їх блокує фаєрвол.
