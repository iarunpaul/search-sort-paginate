module ProductsHelper
	def sortable(column, title = nil)
		title ||= column.titleize
		direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
		css_class = column == sort_column ? "current #{direction}" : nil
		link_to title, params.permit(:search).merge(sort: column, direction: direction, page: nil), { class: css_class }
	end
end
