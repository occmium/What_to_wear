# encoding: utf-8
# Задача 26-3 — Что надеть?

class Collection
  def types_of_things(array)
    array.map { |hash_cloth| hash_cloth[:cloth_type] }.uniq
  end

  def things_of_one_type(array, type)
    array.select { |hash_cloth| hash_cloth.value?(type) }
  end
end
