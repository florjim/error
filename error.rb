# Refactoriza para que solamente te quede un renglón elegante
def dummy_encrypt(string)
    encrypted_word = string.reverse.swapcase.gsub(/[aeio]/,"*") ; return encrypted_word
end


# Descompón el método en tres métodos nuevos para hacer más comprensible el código
# Lee el método y comprende que hace y que resultado regresa 
def max_letter_frequency_per_word(sentence)
  
    resultado1 = words_longer_than(sentence, 3)
    resultado2 = letter_per_word(resultado1, "e")
    resultado3 = numbers_larger_than(resultado2)
end

def words_longer_than(array,num)
   array.split.select{|word| word.length > num}
end

def letter_per_word(array,letter)
   array.map{ |w| w.count("e") }
end

def numbers_larger_than(num_array)
   num_array.max
end


# Estas son pruebas que no debes de modificar 
# Antes y después de modificar los métodos anteriores estas lineas deben de imprimir "true"
p dummy_encrypt("EsteEsMiPassword") == "DROWSSApImS*ETS*"

p max_letter_frequency_per_word("entero entrar envase enviar enzima equino equipo erario erguir eriaza eriazo erigir eringe eficientemente electroencefalografía") == 5
