# claude-config

Claude, l'assistant, arrive vierge. Sans caractère, sans habitudes, sans mémoire de qui tu es.
Ce dossier est tout ce qu'on lui a appris pour qu'il devienne un collaborateur plutôt qu'un
inconnu poli. C'est une personnalité, un ensemble de règles et de réflexes, posés noir sur blanc
et rangés au même endroit pour ne jamais avoir à les réexpliquer.

Cette version est nettoyée de toute donnée personnelle. C'est le squelette : à toi d'y mettre ta
propre chair. Ce texte raconte ce qu'il y a dedans, ce que chaque morceau fait, et comment le
rendre tien.

## Ce qu'on a mis dedans

Au coeur, il y a le fichier qui donne son tempérament à Claude. Il décrit comment il doit se
comporter : direct ou prudent, bavard ou sec, quelles habitudes prendre, quelles fautes ne jamais
commettre. C'est la différence entre un assistant générique et un qui te connaît. Deux fichiers
compagnons s'y greffent automatiquement : l'un précise sa façon de travailler avec toi au
quotidien, l'autre la manière dont il rédige quand un texte est destiné à d'autres yeux que les
tiens, un message, un mot d'excuse, une note laissée à quelqu'un.

Ensuite viennent les réglages. Pense à un tableau de bord : quel modèle utiliser, quelles
extensions activer, quels petits automatismes déclencher, et l'affichage discret qui te rappelle
en bas de l'écran l'heure et l'endroit où tu travailles. Rien de compliqué, juste des interrupteurs.

Il y a aussi tes raccourcis. D'un côté des combinaisons de touches que tu choisis toi-même. De
l'autre, des commandes que tu inventes : tu tapes un mot court, et Claude exécute toute une
routine que tu as décrite une fois pour toutes. On en a laissé un exemple à recopier et à adapter.

Puis les réflexes automatiques. Ce sont de petites actions que Claude déclenche seul à certains
moments, sans que tu aies à le demander. Par exemple se rafraîchir la mémoire au démarrage, ou se
rappeler l'essentiel quand une longue conversation vient d'être résumée.

Enfin, la mémoire. C'est ce que Claude retient d'une fois sur l'autre : tes préférences, tes
projets, les leçons tirées de vos échanges passés. Ici on n'a gardé que la forme et trois exemples,
parce que le reste, c'est du personnel. La tienne se construira toute seule, au fil du temps.

## Les extensions

Trois extensions sont branchées d'office. Tu n'as rien à aller chercher : elles s'installent seules
au premier lancement.

- **ponytail** ([DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail)) : pousse Claude vers la solution la plus simple, celle qui tient en peu de lignes, jamais l'usine à gaz.
- **andrej-karpathy-skills** ([forrestchang/andrej-karpathy-skills](https://github.com/forrestchang/andrej-karpathy-skills)) : de bonnes habitudes qui lui évitent les erreurs classiques.
- **context-mode** ([mksglu/context-mode](https://github.com/mksglu/context-mode)) : lui fait traiter les gros paquets d'information à l'écart, ce qui économise de la matière et donc de l'argent.

Un quatrième outil est mentionné dans les réglages, **rtk** ([rtk-ai/rtk](https://github.com/rtk-ai/rtk)),
pour Rust Token Killer. Il se place entre Claude et les commandes qu'il lance, et les réécrit en plus
court avant de les exécuter. Le résultat est le même mais tient en moins de mots, ce qui économise de
la matière et donc de l'argent. Ce n'est pas une extension mais un programme à part. Si tu ne l'as
pas, tout le reste fonctionne quand même, il suffit de retirer la ligne qui l'appelle.

## Le rendre tien

Tout ce qui est écrit entre chevrons, comme `<USERNAME>` ou `<PROJECT>`, est un trou à combler.
On a vidé ces cases exprès pour qu'aucune de nos informations ne traîne ici. Parcours les fichiers,
remplace chaque trou par ta propre valeur : ton nom sur la machine, l'adresse de tes serveurs si tu
en as, tes projets. Là où on avait décrit notre installation, efface et raconte la tienne, ou
laisse vide si tu n'en as pas.

Une fois les cases remplies, un petit script recopie l'ensemble à l'endroit où Claude va le lire.
À partir de là, il démarre avec ton caractère, tes règles et tes réflexes déjà en place.

## Un mot sur la prudence

Ce dossier est public. Il ne doit jamais contenir de secret : ni mot de passe, ni clé, ni adresse
privée, ni jeton d'accès. Ces choses-là vivent dans un dossier fermé, séparé. Les trous entre
chevrons sont là précisément pour ça : garder la forme, laisser le contenu sensible dehors.
