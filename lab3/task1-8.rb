projects = {
  "Інтернет-магазин" => "в процесі",
  "Мобільний додаток" => "завершено",
  "CRM система" => "в процесі",
  "Особистий блог" => "завершено",
  "Чат" => "тестування",
  "Система обліку" => "в процесі",
  "Портфоліо" => nil,
  "Навчальна платформа" => "завершено",
  "База клієнтів" => nil,
  "Сайт компанії" => "в процесі"
}

tasks_count = {
  "Інтернет-магазин" => 15,
  "Мобільний додаток" => 8,
  "CRM система" => 12,
  "Особистий блог" => 5,
  "Чат" => 3,
  "Система обліку" => 10,
  "Портфоліо" => 0,
  "Навчальна платформа" => 7,
  "База клієнтів" => 4,
  "Сайт компанії" => 6
}

loop do
  puts "\n========== МЕНЮ =========="
  puts "1. Вивести список проєктів"
  puts "2. Перетворити хеш в індексний масив"
  puts "3. Відсортувати проєкти"
  puts "4. Знайти 3 проєкти з найкоротшими назвами"
  puts "5. Знайти 5 проєктів з найменшою кількістю завдань"
  puts "6. Знайти проєкт за назвою"
  puts "7. Обчислити загальну кількість завдань"
  puts "8. Перевірити та оновити відсутні статуси"
  puts "0. Вийти з програми"

  print "\nВаш вибір: "
  choice = gets.chomp.to_i

  case choice
  when 1
    # Завдання 1
    puts "\nСписок проєктів:"
    projects.each do |name, status|
      puts "#{name} — #{status || 'статус не задано'}"
    end

  when 2
    # Завдання 2
    projects_array = projects.to_a

    puts "\nІндексний масив:"
    p projects_array

  when 3
    # Завдання 3
    puts "\nОберіть спосіб сортування:"
    puts "1 — за назвою проєкту"
    puts "2 — за статусом"

    print "Ваш вибір: "
    sort_choice = gets.chomp.to_i

    if sort_choice == 1
      sorted_projects = projects.sort_by { |name, status| name }
      puts "\nСортування за назвою:"
      p sorted_projects.to_h
    elsif sort_choice == 2
      sorted_projects = projects.sort_by { |name, status| status.to_s }
      puts "\nСортування за статусом:"
      p sorted_projects.to_h
    else
      puts "Неправильний вибір!"
    end

  when 4
    # Завдання 4
    short_projects = projects.min_by(3) { |name, status| name.length }

    puts "\nТри проєкти з найкоротшими назвами:"
    short_projects.each do |name, status|
      puts "#{name} — #{status || 'статус не задано'}"
    end

  when 5
    # Завдання 5
    small_projects = tasks_count.find_all { |name, count| count > 0 }
    small_projects = small_projects.sort_by { |name, count| count }.first(5)

    puts "\nП'ять проєктів з найменшою кількістю завдань:"
    small_projects.each do |name, count|
      puts "#{name} — #{count} завдань"
    end

  when 6
    # Завдання 6
    print "\nВведіть назву проєкту: "
    project_name = gets.chomp

    if projects.key?(project_name)
      puts "Статус проєкту: #{projects[project_name] || 'статус не задано'}"
    else
      puts "Такого проєкту немає!"
    end

  when 7
    # Завдання 7
    total_tasks = tasks_count.values.inject(0) do |sum, count|
      sum + count
    end

    puts "\nЗагальна кількість завдань: #{total_tasks}"

  when 8
    # Завдання 8
    puts "\nПеревірка проєктів без статусу:"

    projects.each do |name, status|
      if status.nil? || status == ""
        print "Введіть статус для проєкту '#{name}': "
        projects[name] = gets.chomp
      end
    end

    puts "\nОновлений список проєктів:"
    projects.each do |name, status|
      puts "#{name} — #{status}"
    end

  when 0
    puts "Завершення програми."
    break

  else
    puts "Неправильний вибір! Спробуйте ще раз."
  end
end
