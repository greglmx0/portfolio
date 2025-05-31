<template>
  <div class="inline-flex items-center gap-2 rounded-full bg-gray-200 px-3 py-1 text-sm font-medium text-gray-800">
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
