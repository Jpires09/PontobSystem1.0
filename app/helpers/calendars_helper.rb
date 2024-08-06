module CalendarsHelper
  def translate_day(day)
    translations = {
      "Sunday" => "Domingo",
      "Monday" => "Segunda-feira",
      "Tuesday" => "Terça-feira",
      "Wednesday" => "Quarta-feira",
      "Thursday" => "Quinta-feira",
      "Friday" => "Sexta-feira",
      "Saturday" => "Sábado"
    }
    translations[day] || day
  end
end
