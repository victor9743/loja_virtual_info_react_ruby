namespace :popular_processador do
    desc "Popular tabela processador"
    task import: :environment do
        Processador.create!(
            nome: "Intel Core i5-9600K",
            marca_id: 1,
            soquete: "LGA1151",
            velocidade: "3.7 GHz",
            preco: 800
        )

        Processador.create!(
            nome: "AMD Ryzen 7 3700X",
            marca_id: 2,
            soquete: "AM4",
            velocidade: "3.6 GHz",
            preco: 1200
        )

        Processador.create!(
            nome: "Intel Core i9-10900K",
            marca_id: 1,
            soquete: "LGA1200",
            velocidade: "3.7 GHz",
            preco: 1500
        )

        Processador.create!(
            nome: "AMD Ryzen 5 3600",
            marca_id: 2,
            soquete: "AM4",
            velocidade: "3.6 GHz",
            preco: 1000
        )

        Processador.create!(
            nome: "Intel Core i7-10700K",
            marca_id: 1,
            soquete: "LGA1200",
            velocidade: "3.8 GHz",
            preco: 1000
        )
        
    end
end
