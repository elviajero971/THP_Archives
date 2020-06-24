# creating an array
facke_emails = Array.new

#adding elements to the array
x=0
while x < 50
    if x < 10
        facke_emails.push("jean.dupont.0#{x + 1}@email.fr")
    else
        facke_emails.push("jean.dupont.#{x + 1}@email.fr")
    end
    x = x + 1
end

facke_emails.length.times do |i|    # 'i' pour indice
    # Nous n'affichons que les indices pairs
    if i % 2 == 0
        puts facke_emails[i+1]
    end
end