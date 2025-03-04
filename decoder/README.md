## Моторизированная тележка управляемая по ИК от стандартного пульта ДУ
### Модуль цифровой схемы для формирования ИК сигналов приемника.

Этот модуль позволяет 
Модуль спроектирован для работы на плате ["Карно"](https://github.com/Fabmicro-LLC/Karnix_ASB-254), на базе ПЛИС Lattice ECP5.

#### Входные сигналы:
* clk - тактовая частота;
*

#### Выходные сигналы:
* pwm_outA - ШИМ-сигнал прямого направления;
* pwm_outB - ШИМ сигнал обратного хода.

#### Установка и запуск
1. Установить OS Linux.
2. Установить инструментарий: [YosysHQ](https://github.com/YosysHQ/oss-cad-suite-build/releases/), [OpenFPGALoader](https://github.com/trabucayre/openFPGALoader).
3. Установить make: `sudo apt install make`.
4. Клонировать репозиторий в любую рабочую директорию:  
`git clone --branch motor_drv --single-branch https://github.com/Aquatic72/learning-fgpa.git`.
5. Перейти в директорию MotorDRV: `cd learning-fpga/MotorDRV`. 
6. Подключить плату "Карно" к компьютеру через USB. 
7. Выполнить синтез "битстрима": `make`.
8. Выполнить загрузку на плату: `make upload`.
