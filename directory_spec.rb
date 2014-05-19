describe 'creating students' do 

	it 'with name, cohort, and year' do
		expect(create_student('sam', :may, 2014)).to eq ({name: 'sam', cohort: :may, year: 2014})
	end
	it 'with name, cohort, and year' do
		expect(create_student('rico', :june, 2013)).to eq ({name: 'rico', cohort: :june, year: 2013})
	end

end