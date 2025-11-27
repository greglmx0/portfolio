<template>
  <div class="grid auto-rows-fr grid-cols-1 gap-4 p-4 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
    <CvCard
      v-if="gifts"
      v-for="gift in gifts.gifts"
      :key="gift.id"
      class="p-4 shadow-lg transition-transform hover:scale-105 hover:shadow-2xl"
    >
      <a :href="gift.url" target="_blank" class="flex h-full flex-1 flex-col items-center justify-between">
        <h2 class="mb-2 text-xl font-bold">{{ gift.name }}</h2>
        <p class="mb-2">{{ gift.description }}</p>
        <div v-if="gift.urlImage" class="mt-2 flex justify-center">
          <img :src="gift.urlImage" :alt="gift.name" class="max-w-xs rounded" />
        </div>
        <div class="mt-4 flex w-full items-center justify-between self-end">
          <div v-if="gift.category" class="mt-2 flex flex-wrap justify-center gap-2">
            <span
              v-for="cat in gift.category"
              :key="cat"
              class="rounded-full bg-blue-200 px-3 py-1 text-sm font-semibold text-blue-800"
            >
              {{ cat }}
            </span>
          </div>
          <div class="mt-2">{{ gift.price }} €</div>
        </div>
      </a>
    </CvCard>
  </div>
</template>

<script setup lang="ts">
import CvCard from '~/components/CvCard.vue'
import gifts from '~/public/cadeaux/liste.json'

// /**
//  * Type definition for a gift item
//  * @typedef {Object} Gift
//  * @property {number} id - The unique identifier for the gift
//  * @property {string} name - The name of the gift
//  * @property {string} description - A brief description of the gift
//  * @property {number} price - The price of the gift
//  * @property {string} url - The URL where the gift can be purchased
//  * @property {string} [urlImage] - An optional URL for an image of the
//  * @property {string[]} [category] - An optional array of categories the gift belongs to
//  */
// type Gift = {
//   id: number
//   name: string
//   description: string
//   price: number
//   url: string
//   urlImage?: string
//   category?: string[]
// }
</script>
