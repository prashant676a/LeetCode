def minimize_xor(num1, num2)
  result = num1
  
  target_set_bits_count = num2.to_s(2).count("1")
  set_bits_count = num1.to_s(2).count("1")
  #start_with_lsb
  current_bit = 0

  while set_bits_count < target_set_bits_count
      if !is_set?(result, current_bit)
        result = set_bit(result, current_bit)
        set_bits_count += 1
      end
      current_bit += 1
  end

  # Remove bits from result if it has more set bits than target
  while set_bits_count > target_set_bits_count
      if is_set?(result, current_bit)
          result = unset_bit(result, current_bit)
          set_bits_count -= 1
      end
      current_bit += 1
  end

  result
end

def set_bit(number, n)
  number | (1 << n)
end

def unset_bit(number, n)
  number & ~(1 << n)
end

def is_set?(number, n)
  ((number >> n) & 1) == 1
end
