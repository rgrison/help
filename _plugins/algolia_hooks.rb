module Jekyll
	module Algolia
		module Hooks

			LARGE_ENTRIES = [:excerpt_text, :excerpt_html].freeze
			
			def self.should_be_excluded?(filepath)
				return true if filepath =~ %r{styleguide.html} 
				return true if filepath =~ %r{/shells/stacks.md}
				return true if filepath =~ %r{/index.md}
				return true if filepath =~ %r{/add-ins/database-backups.md}
				false
			end

			# fields `excerpt` and `excerpt_html` reduced to 500 characters
			def self.before_indexing_all(records, context = {})
				records.each do |record|

					LARGE_ENTRIES.each do |large_entry|
						if record.key?(large_entry)
							record[large_entry] = record[large_entry][0, 500]
						end
					end
					
				end

				records
			end
		end
	end
end
