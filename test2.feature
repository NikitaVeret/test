Feature: Test 2

Scenario: Поисковый запрос наушники
    Given Открываю в браузере Yandex.ru
    When  Открываю Yandex.Маркет
    And  Выбираю раздел Электроника
    And  Выбраю раздел Наушники
    And  Перейти в расширенный поиск                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
    And  Задать параметр поиска от 5000 рублей
    And  Выбрать производителя Beats
    And  Нажать кнопку Применить
    And  Проверить, что элементов на странице 12
    And  Запомнить первый элемент в списке
    And  В поисковую строку ввести запомненное значение.
    And  Найти и проверить, что наименование товара соответствует запомненному значению



