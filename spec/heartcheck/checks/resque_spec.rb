describe Heartcheck::Checks::Resque do
  subject(:check) { described_class.new.tap { |c| c.add_service(opts) } }

  let(:opts) { { failures_limit: 0 } }

  describe '#validate' do
    subject(:validate!) { check.validate }

    let(:errors) { -> { check.instance_variable_get(:@errors) } }

    context 'with errors' do
      before { allow(Resque::Failure).to receive(:count).and_return(2) }

      it 'sets @error' do
        expect { validate! }.to change(&errors)
          .from([])
          .to(['Resque failed! 2 failures'])
      end
    end

    context 'with success' do
      before { expect(Resque::Failure).to receive(:count).and_return(0) }

      it 'has no errors' do
        expect { validate! }.to_not change(&errors).from([])
      end
    end
  end
end
