module GroupHelper
  # Retorna os dias únicos dos groups
  def unique_days(groups)
    groups.map(&:day).uniq
  end

  # Retorna os horários únicos e ordenados dos groups
  def sorted_times(groups)
    groups.pluck(:time).uniq.sort
  end

  # Encontra o group correspondente para um dado horário e dia
  def find_group(groups, time, day)
    groups.find { |t| t.time == time && t.day == day }
  end

  # Formata o conteúdo da célula da tabela
  def format_group_cell(group)
    if group
      link_to "#{group.modality} - #{group.age}", group_path(group)
    else
      # Deixa a célula vazia se não houver turma
      ""
    end
  end
end
