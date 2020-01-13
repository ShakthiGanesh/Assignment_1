class Calci
	def add(a,b)
	@ans=a+b
	end
	def sub(a,b)
	@ans=a-b
	end
	def mul(a,b)
	@ans=a*b
	end
	def div(a,b)
	@ans=a/b
	end
end
begin
     
     puts"\n1)Add \n2)Subtract \n3)Multiply \n4)Division \n5)Exit"
     a=gets.chomp.to_i
     temp=Calci.new
    
     
	case a

		when 1 then 
		        puts"\nGive the Numbers"
     			x=gets.chomp.to_f
     			y=gets.chomp.to_f
		        puts "The ans is #{temp.add(x,y)}"
        	when 2 then 
		        puts"\nGive the Numbers"
                        x=gets.chomp.to_f
                        y=gets.chomp.to_f
                        puts "The ans is #{temp.sub(x,y)}"			
		when 3 then
		        puts"\nGive the Numbers"
     		        x=gets.chomp.to_f
     			y=gets.chomp.to_f
		        puts "The ans is #{temp.mul(x,y)}"
		when 4 then
			puts"\nGive the Numbers"
     			x=gets.chomp.to_f
     			y=gets.chomp.to_f
		        puts "The ans is #{temp.div(x,y)}"
		when 5 then
                        puts"Thank You"
		else puts"\nWrong choice"
	end
	
end while a!=5
 

    	
