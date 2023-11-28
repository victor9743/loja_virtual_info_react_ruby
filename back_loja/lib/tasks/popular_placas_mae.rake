namespace :popular_placas_mae do
    desc "Popular tabela placa-mãe"
    task import: :environment do
        PlacasMae.create!(
            nome: "ASUS Prime Z390-A",
            marca: "ASUS",
            soquete: "LGA1151",
            compatibilidade_id: 1,
            capacidade_mem_max: 64,
            preco: 900
        )

        PlacasMae.create!(
            nome: "MSI B450 TOMAHAWK",
            marca: "MSI",
            soquete: "AM4",
            compatibilidade_id: 2,
            capacidade_mem_max: 64,
            preco: 700
        )

        PlacasMae.create!(
            nome: "Gigabyte Aorus X570 Elite",
            marca: "Gigabyte",
            soquete: "AM4",
            compatibilidade_id: 2,
            capacidade_mem_max: 128,
            preco: 1200
        )

        PlacasMae.create!(
            nome: "ASRock B550 Steel Legend",
            marca: "ASRock",
            soquete: "AM4",
            compatibilidade_id: 2,
            capacidade_mem_max: 128,
            preco: 800
        )

        PlacasMae.create!(
            nome: "ASUS ROG Strix Z490-E",
            marca: "ASUS",
            soquete: "LGA1200",
            compatibilidade_id: 1,
            capacidade_mem_max: 128,
            preco: 1100
        )
    end
end
