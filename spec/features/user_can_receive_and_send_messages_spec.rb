feature 'User can receive a message' do 
    
        let(:user) { FactoryBot.create(:user )}
        before do 
            login_as(user, scope: :user)
            visit root_path
        end

        let(:poster) { FactoryBot.create(:user, email: 'poster@mail.com')}
        let(:receiver) { FactoryBot.create(:user, email: 'receiver@mail.com')}
        before do
            poster.send_message(receiver, 'Hello receiver!', 'Hi there')

        end


  
    describe 'User can send a message' do
        it 'User should see sucess message' do
            expect(page).to have_content 'Your message was successfully sent'
        end
    end



end