class Student 
	attr_writer :rollno, :name, :state, :branch, :cgpa
	attr_reader :rollno, :name, :state, :branch, :cgpa
	def add()
		puts"Roll no :"
		@rollno=gets.chomp.to_i
		puts"Name :"
		@name=gets.chomp
		puts"State :"
		@state=gets.chomp
		puts"Branch :"
		@branch=gets.chomp
		puts"CGPA :"
		@cgpa=gets.chomp
	end
	def display1()
		puts"Roll no : #{@rollno}\n"
		puts"Name :#{@name}\n"
		puts"State :#{@state}\n"
		puts"Branch :#{@branch}\n"
		puts"CGPA :#{@cgpa}\n"
	end
end
stud=Array.new() {Student.new}
begin
puts"1)Add new student\n2)Display all students\n3)Display students by branch\n4)Display sudents by state\n5)Search students by roll number\n6)Search by part of the name\n7)Delete by roll number\n8)Count and display number of students by state\n9)Count and display number of students by branch\n10)Exit"
o=gets.chomp.to_i
case o
	when 1 then temp=Student.new
		    temp.add
		    stud.push temp
	when 2 then for i in 0..(stud.length-1)
		    puts"\nStudent #{i+1}\n"
	   	    stud[i].display1()
		    end
		    puts"\n"
	when 3 then a=[]
		    for i in 0..(stud.length-1)
		    a.push stud[i].branch
		    end
		    a.uniq!
		    for i in 0..(a.length-1)
		    puts"----#{a[i]}----"
		    for s in 0..(stud.length-1)
		    if(stud[s].branch==a[i])
		    stud[s].display1()
		    puts"\n"
		    end
		    end
		    end
	when 4 then a=[]
		    for i in 0..(stud.length-1)
		    a.push stud[i].state
		    end
		    a.uniq!
		    for i in 0..(a.length-1)
		    puts"----#{a[i]}----"
		    for s in 0..(stud.length-1)
		    if(stud[s].state==a[i])
		    stud[s].display1()
		    puts"\n"
		    end
		    end
		    end
	when 5 then puts"Give the roll number"
		    n=gets.chomp.to_i
		    t=0
		    for i in 0..(stud.length-1)		
		    if(stud[i].rollno==n)
		    stud[i].display1()
		    puts"\n"
		    t=1
		    end
		    end
		    if(t==0)
		    puts"\nNo match..\n\n"
		    end
	when 6 then puts"Give the name of the student :"
		    b=[]
		    b=gets.chomp
		    c=[]
		    test=0
		    for i in 0..(stud.length-1)
		    c.push stud[i].name
		    end
		    for i in 0..(c.length-1)
		    if(c[i].include?b)
		    stud[i].display1()
		    puts"\n"
		    test=1
		    end
		    end
		    if(test==0)
		    puts"\nNo match..\n\n"
		    end
	when 7 then puts"Give the roll number to be deleted"
		    n=gets.chomp.to_i
		    c=Student.new
		    for i in 0..(stud.length-1)		
		    if(stud[i].rollno==n)
		    c=stud[i]
		    end
		    end
		    stud.delete(c)
	when 8 then a=[]
		    for i in 0..(stud.length-1)
		    a.push stud[i].state
		    end
		    a.uniq!
		    for i in 0..(a.length-1)
		    puts"\n#{a[i]}--> "
		    count=0
		    for s in 0..(stud.length-1)
		    if(stud[s].state==a[i])
		    count=count+1
		    end
		    end
		    puts"Number of students : #{count}\n"
		    end
		    puts"\n"
	when 9 then a=[]
		    for i in 0..(stud.length-1)
		    a.push stud[i].branch
		    end
		    a.uniq!
		    for i in 0..(a.length-1)
		    puts"\n#{a[i]}-->"
		    count=0
		    for s in 0..(stud.length-1)
		    if(stud[s].branch==a[i])
		    count=count+1
		    end
		    end
		    puts"Number of students : #{count}\n"
		    end
		    puts"\n"
	when 10 then puts"Exiting.."	
	else puts"\nInvalid Option !\n\n"    

end
end while o!=10

