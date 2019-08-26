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

And(/^Выбрать сортировку по цене$/) do
    
    el = @driver.find_element(css: "div>a", with: 'по цене')
    el if el && el.displayed?
    el.click
end

