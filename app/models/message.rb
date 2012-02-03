class Message < ActiveRecord::Base
Pusher.app_id = '14741'
Pusher.key = '4c7c38fab08d5c5fe72e'
Pusher.secret = 'badc8ab92cfab613610f'
after_create:sent_to_pusher
def send_to_pusher
	logger.info "Hi?"
	 Pusher['app_chat'].trigger('message.create', self.to_json)
end	 
end
