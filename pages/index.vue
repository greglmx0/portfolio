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
          <div class="mb-2 flex w-full flex-wrap justify-center gap-2">
            <PBadge v-for="skill in techSkills" :key="skill.name" :text="skill.name" :icon="skill.icon" />
          </div>
          <section class="mt-4">
            <h2 class="font-semibold text-gray-700">Langues</h2>
            <ul class="ml-5 mt-1 list-disc text-gray-600">
              <li>Français (natif)</li>
              <li>Anglais</li>
            </ul>
          </section>
          <section class="mt-4">
            <h2 class="font-semibold text-gray-700">Centres d’intérêt</h2>
            <ul class="ml-5 mt-1 list-disc text-gray-600">
              <li>Programmation</li>
              <li>Vélo</li>
              <li>Cuisine</li>
              <li>Musique (Guitare débutant)</li>
            </ul>
          </section>
        </aside>
      </CvCard>

      <CvCard class="col-span-2">
        <h2 class="mb-6 text-xl font-bold text-gray-800">Expériences professionnelles</h2>
        <PTimeline
          date="Janvier 2023 - Août 2025 (Alternance 2 ans)"
          title="Eiffage Énergie Systèmes (AIIS) | Cesson-Sévigné"
        >
          <ul class="ml-5 mt-1 list-disc text-gray-600">
            <li>Développement de plateformes Smart City : APIs (NestJS), interfaces utilisateur (Vue.js).</li>
            <li>Supervision temps réel de capteurs LoRa, documentation et accompagnement utilisateurs.</li>
            <li>Création de pipelines avec Apache NiFi pour ingestion et normalisation de données.</li>
            <li>Environnement : IoT (LoRa, MQTT), ETL (NiFi), backend (NestJS), frontend (Vue.js), SQL/NoSQL.</li>
            <li>Secteurs : Smart City, transition énergétique, interopérabilité des systèmes.</li>
          </ul>
        </PTimeline>
        <PTimeline date="Sept 2021 - Sept 2022" title="Interroll | Saint-Pol-de-Léon (29250)">
          <p>Programme de détection de pannes (Python & C#).</p>
        </PTimeline>
      </CvCard>
      <CvCard class="col-span-2">
        <h2 class="mb-6 text-xl font-bold text-gray-800">Formation</h2>

        <PTimeline
          date="2022 - 2025"
          title="Titre RNCP niveau 7 « Architecte Logiciels & Développeur d’Applications » (Epitech Rennes, MSc IoT)"
        >
          <p class="ml-2 text-gray-600">
            Conception de systèmes connectés, gestion temps réel, LoRaWAN, architectures embarquées.
          </p>
          <ul class="ml-5 mt-2 list-disc text-gray-600">
            <li>Project Data Immobilier : analyse & visualisation de données environnementales.</li>
            <li>CMS personnalisé (Nuxt.js, Adonis.js, SQL).</li>
            <li>App de trajectographie (Python Flask, Angular).</li>
          </ul>
        </PTimeline>

        <PTimeline
          date="2021 - 2022"
          title="Licence pro Ingénierie des Systèmes Automatisés & Robotique (ISAR) – IUT Rennes"
        >
          <p class="ml-2 text-gray-600">
            Programmation industrie : ST, Grafcet, Ladder. Logiciels : Tia Portal, Unity XLS.
          </p>
        </PTimeline>

        <PTimeline
          date="2019 - 2021"
          title="BTS CRSA (Conception & Réalisation de Systèmes Automatiques) – Lycée Saint-Nicolas, Paris 6"
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
