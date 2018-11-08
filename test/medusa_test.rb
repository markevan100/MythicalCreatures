gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues

    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue

    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone

    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims

    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")
    victim1 = Person.new("Theseus")
    victim2 = Person.new("Hercules")
    victim3 = Person.new("Hermes")
    medusa.stare(victim)
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    assert_equal 3, medusa.statues.count


  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")
    victim1 = Person.new("Theseus")
    victim2 = Person.new("Hercules")
    victim3 = Person.new("Hermes")
    victim4 = Person.new("JoshyJosh")
    medusa.stare(victim)
    assert victim.stoned?
    medusa.stare(victim1)
    medusa.stare(victim2)
    medusa.stare(victim3)
    assert victim1.stoned?
    assert victim2.stoned?
    assert victim3.stoned?
    refute victim.stoned?
    medusa.stare(victim4)
    assert victim4.stoned?
    refute victim.stoned?
    refute victim1.stoned?
    assert_equal 3, medusa.statues.count

    # your code here
  end

end
