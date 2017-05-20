def clever_print(*params)
  converted_params = []
  params.map do |param|
    if param.is_a?(Hash)
      converted_params << param.to_a
      next
    end
    converted_params << param
  end

  puts converted_params.join(' ')
end


clever_print(["Ruby"], "the", ["Programming", "Language"])
#=> Ruby the Programming Language

clever_print(["Agile", "Web", "Development"], "with", { :Rails => 3.0 })
#=> Agile Web Development with Rails 3.0
