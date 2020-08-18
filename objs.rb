class Mob

    attr_accessor :vida, :ataque, :vivo

    def initialize
        self.vida = Random.rand(10) + 1
        self.vivo = true
    end

    def hit(alvo)
        if alvo.vivo
            self.ataque = Random.rand(7)
            puts "O dano do monstro foi #{self.ataque}"
            alvo.vida -= self.ataque
        else
            puts 'Você está morto!'
        end 

    end

    def vivo
        true if self.vida > 0    
    end

end

class Player < Mob

    attr_accessor :count

    def initialize
        self.vida = 30
        self.vivo = true
        self.count = 0
    end

    def hit(alvo)
        if alvo.vivo
            self.ataque = Random.rand(7) + 3
            puts "Você acertou o monstro, seu dano foi de #{self.ataque}"
            alvo.vida -= self.ataque
        else
            puts "O monstro está morto!\n\n"
            self.count += 1
        end 
    end

    def vivo
        true if self.vida > 0    
    end
end