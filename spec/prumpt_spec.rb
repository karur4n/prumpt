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
        is_expected.to raise_error
      end
    end
  end
end
