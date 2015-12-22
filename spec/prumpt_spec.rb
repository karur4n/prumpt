require 'spec_helper'

describe Prumpt do
  let(:args) do
    []
  end

  describe '#get' do
    subject do
      described_class.get(*args)
    end

    context "with unknown data type" do
      let(:args) do
        ['question', :UndefinedDataType]
      end

      it 'aborts' do
        allow(STDIN).to receive(:gets) { 'user input' }
        expect { subject }.to raise_error(SystemExit)
      end
    end
  end
end
