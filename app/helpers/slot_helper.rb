module SlotHelper
  # Retorna os dias únicos dos slots
  def unique_days(slots)
    slots.map(&:day).uniq
  end

  # Retorna os horários únicos e ordenados dos slots
  def sorted_times(slots)
    slots.pluck(:time).uniq.sort
  end

  # Encontra o slot correspondente para um dado horário e dia
  def find_slot(slots, time, day)
    slots.find { |t| t.time == time && t.day == day }
  end

  # Formata o conteúdo da célula da tabela
  def format_slot_cell(slot)
    if slot
      link_to "#{slot.modality} - #{slot.age}", slot_path(slot)
    else
      # Deixa a célula vazia se não houver turma
      ""
    end
  end
end
