def check_braces(expression)
  valid_pairs = {'(' => ')', '[' => ']', '{' => '}'}

  brace_balancer = []
  expression.split('').each do |char|
    if valid_pairs.keys.include?(char)
      brace_balancer << char
    elsif valid_pairs.values.include?(char)
      if brace_balancer.last == valid_pairs.key(char)
        brace_balancer.pop
      else
        brace_balancer << char
      end
    end


  end
    if brace_balancer.empty?
      true
    else
      false
    end
end

p check_braces(")(){}") == false
p check_braces("()[]{}") == true
p check_braces("{()[]}") == true
p check_braces("({[)]") == false
p check_braces("{[()]}") == true
