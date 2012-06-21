# Time estimator
# Author: Plekhanov Dmitriy onemanstartup@gmail.com

class Category
  field :title
  belongs_to task
end

class Task
  field :title
  
  field :estimated_end_time
  field :estimated_end_excuse
  field :estimated_refine_time
  field :estimated_refine_excuse
  field :estimated_overall_time
  field :estimated_overall_excuse

  field :real_end_time
  field :real_overall_time
  
  field :done
  field :refined

  has category

  notificate when estimated_end_time
    done?
    good_enough? or refine?
    if not done?
      what excuses?
    end
    if not good_enough?
      what excuses?
    end

  if taked more overall time
    what excuses?
  end
end


