import fs from 'node:fs';
import path from 'node:path';

const directoryPath = './'; // Utilisation du chemin par défaut "./"
let variablesToChange = null;

// Vérifie si des arguments ont été fournis
if (process.argv.length > 2) {
  // Si oui, récupère les noms des variables SCSS à changer
  variablesToChange = process.argv.slice(2);
}

async function replaceVariablesInFile(filePath, variables) {
  try {
    let data = await fs.promises.readFile(filePath, 'utf8');

    // Effectuez le remplacement des variables SCSS par des variables CSS
    data = data.replaceAll(/\$([\w-]+)\s*:/g, (match, p1) => {
      if (!variables || variables.includes(p1.trim())) {
        return `--${p1.trim()}:`;
      }
      return match;
    });

    // Remplacez les variables SCSS utilisées dans le contenu
    data = data.replaceAll(/\$([\w-]+)\b/g, (match, p1) => {
      if (!variables || variables.includes(p1.trim())) {
        return `var(--${p1.trim()})`;
      }
      return match;
    });

    // Écrivez le contenu modifié dans le fichier
    await fs.promises.writeFile(filePath, data, 'utf8');
    console.log(`✅ Les variables SCSS dans le fichier ${filePath} ont été remplacées avec succès.`);
  } catch (error) {
    console.error(`❌ Erreur lors de la manipulation du fichier ${filePath}: ${error}`);
  }
}

async function traverseDirectory(dirPath, variables) {
  try {
    const files = await fs.promises.readdir(dirPath);

    for (const file of files) {
      const filePath = path.join(dirPath, file);
      const stats = await fs.promises.stat(filePath);

      if (stats.isDirectory()) {
        if (file !== 'node_modules' && file !== 'vendor' && file !== 'bundle') {
          // Si c'est un répertoire autre que node_modules et vendor/bundle, appelez récursivement traverseDirectory
          await traverseDirectory(filePath, variables);
        }
      } else if (path.extname(filePath) === '.scss') {
        // Si c'est un fichier .scss, appelez replaceVariablesInFile avec les variables à changer en argument
        await replaceVariablesInFile(filePath, variables);
      }
    }
  } catch (error) {
    console.error(`❌ Erreur lors de la lecture du répertoire ${dirPath}: ${error}`);
  }
}

// Appel de la fonction traverseDirectory avec le chemin racine du projet et les variables à changer en argument
traverseDirectory(directoryPath, variablesToChange);
