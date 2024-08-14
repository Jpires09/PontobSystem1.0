module CalendarsHelper
  def translate_day(day)
    translations = {
      "Sunday" => "Domingo",
      "Monday" => "Segunda-Feira",
      "Tuesday" => "Terça-Feira",
      "Wednesday" => "Quarta-Feira",
      "Thursday" => "Quinta-Feira",
      "Friday" => "Sexta-Feira",
      "Saturday" => "Sábado"
    }
    translations[day] || day
  end
end
