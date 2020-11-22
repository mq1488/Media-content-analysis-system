
## 2. Сценарії  

**Відношення узагальнення**
![main](http://www.plantuml.com/plantuml/png/VLFDQkfG4DxdAGRtMVX_L-9Tt2UutDs54ZIBGhLWugBGXTNQMf0gfIXqKUeR78FM47zyXU-yKISdyN28fSkPy_ryCvdKFT_f-DtMbUKq_EiEvV26W-mXb7UoBmS88EHZZXoF_dbkHuEcM64dPzZBcGBs6DQFYGhwkzcwR6li8X736Zi8zVxtnlFTbcN5acJRjxMKeMkDw7fkm_5SLld0MhvghmVsdIHQVoxoUGCtHP0aGOZD6R9W85yuLuzVHvnipvDC24Uc7R34DWvBYCvNmJC7MgregCqXS6HidrXCi1HpHyoAIAtfNadjqa1pBL4o9DwnJFqZY9zfPOEsYBqGyFjJPXALWjaX3nJ9WMPNp2smp-gaW9KSf_atftaqgsfwgk_vgVrYECKPiOqlGj_5Cp5GqFysGI1IQnGC6Hk0x-Oa18GbXFg2G-A0Wer2ETHXVfskfslNaXl8r8LCNR8iTMHafurYfcR5vEfqfvnjLBADgbLtsqt-Uxu0)


**Структурування моделі варіантів використання**



### 2.1 Сценарій реєстрації нового користувача

**ID**: S1.1  
**НАЗВА**: Реєстрація нового користувача.  
**УЧАСНИКИ**: Система; Користувач.  
**ПЕРЕДУМОВИ**: Відсутні.  

**РЕЗУЛЬТАТ**: Створення нового облікового запису користувача.  
**ВИКЛЮЧНІ СИТУАЦІЇ**: 
1. Користувач прервав процес реєстрації облікового запису.
2. Аккаунт вже створенний.  


**ОСНОВНИЙ СЦЕНАРІЙ**:  
1. Користувач натискає кнопку «Створити новий аккаунт».
2. Система пропонуж заповнити поля: логін, пароль, e-mail
3. Користувач заповнює поля: логін, пароль, e-mail.
4. Користувач підтверджує правильність введених даних.
5. Система перевіряє введені дані.
6. Система надсилає підтверження про регестрацію.
7. Користувач підтвержує регістрацію.
8. Система надає доступ до створеного акаунту.

**ДІАГРАМА**: 
![uml](http://www.plantuml.com/plantuml/proxy?cache=no&src=https://raw.githubusercontent.com/mq1488/Media-content-analysis-system/master/src/uml/UC/UC_2.1)

### 2.2 Сценарій авторизації користувача

**ID**: S1.2  
**НАЗВА**: Авторизація користувача.  
**УЧАСНИКИ**: Користувач; Система.   
**ПЕРЕДУМОВИ**: 
1. Наявність облікового запису у користувача.
2. Відсутність обмежень у користування аккаунтом.

**РЕЗУЛЬТАТ**: Успішна авторизація в системі.  
**ВИКЛЮЧНІ СИТУАЦІЇ**:  
1. Користувач ввів некоректні дані.  
2. Користувач перервав процес авторизації.  

**ОСНОВНИЙ СЦЕНАРІЙ**:  
1. Користувач натискає кнопку «Авторизація».  
2. Система пропонує форму авторизації.   
3. Користувач заповнює поля «Логін», «Пароль».  
4. Користувач натискає кнопку «Вхід».  
5. Система авторизує користувача.  

**ДІАГРАМА**: 
![se-1-2](http://www.plantuml.com/plantuml/png/XT5DIeLG70NmkQku2sW5DNaBQHBKh5wHDdDWtZucaH6XK8GqRdAnel33m1MSiwCEVqTH3mNnV_7uyrnTnSdUQN9sT1YbUCJ835yyPqwF1e7NQUHqMCQcRJmZC8T2Q3KzE5q6ZFX6I-zsrzChxj0eOHG-bRbYoMBgTWn8yJA_0H_e4UIRMYijHET0BvKN1lGo4VxngbdRt5bcXM1Y8_DMfYqw5auTdpI-iSGmTLjQeqPWPhTlhEdoLlNGFIz5l2zixTVde3VdRsc46OcJuvDeTR3Uro_v0G00)

### 2.3 Сценарій створення запита користувачем

**ID**: S1.3  
**НАЗВА**: Створення запита користувачем.      
**УЧАСНИКИ**: Користувач; Система.   
**ПЕРЕДУМОВИ**: 
1. Авторизація.
2. Відсутність обмежень у користування аккаунтом.
3. Задання параметрів пошуку.

**РЕЗУЛЬТАТ**: Отримання потрібної інформації.  
**ВИКЛЮЧНІ СИТУАЦІЇ**:  
1. Користувач ввів некоректні дані.  
2. Користувач перервав процес пошуку.
3. Дані відсутні в системі. 

**ОСНОВНИЙ СЦЕНАРІЙ**:  
1. Користувач натискає кнопку "Пошук".
2. Система пропонує форму пошуку.
3. Користувач задає параметри пошуку.
4. Система обробляє задані дані.
5. Система надає інформацію користувачу у заданому форматі.

**ДІАГРАМА**: ![se-1-3](http://www.plantuml.com/plantuml/png/TP7DIeT05CNtFiKyGG-W6n-aJL2xiaZRpSASg5Qr2OEWf7KRZQGOFmIVuDmtwZ0s5kHVbBbUplsTSpLEiuFpxEBaED1umYWvlkHI2Z5uHoqtEb2ydCPL8PxPBa0HBAi7nMF0Y0bMZDfFvZTKnDmIOESkSaCQhmiLBNhK-eTKqOo3V0On9CcLy-_9mUGPOZnZPxeGZwZniQIPUEHyxT5IH_qcQpFF2ngNg44dzsJXSy4oNgbyiHVvxx1wIed1PsVZMagvKx3_ut8nthzOZ6xPFxF5Qf1cfsT1V9GSyjTy0m00)

### 2.4 Сценарій вирішення проблем

**ID**: S1.4  
**НАЗВА**: Вирішення проблем користувачів.  
**УЧАСНИКИ**: Користувач; Адмін; Система.  
**ПЕРЕДУМОВИ**:  
1. Авторизація.
2. Відсутність обмежень у користування аккаунтом. 

**РЕЗУЛЬТАТ**: Вирішити всю проблему користувача.    
**ВИКЛЮЧНІ СИТУАЦІЇ**:   
1. Користувач задав некоректне питання.  
2. Адміністратор не в змозі вирішити проблему. 

**ОСНОВНИЙ СЦЕНАРІЙ**:  
1. Користувач натискає кнопку "Задати питання".
2. Система відкриває діалогове вікно.
3. Система з'єднує користувача та адміністратора.

**ДІАГРАМА**: ![se-1-4](http://www.plantuml.com/plantuml/png/VP0zIWKn58NxMKLuZNlGvcr5qCuVyOtTAvupXQKWGmO42tSGOWOapcIsyDqTUPDW9KoQtEGSldEI_Q6zV6oVRc-Q8-yaEV4jpz99ZyV9ox4nkegdJ1kcSpxqq6M9gDDWY2maLgBqPiU88rIBOLLVXsDXaTVTHONpMS5CpBW_x9jO0Z6duYiuw9NZXyGN2Szay69htYPhF9E1e9bzxVVlBJYJUvdITHQhLblqKscUybuJ3ktzGxE_lhlIp_i5)

### 2.5 Сценарій стеження за цілісністю та актуальністю інформації в базі даних 

**ID**: S1.5   
**НАЗВА**: Стеження за цілісністю та актуальністю інформації в базі даних. 
**УЧАСНИКИ**: Адмін; Система   
**ПЕРЕДУМОВИ**: 
Відсутні. 

**РЕЗУЛЬТАТ**: Залежить від проблеми в системі.  
**ВИКЛЮЧНІ СИТУАЦІЇ**:  
1. Адміністратор не в змозі виправити помилку. 
**ОСНОВНИЙ СЦЕНАРІЙ**:  
Все залежить від ситуації.

### 2.6 Сценарій блокування аккаунтів

**ID**: S1.6 
**НАЗВА**: Блокування аккаунтів.  
**УЧАСНИКИ**: Адмін; Користувач; Система.    
**ПЕРЕДУМОВИ**:  
1. Підозрілі дії користувача.

**РЕЗУЛЬТАТ**:  
В залежності від рішення адміністратора:
  1. Блокування аккаунту.
  2. Попередження.
**ВИКЛЮЧНІ СИТУАЦІЇ**:   
1. Система помилилась.


**ДІАГРАМА**: ![se-1-6](http://www.plantuml.com/plantuml/png/TP4zJiD048LxdsBQb536JGwI1WawC0X2vyA9WOWceK16ea7SOB6ynFXdVOKtD-9fx9Hni-FPxttQdLqyh2xkLuytrr6AJmJDKEjQDvgZXDDj6Wa_OwoQumEL5lZJDNhTwRjWu6-5W8Dch5ejn8YjI6oH5D-Z4nuTN3fws1mOAhNGLytfWQEbOx1dYpHFufW9olKeUZk57ALVy6nwqsQwfnQzYHqpkLZqoPmTeo-aTl4KBL7Z1xKv6GiCzV22Wv0D-4LBW90-Yus6bpNhXcivNoPdCyPRaetDZblSt0kB1WtvtDWyNYRdCxlwC9srejkFT3nD-_OkMbmbbtoLVm00)

**ОСНОВНИЙ СЦЕНАРІЙ**:   
1. Підозрілі дії користувача.
2. Система сповіщує адміністратора.
3. Адміністратор перевіряє надану інформацію.
4. Адміністратор вибирає одне з можливих варіантів:
  1. Блокування аккаунту;
  2. Попередження;
  
### 2.7 Сценарій сповіщення про помилку

**ID**: S1.3  
**НАЗВА**: Сповіщення про помилку. 
**УЧАСНИКИ**: Адмін; Система.   
**ПЕРЕДУМОВИ**:  
1. В роботі системи виникла помилка. 

**РЕЗУЛЬТАТ**: Адміністратор дізнається про помилку.   
**ВИКЛЮЧНІ СИТУАЦІЇ**:   
Відсутні. 
**ОСНОВНИЙ СЦЕНАРІЙ**:   
1. Система видає помилку.
2. Система сповіщує адміністратора.


**ДІАГРАМА**: 
![se-1-7](http://www.plantuml.com/plantuml/png/VP1B2i8m68JtFKNEePjUHT2T3x5rruMsAq5Gf7JV6yIYM6mRhp1p8uT05q9j82JvvvjXI1Z5irsyNos312Lg7fdYYHOs2OoML_rjK9xWPdY0mnsEAGk32ZKwxJSQM8EFj5RFHWCx7GqIzO1b_cDYDcegFLknu8cPhB3AQ5cWqqYqkbbv77NsGTT_I1-QItoXqpYNV1PqKITnRh1Q56-sGRXOp_M9Nm00)

### 2.8 Сценарій обробки інформації

**ID**: S1.8     
**НАЗВА**: Обробка інформації.  
**УЧАСНИКИ**: Система; Користувач.  
**ПЕРЕДУМОВИ**:  
1. Наявність запиту на обробку інформації.

**РЕЗУЛЬТАТ**: Відфільтрована інформація.  
**ВИКЛЮЧНІ СИТУАЦІЇ**:   
1. Дані відсутні в системі.

**ОСНОВНИЙ СЦЕНАРІЙ**:   
1. Система отримує запит.
2. Система відфільтрвує інформацію.
3. Ситема надає результат користувачу.


**ДІАГРАМА**:![se-1-8]( http://www.plantuml.com/plantuml/png/VP0z2i9048Nxd6BFOPfSHT3E7z7ORQ7Pe8rOY4GG5Bn130cHcCGhlBcHZqqGHCaMop0pxtlCynP-V-ulnoD7uunQLdZ8MW8nI13BLZkAp-xOgeSACLAEZWevonVt0mLs5MhSgUUFGeoI29M45bboVoEHd5mBqRWrBiZ0aMx9LzhI7gMOBtgdw42RL4B-JzbPG8t40lxuxpjHbyzbb6J8nJHCjdXXyHkE6BUDPpfplE5am1ZV)

