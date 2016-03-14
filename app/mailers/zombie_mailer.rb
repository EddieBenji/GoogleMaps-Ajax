class ZombieMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.zombie_mailer.decomp_change.subject
  #
  # default from: 'test.sib.2016@gmail.com'

  def decomp_change(zombie)
    @zombie = zombie
    @role = @zombie.roles.first

    mail to: 'eduardo.942712@gmail.com', subject: 'Helloo you zombie!'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.zombie_mailer.lost_brain.subject
  #
  def lost_brain
    @greeting = 'Hi'

    mail to: 'to@example.org'
  end
end
