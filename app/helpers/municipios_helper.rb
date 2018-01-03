module MunicipiosHelper
	def get_estado(id)
    if id.eql? true
      'Activo'
    else
      'Inactivo'
    end
  rescue
    ''
  end
end
