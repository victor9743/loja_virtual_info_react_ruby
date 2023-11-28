namespace :popular_memorias_ram do
    desc "Popular tabela memorias ram"
    task import: :environment do
        MemoriasRam.create!(
            nome: "Corsair Vengeance LPX",
            capacidade: 16,
            tipo: "DDR4",
            velocidade: "3200 MHz",
            preco: 400
        )

        MemoriasRam.create!(
            nome: "Kingston HyperX Fury",
            capacidade: 8,
            tipo: "DDR4",
            velocidade: "2666 MHz",
            preco: 250
        )

        MemoriasRam.create!(
            nome: "G.Skill Ripjaws V",
            capacidade: 32,
            tipo: "DDR4",
            velocidade: "3600 MHz",
            preco: 600
        )
        
        MemoriasRam.create!(
            nome: "G.Skill Ripjaws V",
            capacidade: 32,
            tipo: "DDR4",
            velocidade: "3600 MHz",
            preco: 600
        )

        MemoriasRam.create!(
            nome: "Crucial Ballistix Sport",
            capacidade: 16,
            tipo: "DDR4",
            velocidade: "3000 MHz",
            preco: 350
        )

        MemoriasRam.create!(
            nome: "Team T-Force Vulcan Z",
            capacidade: 8,
            tipo: "DDR4",
            velocidade: "2400 MHz",
            preco: 200
        )
    end
end
