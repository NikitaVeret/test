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

And(/^Выбираю раздел наушники$/) do
    el = @driver.find_element(css: "div>a", with: 'Наушники')
    el if el && el.displayed?
    el.click
end

And(/^Задаю параметр поиска от 20000 рублей/) do
    @driver.find_element(:id, "txtот").send_keys "5000" 
end

And(/^Выбрать производителя Beats$/) do
    el=@driver.find_element(:id => 'Beats')
    @driver.switch_to.frame el
    @driver.find_element(:css, "Beats").click
end



