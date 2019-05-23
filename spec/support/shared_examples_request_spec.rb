shared_examples_for :deny_without_autorization do |method|_type, action, params = {}|
  it 'returns unauthorized(401) request' do
    case method_type
      when :get
        get action,
          params: params,
          headers: header_without_authentication
      when :post
        post action,
          params: params,
          headers: header_without_authentication
      when :post
        put action,
          params: params,
          headers: header_without_authentication
      when :post
        delete action,
          params: params,
          headers: header_without_authentication
      end

    expect(response.status).to eql(401)
  end
end
