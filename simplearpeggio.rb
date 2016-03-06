interval = 0.2

notes = [72, 65, 58, 62]

while true
  n = 0
  notes.length.times do
    initial = notes[n]
    3.times do
      play initial
      sleep interval
      play initial + 3
      sleep interval
      play initial + 7
      sleep interval
    end
    n += 1
  end
end
