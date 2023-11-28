namespace :popular_marca do
    desc "Popular tabela marca"
    task import: :environment do
        Marca.create!(
            descricao: "intel"
        )

        Marca.create!(
            descricao: "AMD"
        )
    end
end
