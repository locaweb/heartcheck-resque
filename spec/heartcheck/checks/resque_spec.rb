require 'spec_helper'

describe Heartcheck::Checks::Resque do
  let(:opts) { { failures_limit: 0 } }
  subject    { described_class.new.tap { |c| c.add_service(opts) } }

  describe '#validate' do
    context 'with errors' do
      before { allow(Resque::Failure).to receive(:count).and_return(2) }

      it 'sets @error' do
        subject.validate
        expect(subject.instance_variable_get(:@errors)).to eq(['Resque failed! 2 failures'])
      end
    end

    context 'with success' do
      before { expect(Resque::Failure).to receive(:count).and_return(0) }

      it 'has no errors' do
        subject.validate
        expect(subject.instance_variable_get(:@errors)).to be_empty
      end
    end
  end
end
