module Prismic

	class Document
		# Simply to avoid typing .html_safe at the end of each as_html call.
		def as_html_safe(link_resolver = nil)
			as_html(link_resolver).html_safe
		end
	end

	module Fragments
		class Fragment

			# Simply to avoid typing .html_safe at the end of each as_html call.
			def as_html_safe(link_resolver = nil)
				as_html(link_resolver).html_safe
			end
		end

		# You can override any of the kit's features at will, in its HTML serialization for instance.
		# (The kit provides a basic one, but you get to make the one that best fits your design)
		# For instance, below is a commented-out overriding of the HTML serialization for images within StructuredText fragments.
=begin
		class StructuredText
			class Block
				class Image
					def as_html(link_resolver = nil)
						%(<p class="image"><img src="#{url}"></p>)
					end
				end
			end
		end
=end
    class StructuredText
      def first_paragraph_as_text
        blocks.select{ |b| b.is_a?(Prismic::Fragments::StructuredText::Block::Paragraph) }.first.as_text
      end
      def first_image
        blocks.select{ |b| b.is_a?(Prismic::Fragments::StructuredText::Block::Image) }.first
      end
    end



	end
end