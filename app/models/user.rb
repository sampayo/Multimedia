class User < ActiveRecord::Base
  def self.timeLine(id)
    return Usuario.find_by_sql('select c.comentario, p.seudonimo, p.nombre from comentarios c , usuarios u, seguidores s, usuarios p where (c.usuarios_id = s.usuarios_id or c.usuarios_id = u.id) and u.id = s.seguidor_id and u.seudonimo="'+ id +'" and p.id = c.usuarios_id ORDER BY c.created_at DESC limit 10')
  end

  def self.seguidores(id)
    return Usuario.find_by_sql('select u.seudonimo, u.nombre from usuarios u,usuarios x, seguidores e where e.seguidor_id =u.id and e.usuarios_id = x.id and x.seudonimo="'+ id +'" order by e.simpatia Desc limit 5')
  end

  def self.siguiendo(id)
    return Usuario.find_by_sql('select u.seudonimo, u.nombre from usuarios u, usuarios x, seguidores e where e.usuarios_id =u.id and e.seguidor_id = x.id and x.seudonimo="'+ id +'" order by e.simpatia Desc limit 5')
  end
end

