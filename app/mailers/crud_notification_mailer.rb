class CrudNotificationMailer < ApplicationMailer

  def creat_notification(object)
   @object = object
   @object_count = object.class.count
    attachments.inline['ruby.jpg'] = File.read('///home/developer/Desktop/ruby.jpg')
   mail to: 'shiwi@example.com' , subject: "welcome to our site #{object}"

  end

  def update_notification
    
  end

  def delete_notification
        mail to: "to@example.org"
  end
end