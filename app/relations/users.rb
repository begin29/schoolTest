class Users < ROM::Relation[:sql]
  # infer schema automatically
  schema(infer: true)

  def by_id(id)
    where(id: id)
  end
end
