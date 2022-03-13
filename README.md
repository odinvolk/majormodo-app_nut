majormodo-app_nut
========================
Network UPS Tools

[Форум](https://mjdm.ru/forum/viewtopic.php?f=5&t=2031)

Network UPS Tools (app_nut)

Модуль NUT для мониторинга состояния UPS -[Network UPS Tools](http://www.networkupstools.org/)

Может мониторить несколько UPS на разных компьютерах
Не требует установленных библиотек на локальном компьютере. Работает через TCP порт сервиса

Поддерживается большинство UPS и операционных систем:

 - Linux: Arch Linux, Debian, Gentoo Linux, Mandriva, Red Hat / Fedora, Novell Suse / openSUSE, OpenWrt, Ubuntu, Void Linux.
 - BSD systems: FreeBSD, NetBSD, OpenBSD, FreeNAS.
 - Mac OS X: Fink, MacPorts
 - Windows (complete port, Beta): Windows MSI installer 2.6.5-3

Параметры берутся из конфигурации UPS - Для разных UPS могут отличаться

Пример для IPON 3000

 - battery.charge - Battery charge (percent of full)
 - battery.voltage - Battery voltage (V)
 - battery.voltage.high - Description unavailable
 - battery.voltage.low - Description unavailable
 - battery.voltage.nominal - Nominal battery voltage (V)
 - device.type - Description unavailable
 - driver.name - Driver name
 - driver.parameter.pollinterval - Description unavailable
 - driver.parameter.port - Description unavailable
 - driver.version - Driver version - NUT release
 - driver.version.internal - Internal driver version
 - input.current.nominal - Nominal input current (A)
 - input.frequency - Input line frequency (Hz)
 - input.frequency.nominal - Nominal input line frequency (Hz)
 - input.voltage - Input voltage (V)
 - input.voltage.fault - Description unavailable
 - input.voltage.nominal - Nominal input voltage (V)
 - output.voltage - Output voltage (V)
 - ups.beeper.status - UPS beeper status
 - ups.delay.shutdown - Interval to wait after shutdown with delay command (seconds)
 - ups.delay.start - Interval to wait before (re)starting the load (seconds)
 - ups.load - Load on UPS (percent of full)
 - ups.productid - Product ID for USB devices
 - ups.status - UPS status
 - ups.temperature - UPS temperature (degrees C)
 - ups.type - UPS type
 - ups.vendorid - Vendor ID for USB devices

Управлять можно (Всё зависит от реализации драйверов конкретного UPS):

Пример для IPON 3000

 - beeper.toggle - Toggle the UPS beeper
 - load.off - Turn off the load immediately
 - load.on - Turn on the load immediately
 - shutdown.return - Turn off the load and return when power is back
 - shutdown.stayoff - Turn off the load and remain off
 - shutdown.stop - Stop a shutdown in progress
 - test.battery.start - Start a battery test
 - test.battery.start.deep - Start a deep battery test
 - test.battery.start.quick - Start a quick battery test
 - test.battery.stop - Stop the battery test

**Пример запуска управления. Смотрите в модуле на "Настройка\Помощь"**

[git](https://github.com/Shagrat2/majormodo-app_nut)

История:

 - 26 января 2015 - Первая версия
 - 29 января 2015 - Исправлен внешний вид; Вывод команд; Исправлен интервал проверки
 - 29 января 2015 #2 - Добавлено управление командами
