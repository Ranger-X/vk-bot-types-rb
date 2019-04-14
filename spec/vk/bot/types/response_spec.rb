RSpec.describe VK::Bot::Types::Response do
  it 'has WRAPPED_METHODS' do
    expect(described_class::WRAPPED_METHODS).to be_instance_of(Hash)
  end

  describe '.wrap' do
    subject { described_class.wrap(object, type) }
    let(:type) { VK::Bot::Types::UsersUser }
    let(:object) { {'first_name' => 'User1', 'last_name' => 'LastName1', 'id' => 1, 'deactivated' => '', 'hidden' => 0,
                    'online' => 'no', 'online_app' => '', 'online_mobile' => 1, 'photo_100' => '', 'photo_50' => '',
                    'screen_name' => 'User1', 'sex' => 'male'
    } }

    it { should be_instance_of(type) }
    its(:last_name) { should eq object['last_name'] }

    context 'when boolean is given' do
      let(:object) { true }
      it { should eq true }
    end

    context 'when type is array' do
      let(:type) { [super()] }
      let(:object) { [super(), {'first_name' => 'User2', 'last_name' => 'LastName2', 'id' => 2, 'deactivated' => '', 'hidden' => 0,
                                'online' => 'yes', 'online_app' => '', 'online_mobile' => 1, 'photo_100' => '', 'photo_50' => '',
                                'screen_name' => 'User2', 'sex' => 'female'}] }
      it 'returns array of wrapped objects' do
        subject.each_with_index do |x, i|
          expect(x).to be_instance_of(type.first)
          expect(x.id).to eq object[i]['id']
        end
      end
    end
  end
end
