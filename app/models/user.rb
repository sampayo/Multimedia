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
  
  def self.buscar(id)
    return Usuario.find_by_sql('select u.nombre, u.seudonimo,c.comentario from usuarios u, comentarios c where u.id = c.usuarios_id and (u.nombre like "%'+ id +'%" or u.seudonimo like "%'+ id +'%" or c.comentario like "%'+ id +'%") order by c.created_at desc limit 15')
  end

  def self.comentarios1(id)
    @user=Usuario.find(id)
    return Usuario.find_by_sql('select u.nombre, u.seudonimo,c.comentario from usuarios u, comentarios c where u.id=c.usuarios_id and (u.id=' + @user.id.to_s + ' or c.comentario like @' + @user.seudonimo + ')  order by c.created_at DESC limit 10')
  end  
    
end



