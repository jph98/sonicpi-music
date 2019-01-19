#!/usr/bin/env ruby

HEADER = ["octave", "C", "C#", "D", "D#", "E", "F", "F#", "G", "G#", "A", "A#", "B"]

def generate_header()
    HEADER.each do |note|
        print "|#{note}"
    end
    puts "|"
    HEADER.each do |note|
        print "| --- "
    end
    puts "|"
end

def generate_notes()

    row_num = 0
    128.times do |note_num|
        
        if row_num.eql? 0 and note_num.eql? 0
            print "| "
        elsif note_num != 0 and (note_num % 12).eql? 0 
            puts "|"
            print "|#{row_num}"
            row_num += 1            
        end        

        print "|#{note_num}"
    end
    puts "|"
end

generate_header()
generate_notes()
