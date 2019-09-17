Given(/^Открываю в браузере Yandex.ru$/) do
    @driver.get('http://www.translate.yandex.ru')
    @driver.manage().window().maximize()
end

When(/^Открываю Yandex.Маркет$/) do
    el = @driver.find_element(css: "div>a", with: 'Маркет')
    el if el && el.displayed?
    el.click
    sleep 15
end

When(/^Ввожу в поле поиска "(.*)"$/) do |text|
    el = @driver.find_element(:xpath, "//input[@aria-label='Запрос']")
    el if el && el.displayed?
    el.send_keys(text)
end

And(/^Нажали кнопку "(.*)"$/) do |text|
    el = @driver.find_element(css: "button", with: text)
    el if el && el.displayed?
    el.click
end

When(/^Нажали ссылку "(.*)"$/) do |text|
    el = @driver.find_element(css: "div", with: text)
    el if el && el.displayed?
    el.click
    sleep 10
end