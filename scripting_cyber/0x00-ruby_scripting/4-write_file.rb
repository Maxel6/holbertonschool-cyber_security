require 'json'

def merge_json_files(file1_path, file2_path)
  begin
    # Lire les fichiers JSON
    file1_content = File.exist?(file1_path) ? File.read(file1_path) : '[]'
    file2_content = File.exist?(file2_path) ? File.read(file2_path) : '[]'

    # Parser les contenus JSON
    json1 = JSON.parse(file1_content)
    json2 = JSON.parse(file2_content)

    # Vérifier que les deux contenus sont des tableaux
    unless json1.is_a?(Array) && json2.is_a?(Array)
      raise "Les fichiers JSON doivent contenir des tableaux pour être fusionnés."
    end

    # Fusionner les deux tableaux
    merged_json = json2 + json1

    # Écrire le résultat dans file2_path
    File.write(file2_path, JSON.pretty_generate(merged_json))
    puts "Fichiers fusionnés avec succès dans #{file2_path}."

  rescue Errno::ENOENT
    puts "Erreur : L'un des fichiers est introuvable."
  rescue JSON::ParserError
    puts "Erreur : L'un des fichiers contient un JSON non valide."
  rescue StandardError => e
    puts "Erreur : #{e.message}"
  end
end
