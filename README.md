## 1

Полная виртуализация - Автономный гипервизор. Имеет свои драйвера устройств и планировщик задач, наиболее производительный вариант.
Паравиртуализация - Хостовый гипервизор, запускается поверх обычной ОС. Выполняется как процесс на хосте.
Виртуализация на основе ОС (контейнерная) - Ядро операционной системы поддерживает несколько изолированных экземпляров пространства пользователя - окружений, в котором можно запускать необходимый нам софт.

## 2

1. Высоконагруженная база данных, чувствительная к отказу - физический сервер, с условием настроенной асинхронной репликации данных на аналогичный сервер + бекапы. Вся производительность железа уходит бд
2. Различные web-приложения - виртуализация на уровне ОС. Вебню удобнее доставлять контейнером на сервер
3. Windows системы для использования бухгалтерским отделом - паравиртуализация. Проще восстанавливать в случае сбоя
4. Системы, выполняющие высокопроизводительные расчеты на GPU - Нет однозначного ответа. Либо физический сервер, либо контейнер. GPU в условном docker подключается за 'пару команд'. Если встаёт вопрос о zero-latency, то скорее всего физический сервер.

## 3

1. VMware vSphere как стандарт в энтерпрайзе. За деньги есть всё - балансировка, репликация, бекапы
2. oVirt либо Proxmox. Бесплатно, умеют масштабироваться. Стабильность во многом зависит от рук того кто настроил + от качества оборудования.
3. Предыдущий пункт. Оба продукта спокойно жуют Windows
4. Docker. Обширная библиотека образов. Низкий порог вхождения

## 4

Зоопарк. Если делать какую-либо автоматизацию, то для двух раных систем два разных api. Больше систем виртуализации - больше штат сотрудников - больше расходы на фот. При уходе одного из ключевых сотрудников возможен коллапс одной из систем - повышается процент авайрийности. 
При необходимости миграции данных с одного кластера виртуализации на другой можно попасть на несовместимость виртуальных образов жёстких дисков. Остаётся либо ручной метод переноса данных, либо с помощью систем резервного копирования.

Для минимизации рисков - иметь бекапы и проверять их. При возможности мигрировать на одну из существующих платформ. Согласовывать с клиентом простои сервиса при миграции там где это возможно 

Ситуации могут быть разными. Дали проект, в бюджет не заложили стоимость лицензии по виртуализации - в тз прописали opensource решения. Выбрали одно из них, поставили и вроде бы всё хорошо. В один прекрасный день приходит письмо счастья о том что наша система виртуализации скоро EOL и никакой поддержки больше не будет. Тут возможен вариант что хочешь-не хочешь - вторая система виртуализации будет шуршать где-то рядом. Поэтому - если в проекте заложено платное решение - нет, никаких вторых систем. Если заложили только бесплатное - тут по обстоятельствам.
