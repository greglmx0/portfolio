<template>
  <main
    class="h-full min-h-screen items-center overflow-hidden bg-[url('/img/background.jpg')] bg-cover bg-center bg-no-repeat"
  >
    <div class="mx-auto grid min-h-screen max-w-5xl gap-4 p-4">
      <div class="col-span-2 md:col-span-1">
        <CvCard>
          <div class="flex-1">
            <div class="flex flex-col items-center gap-4 sm:flex-row">
              <embed
                src="/img/moi-bierre.JPEG"
                alt="Grégoire Lamoureux"
                class="mb-4 h-32 w-32 rounded-lg object-cover md:mb-0 md:mr-6"
              />
              <div class="flex flex-col items-center md:items-start">
                <h1 class="text-3xl font-bold text-gray-800">Grégoire Lamoureux</h1>
                <h2 class="mt-1 text-xl font-semibold text-gray-700">{{ displayedJobTitle }}</h2>
                <p class="mt-1 text-gray-600">23 ans - Permis B - véhiculé</p>
                <p class="mt-1 text-gray-600">Rennes et alentours</p>
              </div>
            </div>
            <p class="mt-1 text-gray-600"></p>
            <PIcone name="material-symbols:mail-outline-rounded" class="mt-4">
              <p class="gap-4 text-sm text-gray-600">
                <span>
                  <a href="mailto:gregoirelamoureux@gmail.com" class="text-blue-700"
                    >gregoirelamoureux@gmail.com</a
                  ></span
                >
              </p>
            </PIcone>
            <PIcone name="mdi-light:phone" class="mt-4">
              <p class="text gap-4">
                <span>
                  <a href="tel:0632246449" class="text-700">06 32 24 64 49</a>
                </span>
              </p>
            </PIcone>
            <PIcone name="mdi:github" class="mt-4">
              <p class="gap-4 text-sm text-gray-600">
                <span> <a target="_blank" href="https://github.com/greglmx0" class="text-blue-700">greglmx0</a></span>
              </p>
            </PIcone>
            <PIcone name="skill-icons:linkedin" class="mt-4">
              <p class="gap-4 text-sm text-gray-600">
                <span>
                  <a target="_blank" href="https://www.linkedin.com/in/gregoire-lamoureux" class="text-blue-700"
                    >Grégoire Lamoureux</a
                  ></span
                >
              </p>
            </PIcone>
            <!-- <p class="mt-2 flex flex-wrap gap-4 text-sm text-gray-600">
              <span><strong>Tél :</strong> 06 32 24 64 49</span>
            </p>
            <p class="mt-2 flex flex-wrap gap-4 text-sm text-gray-600">
              <span><strong>Github :</strong> <span class="font-mono">greglmx0</span></span>
            </p> -->
          </div>
        </CvCard>
        <CvCard class="mt-4">
          <section>
            <h2 class="text-xl font-bold text-gray-800">Qualités personnelles</h2>
            <ul class="ml-5 mt-1 list-disc text-gray-600">
              <li>Motivé</li>
              <li>Curieux</li>
              <li>Autonome</li>
              <li>Passionné par la création d'applis web modernes et évolutives</li>
              <li>Bon relationnel</li>
            </ul>
          </section>
        </CvCard>
      </div>
      <CvCard class="col-span-2 md:col-span-1">
        <aside class="w-full md:max-w-sm">
          <h2 class="mb-2 font-semibold text-gray-700">Compétences techniques</h2>
          <div class="mt-4 flex flex-wrap gap-2">
            <PBadge v-for="skill in techSkills" :key="skill.name" :text="skill.name" :icon="skill.icon" />
          </div>

          <section class="mt-4">
            <h2 class="font-semibold text-gray-700">Langues</h2>
            <div class="mt-4 flex flex-wrap gap-2">
              <PBadge text="Français (natif)" color="gray" />
              <PBadge text="Anglais" color="gray" />
            </div>
          </section>

          <section class="mt-4">
            <h2 class="font-semibold text-gray-700">Centres d’intérêt</h2>
            <div class="mt-4 flex flex-wrap gap-2">
              <PBadge text="Programmation" color="gray" icon="mdi:code-json" />
              <PBadge text="Vélo" color="gray" icon="material-symbols:directions-bike" />
              <PBadge text="Cuisine" color="gray" icon="mdi:food" />
              <PBadge text="Musique" color="gray" icon="mdi:music" />
              <PBadge text="Voyages" color="gray" icon="mdi:airplane" />
            </div>
          </section>
        </aside>
      </CvCard>

      <CvCard class="col-span-2">
        <h2 class="mb-6 text-xl font-bold text-gray-800">Expériences professionnelles</h2>
        <PTimeline
          date="Janvier 2023 - Août 2025 (32 mois en alternance)"
          title="Développeur Fullstack IoT | Eiffage Énergie Systèmes - AIIS"
          subtitle="Cesson-Sévigné | Smart City & Solutions Connectées"
        >
          <p class="mb-2 text-gray-600">
            Alternance au sein de l'équipe AIIS (Architecture, Innovation, Ingénierie et Systèmes) dédiée aux solutions
            Smart City. Participation active au développement de plateformes IoT pour la gestion intelligente des
            infrastructures urbaines.
          </p>
          <h4 class="mt-4 font-semibold text-gray-800">Missions principales :</h4>
          <ul class="ml-5 mt-2 list-disc text-gray-600">
            <li>
              <strong>Développement de plateformes Smart City</strong> : Conception d'APIs robustes (NestJS) et
              d'interfaces utilisateur intuitives (Vue.js) pour la supervision d'infrastructures urbaines connectées.
            </li>
            <li>
              <strong>Gestion de l'écosystème IoT</strong> : Supervision temps réel de capteurs LoRa, traitement des
              flux MQTT et garantie de l'interopérabilité des systèmes.
            </li>
            <li>
              <strong>Ingénierie des données</strong> : Création et optimisation de pipelines d'ingestion (Apache NiFi)
              pour la normalisation et la valorisation des données multi-sources.
            </li>
            <li>
              <strong>Accompagnement technique</strong> : Rédaction de documentation et formation des utilisateurs.
            </li>
            <li>
              <strong>Veille et innovation</strong> : Participation active à la R&D sur les technologies Smart City et
              transition énergétique.
            </li>
          </ul>

          <h4 class="mt-4 font-semibold text-gray-800">Réalisations clés :</h4>
          <ul class="ml-5 mt-2 list-disc text-gray-600">
            <li>Déploiement d'une solution complète de monitoring urbain intégrant 2000+ capteurs LoRa</li>
            <li>
              Contribution à des projets majeurs avec des partenaires publics et privés (collectivités, industriels)
            </li>
          </ul>
        </PTimeline>
        <PTimeline
          date="Septembre 2021 - Septembre 2022 (Alternance 1 an)"
          title="Interroll | Saint-Pol-de-Léon (29250)"
        >
          <p>Programme de détection de pannes (Python et C#) pour des cartes de contrôle de convoyeurs.</p>
          <ul class="ml-5 mt-1 list-disc text-gray-600">
            <li>Analyse des données de fonctionnement des cartes.</li>
            <li>Développement d'un programme de détection de pannes.</li>
            <li>Tests et validation du programme sur les cartes de contrôle.</li>
          </ul>
        </PTimeline>
      </CvCard>
      <CvCard class="col-span-2">
        <h2 class="mb-6 text-xl font-bold text-gray-800">Formation</h2>

        <PTimeline
          date="Septembre 2022 - Aout 2025 (Alternance 3 ans)"
          title="Master of Science IoT - Architecte Logiciel & Développeur d'Applications"
          subtitle="Epitech Rennes | RNCP Niveau 7 (Bac+5)"
        >
          <p class="ml-2 text-gray-600">
            Formation spécialisationn en systèmes connectés (IoT) et traitement de données, avec une pédagogie par
            projets et une approche professionnelle en alternance.
          </p>
          <p class="ml-2 mt-2 text-gray-600">
            Compétences clés : Conception de systèmes embarqués, gestion temps réel, protocoles IoT (LoRaWAN),
            architectures distribuées, analyse de données.
          </p>
          <ul class="ml-5 mt-2 list-disc text-gray-600">
            <li>
              <strong>Projet Data Immobilier</strong> : Analyse et visualisation de données environnementales pour le
              secteur immobilier.
            </li>
            <li>
              <strong>Développement d'un CMS</strong> : Solution complète avec Nuxt.js (frontend), Adonis.js (backend)
              et base de données SQL.
            </li>
            <li>
              <strong>Application de trajectographie</strong> : Solution complète avec :
              <ul class="ml-5 mt-1 list-disc">
                <li>Backend en Python (Flask)</li>
                <li>Frontend en Angular</li>
                <li>Cartographie interactive avec points d'intérêt</li>
                <li>Filtrage par type d'activité</li>
                <li>Calcul d'itinéraires multimodaux (voiture, vélo, piéton)</li>
              </ul>
            </li>
            <li>
              <strong>Projet de fin d'études</strong> : Projet d'envergure sur 18 mois incluant analyse des besoins,
              design, développement et travail en équipe.
            </li>
          </ul>
          <!-- <p class="ml-2 mt-3 text-sm text-gray-500">
            <em
              >Formation en alternance avec certification professionnelle RNCP Niveau 7 (Bac+5) - Titre d'Architecte de
              Systèmes d'Information (code RNCP 38114)</em
            >
          </p> -->
        </PTimeline>

        <PTimeline
          date="2023-2024"
          title="Licence Pro Mécatronique & Robotique - Parcours ISAR (Ingénierie des Systèmes Automatisés et Robotisés)"
          subtitle="IUT Rennes 1"
        >
          <p class="text-gray-600">
            Formation spécialisée en automatismes industriels et robotique, axée sur la conception de systèmes
            pluritechnologiques. Programme intensif combinant cours théoriques et mise en pratique sur plateaux
            techniques industriels.
          </p>

          <p class="mt-3 text-gray-600">
            <strong>Compétences clés :</strong> Programmation de systèmes automatisés, robotique industrielle, vision
            par ordinateur, commande et contrôle de processus, gestion de projets pluritechnologiques.
          </p>

          <p class="mt-3 text-gray-600">
            <strong>Environnement technique :</strong> Travail sur plateaux robotiques équipés de technologies
            industrielles (ABB, Siemens, Fanuc, Schneider Electric) et sur des projets de développement de systèmes
            automatisés. Utilisation de logiciels de simulation et de programmation. Usine-école Smart Production pour
            la formation aux technologies de l'usine du futur.
          </p>
        </PTimeline>

        <PTimeline
          date="2019 - 2021"
          title="BTS CRSA (Conception & Réalisation de Systèmes Automatiques)"
          subtitle="Lycée Saint-Nicolas, Paris 6"
        >
          <p class="ml-2 text-gray-600">Formation généraliste en automatisme et robotique industrielle.</p>
        </PTimeline>
      </CvCard>
    </div>
  </main>
</template>

<script setup lang="ts">
import CvCard from '~/components/CvCard.vue'
import PIcone from '~/components/ui/PIcone.vue'
import PBadge from '~/components/ui/PBadge.vue'
import PTimeline from '~/components/data/PTimeline.vue'

const techSkills: {
  name: string
  icon: string
}[] = [
  { name: 'Développement Web', icon: 'mdi:code-json' },
  // { name: 'IoT', icon: 'mdi:network' },
  { name: 'REST APIs', icon: 'mdi:webhook' },
  { name: 'Python', icon: 'mdi:language-python' },
  { name: 'Docker', icon: 'mdi:docker' },
  { name: 'HTML', icon: 'mdi:language-html5' },
  { name: 'CSS', icon: 'mdi:language-css3' },
  { name: 'Tailwind CSS', icon: 'devicon:tailwindcss' },
  { name: 'JavaScript', icon: 'mdi:language-javascript' },
  { name: 'TypeScript', icon: 'mdi:language-typescript' },
  { name: 'Vue', icon: 'devicon:vuejs' },
  { name: 'Nuxt.js', icon: 'devicon:nuxtjs' },
  { name: 'Node.js', icon: 'mdi:nodejs' },
  { name: 'Adonis.js', icon: 'devicon:adonisjs' },
  { name: 'Angular', icon: 'devicon:angularjs' },
  { name: 'NestJS', icon: 'devicon:nestjs' },
  { name: 'SQL / NoSQL', icon: 'mdi:database' },
  { name: 'Git', icon: 'mdi:git' },
  { name: 'MQTT / LoRa', icon: 'mdi:wifi' },
  { name: 'Linux', icon: 'mdi:nix' },
  { name: 'CI/CD', icon: 'mdi:circle-slice-8' },
]

const jobTitle: Ref<string> = ref('Développeur Fullstack')
const displayedJobTitle: Ref<string> = ref('D')

onMounted(() => {
  setInterval(() => {
    // display job title letter by letter
    if (displayedJobTitle.value.length < jobTitle.value.length) {
      displayedJobTitle.value += jobTitle.value[displayedJobTitle.value.length]
    }
  }, 50)
})
</script>

<style scoped>
li {
  margin-bottom: 0.3rem;
}
</style>
