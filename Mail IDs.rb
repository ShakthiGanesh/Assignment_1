class Str
	
	
	def search(a,b)
		if(a.include?b)
		puts"\nYES,IT IS PRESENT\n\n"
		else puts"\nNO,IT IS ABSENT\n\n"
		end
	end
	
end
	a=[]
	b=[]
	c=[]
	temp=Str.new
begin
	puts"1)Add Mail ID \n2)Dislay all \n3)Display only edu IDs \n4)Search \n5)Delete Mail IDs \n6)Display unique domains \n7)Count IDs in given domain \n8)Exit"
	o=gets.chomp.to_i
	case o
		when 1 then puts "Give the mail ID "
                            b=gets.chomp
			    a.push(b)
			    n=a.length
		when 2 then puts"#{a.display}\n\n"
		when 3 then puts"Edu Mails :\n"
			    for i in 0..(n-1)
			    if(a[i].include?".edu")
			    puts a[i]
			    end
		            end
			    puts "\n" 
		when 4 then puts"Give the ID to be searched :"
			    b=gets.chomp
		            temp.search(a,b)
		when 5 then puts"Give the ID to be deleted :"
			    c=gets.chomp
			    a.delete(c)
			    n=a.length
		when 6 then f=[]
			    g=[]
			    for i in 0..(n-1)
		 	    f=a[i].split"@"
		            g[i]=f[1]
		            end
			    g.uniq!
			    puts"Unique Domains :\n"
			    for i in 0..(g.length-1)
		            puts "@#{g[i]}"
			    end
			    puts"\n"
		when 7 then puts"Count of each domain\n"
			    f=[]
			    for i in 0..(n-1)
			    b=a[i].split"@"
			    f[i]=b[1]
		            end
			    d=[]
		            for i in 0..(f.length-1)
			    d.push(f[i])
			    end
			    d.uniq!	
			    for i in 0..(d.length-1)
			    e=f.count d[i]
			    puts "@#{d[i]} :#{e}"
			    end
			    puts"\n"
	      when 8 then puts"Exiting.."
	      else  puts "Invalid Option..!\n\n"
	end
end while (o!=8)

