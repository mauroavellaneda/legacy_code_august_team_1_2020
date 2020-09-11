feature 'User can receive a message' do 
    
        let(:user) { FactoryBot.create(:user )}
        before do 
            login_as(user, scope: :user)
            visit root_path
            user.send_message(user, 'Hello receiver!', 'Hi there')

        end


  
    describe 'User can send a message' do
        it 'User should see success message' do
            expect(page).to have_content 'Your message was successfully sent!'
            
        end
    end

    



end