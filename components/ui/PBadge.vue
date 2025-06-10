<template>
  <div
    class="shine-badge relative inline-flex items-center gap-2 overflow-hidden rounded-full bg-gray-200 px-3 py-1 text-sm font-medium text-gray-800"
  >
    <PIcone v-if="props.icon" :name="props.icon" width="16" height="16" color="currentColor" />
    <span>{{ props.text }}</span>
  </div>
</template>

<script lang="ts" setup>
import PIcone from './PIcone.vue'
/**
 * PBadgeProps interface defines the properties for the PBadge component.
 * It includes the text and icon to be displayed.
 * @interface PBadgeProps
 * @property {string} text - The text to be displayed in the badge.
 * @property {string} [icon] - The optional icon to be displayed alongside the text.
 */
type PBadgeProps = {
  text: string
  icon?: string
}

/**
 * Props definition with strict typing.
 * @constant {FlapiIconProps}
 */
const props: PBadgeProps = defineProps({
  text: {
    type: String,
    required: true,
  },
  icon: {
    type: String,
  },
})
</script>

<style scoped>
/* 1. on définit les keyframes de l’effet « shine » */
@keyframes badge-shine {
  0% {
    transform: translateX(-100%);
  }
  100% {
    transform: translateX(100%);
  }
}

/* 2. on attache un ::after qui va se déplacer */
.shine-badge::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%; /* largeur du reflet */
  height: 100%;
  background: linear-gradient(120deg, transparent 0%, rgba(255, 255, 255, 0.5) 50%, transparent 100%);
  transform: translateX(-100%);
  animation: badge-shine 4s ease-in-out infinite;
}
</style>
