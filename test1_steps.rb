Given(/^Открываю в браузере Yandex.ru$/) do
    @driver.get('http://www.yandex.ru')
    @driver.manage().window().maximize()
end

When(/^Открываю Yandex.Маркет$/) do
    el = @driver.find_element(css: "div>a", with: 'Маркет')
    el if el && el.displayed?
    el.click
end

And(/^Выбираю раздел Электроника$/) do
    el = @driver.find_element(css: "div>a", with: 'Электроника')
    el if el && el.displayed?
    el.click
end

And(/^Выбираю раздел Смартфоны$/) do
    el = @driver.find_element(css: "div>a", with: 'Смартфоны')
    el if el && el.displayed?
    el.click
end

And(/^Задаю параметр поиска от 20000 рублей/) do
    @driver.find_element(:id, "txtот").send_keys "20000" 
end

And(/^Выбираю производителей Apple и Samsung$/) do
    el=@driver.find_element(:id => 'Apple')
    @driver.switch_to.frame el
    @driver.find_element(:css, "Apple").click

    el=@driver.find_element(:id => 'Samsung')
    @driver.switch_to.frame el
    @driver.find_element(:css, "Samsung").click
end






