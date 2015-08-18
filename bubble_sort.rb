def bubble_sort(a)
	(a.length - 1).downto(1) do |i|
		0.upto(i - 1) do |j|
			a[j], a[j + 1] = a[j + 1], a[j] if a[j] > a[j + 1]
		end
	end
	a
end

def bubble_sort_by(a)
	(a.length - 1).downto(1) do |i|
		0.upto(i - 1) do |j|
			a[j], a[j + 1] = a[j + 1], a[j] if yield(a[j], a[j + 1]) > 1
		end
	end
	a
end

p bubble_sort([4, 3, 6, 8, 3, 12, 5, 25, 10, 13])

p bubble_sort_by(["hi","hello","hey"]) { |left,right| left.length - right.length }