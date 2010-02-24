class FileBlock < AbstractFileBlock

  acts_as_content_block :belongs_to_attachment => true, :taggable => true

  def set_attachment_file_path
    if @attachment_file_path && @attachment_file_path != attachment.file_path
      attachment.file_path = @attachment_file_path
    end
  end

  def set_attachment_section
    if @attachment_section_id && @attachment_section_id != attachment.section_id
      attachment.section_id = @attachment_section_id 
    end
  end
  
  def self.display_name
    I18n.t "models.file_block.display_name"
  end

end
