class AbstractInteractor
  include Interactor
  after :reload_resource

  def resource
    raise NotImplementedError
  end

  def performer
    context.performer
  end

  def reload_resource
    resource&.reload
  end
end
