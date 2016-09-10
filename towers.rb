#There are three imaginary rods. Only the far left rod has three discs
#stacked. Each disc has its own size: small, medium and large stacked
#in that order. The objective of the game is to move all discs from the
#left rod to the right rod. You may only move one disc at a time. And
#you may only stack smaller discs on top of larger discs.

#   1 												    1
#   2												    2	
# 	3					objective					    3
						  #===>	
# 	A		B		C				# 	A		B		C


#intialize
#play
#render
#won?
#valid_move?
#move(from, to)

small_disc =  1 
medium_disc = 2
large_disc =  3
towers = {
'a' => [large_disc, medium_disc, small_disc],
'b' => [],
'c' => []
}

puts "welcome to Tower of Hanoi"
puts "
1
2
3
A		B		C"
puts "Migrate all discs from tower A to tower C"
puts "Play by selecting where to place your first disc from and to"

while towers['c'].length < 3
	from, to = gets.chomp.split

	if ! towers[from].empty? && (towers[to].empty? || towers[from].last < towers[to].last)
		towers[to] << towers[from].pop

	#error message when a bigger disc is placed on top of a small disc
	elsif
		puts "hmm that's against the rule."
	end

	p towers ['a']
	p towers ['b']
	p towers ['c']
	puts "place your next move"
end
puts "congrats"




