require "spec_helper"

RSpec.describe Pokemon do
  it "has a version number" do
    expect(Pokemon::VERSION).not_to be nil
  end

  it "Dictionary search" do
    pokemon = Pokemon::Dictionary.search(1)
    expect(pokemon.no).to eq '1'
    expect(pokemon.name).to eq 'フシギダネ'
    expect(pokemon.type1).to eq 'くさ'
    expect(pokemon.type2).to eq 'どく'
    expect(pokemon.ability1).to eq 'しんりょく'
    expect(pokemon.ability2).to eq ''
    expect(pokemon.hidden_ability).to eq 'ようりょくそ'
    expect(pokemon.hp).to eq '45'
    expect(pokemon.attack).to eq '49'
    expect(pokemon.defense).to eq '49'
    expect(pokemon.sp_attack).to eq '65'
    expect(pokemon.sp_defense).to eq '65'
    expect(pokemon.speed).to eq '45'
    expect(pokemon.total).to eq '318'
  end
end
