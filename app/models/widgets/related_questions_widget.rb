class RelatedQuestionsWidget < Widget
  field :settings, :type => Hash, :default => { :on_show_question => true }

  def question_only?
    true
  end

  protected
end
