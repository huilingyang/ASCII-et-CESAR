def chiffre_de_cesar(lettre_origine)

	mon_texte_final = ""
 
	text_origine.chars.each do |lettre_origine|
		
		#puts "test : #{lettre_origine}"
		text_final=lettre_origine.ord+3
		if (lettre_origine.ord >= 65 && lettre_origine.ord <= 90) || (lettre_origine.ord >= 97 && lettre_origine.ord <= 122)
			i =65 
			n =97
			if lettre_origine.ord >= 65 && lettre_origine.ord <= 90
				if text_final >= 90
				text_final=	i+(text_final-91)	
				end
			end
			if lettre_origine.ord >= 97 && lettre_origine.ord <=122
				if text_final >= 122
				text_final= n+(text_final-123)
				end
			end
			mon_texte_final << text_final.chr 
		else
			mon_texte_final << lettre_origine
		end
	end

	puts mon_texte_final

end



