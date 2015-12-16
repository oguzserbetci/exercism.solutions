class Complement
	VERSION = 2

	TRANSCRIPTION_DNA = Hash['G', 'C',
									 				 'C', 'G',
									 				 'T', 'A',
									 		 		 'A', 'U']

 	TRANSCRIPTION_RNA = Hash['G', 'C',
									 		 		 'C', 'G',
									 		 		 'A', 'T',
									 		 		 'U', 'A']

	def self.of_dna(dna)
		return transcript_strand(dna,'dna')
	end

	def self.of_rna(rna)
		return transcript_strand(rna,'rna')
	end

	def self.transcript_strand(strand,type)
		if type == 'dna'
			transcription = TRANSCRIPTION_DNA
		elsif type == 'rna'
			transcription = TRANSCRIPTION_RNA
		end
		result = ''
		strand.each_char {|i| transcription[i] ? (result += transcription[i]) : (raise ArgumentError)}
		return result
	end
end
