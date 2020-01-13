

class Arr
	def sum(a,n)
		@a=a
		sum=0
		for i in 0..(n-1)
		@a.sum
		end
		return sum
        end
	def min(a)
		 puts"Minimum value is #{a.min}"
	end
	def max(a)
		@a=a
		puts "Maximum value is #{@a.max}"
	end
	def average(a,n)
		@a=a
		ans=(sum(@a,n).to_f)/(n.to_f)
		puts "Average is #{ans}"
	end
	def search(a,y)
		@a=a
		puts @a.include?(y)
	end
	def display(a,n)
		@a=a
		puts"The contents of array are:"
		for i in 0..(n-1)
		puts"#{@a[i]} "
		end
	end
end
       puts "Give the number of elements"
       n=gets.chomp.to_i
       a=[]
       puts"Give the elements :"
       for i in 0..(n-1)
       a[i]=gets.chomp.to_i
       end
       temp=Arr.new
	begin
       puts "\n1)Sum \n2)Minimum \n3)Maximum \n4)Add a new number \n5)Average \n6)Search a number \n7)Display \n8)Delete a value \n9)Delete by index \n10)Exit"
       o=gets.chomp.to_i
       case o 
		when 1 then puts "The sum is #{a.sum}"
		when 2 then temp.min(a)
		when 3 then temp.max(a)
		when 4 then puts "Give the number to be added"
			    x=gets.chomp.to_i
			    a.push(x)
			    n=n+1
		when 5 then temp.average(a,n)
		when 6 then puts "Give the number to be searched"
		 	    y=gets.chomp.to_i
			    if(a.include?y)
			    puts"The number is present\n"
			    else puts"The number is absent\n"
			    end
		when 7 then temp.display(a,n)
		when 8 then puts "Give the number to be deleted"
			    s=gets.chomp.to_i
			    a.delete(s)
		when 9 then puts "Give the index of the number to be deleted"
                            t=gets.chomp.to_i
 			    a.delete_at(t)
                when 10 then puts"Exiting..."
		else puts "Invalid...!"	
      end
        end while (o!=10)
