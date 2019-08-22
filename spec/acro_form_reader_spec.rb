# coding: utf-8

describe PDF::AcroFormReader do
  let(:acro_form) { pdf_spec_file("acro_form")}

  describe "#fields_hash" do
    it "returns an Hash of field name and value" do
      expected_hash = { 'Date__optional' => nil,
                        'Date_required' => nil,
                        'Dropdown_optional' => "3",
                        'Dropdown_required' => "3",
                        'Group3' => nil,
                        'List Box_optional' => "3",
                        'List Box_required' => "3",
                        'Textbox1_optional' => nil,
                        'Textbox1_required' => nil,
                        'Textbox2_optional' => nil,
                        'Textbox2_required' => nil,
                        'Textbox3_numerical_optional' => nil,
                        'Textbox3_numerical_required' => nil }

      expect(PDF::AcroFormReader.new(acro_form).fields_hash).to eql(expected_hash)
    end
  end
end
