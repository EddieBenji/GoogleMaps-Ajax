class Zombie < ActiveRecord::Base

  # Con el validate: true, al momento de salvar el brain
  # hará las validaciones de brain igual.
  has_one :brain, dependent: :destroy, validate: true
  has_many :assignments
  has_many :roles, through: :assignments

  # En el controlador puedes poner:
  # Zombie.recent
  scope :recent, -> {
    order('created_at desc').limit(4)
  }
  # Zombie.ed
  scope :eduardo, -> {
    where(name: 'Eduardo', email: 'eduardo_benji@hotmail.com')
  }
  # Incluso: Zombie.recent.ed

  #before_save :make_rotting
  after_save :set_empty_brain
  # after_save :decomp_change_notification, if: :bio_changed?

  def make_rotting
    self.rotting = true if age > 20
  end

  def set_empty_brain
    create_brain(status: '--', flavor: '--')
  end

  # def as_json(options=nil)
  #   super(options || {include: :brain, except: [:created_at, :updated_at, :id]})
  # end

  private

  def decomp_change_notification
    ZombieMailer.decomp_change(self).deliver_now
    puts 'MAIL SENT'
  end
end
