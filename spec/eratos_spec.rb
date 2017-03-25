describe 'eratos.rb' do
  shared_examples 'shared' do |num, prime_list|
    it '数字{num}を与えた結果が、素数リスト{prime_list}であること' do
      expected_value = prime_list.to_s.delete('[]').concat("\n")
      expect(`ruby ./eratos.rb #{num}`).to eq expected_value
    end
  end

  it_behaves_like 'shared', 2, [2]
  it_behaves_like 'shared', 3, [2, 3]
  it_behaves_like 'shared', 4, [2, 3]
  it_behaves_like 'shared', 5, [2, 3, 5]
  it_behaves_like 'shared', 6, [2, 3, 5]
  it_behaves_like 'shared', 7, [2, 3, 5, 7]
  it_behaves_like 'shared', 28, [2, 3, 5, 7, 11, 13, 17, 19, 23]
  it_behaves_like 'shared', 29, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  it_behaves_like 'shared', 30, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  it_behaves_like 'shared', 31, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31]
end