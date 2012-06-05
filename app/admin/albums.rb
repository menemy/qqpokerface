ActiveAdmin.register Album do


end

def image_hint(form, size)
	if not form.object.image_file_name.nil?
		form.template.image_tag form.object.image.url(size)
	else
		"No image yet."
	end
end