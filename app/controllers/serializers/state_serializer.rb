class StateSerializer

  def initialize(state_obj)
    @state = state_obj
  end

  def to_serialized_json
    @state.to_json({
      include: {parks: {except: [:created_at, :updated_at]}},
      except: [:created_at, :updated_at]
    })
  end
  
end