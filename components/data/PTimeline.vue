<template>
  <div>
    <div class="relative border-l-2 border-gray-400 border-opacity-50 pb-6">
      <span
        class="absolute -left-[5px] flex h-2 w-2 items-center justify-center rounded-full bg-gray-400 ring-1 ring-gray-400"
      >
        <PIcone v-if="props.icon" :name="props.icon" class="h-5 w-5 text-gray-600" />
      </span>
      <time class="ml-4 block text-sm font-normal leading-none text-gray-400 dark:text-gray-500">
        {{ props.date }}
      </time>
      <div class="ml-4 mt-2 flex flex-col gap-2">
        <h3 class="text-lg font-semibold text-gray-600">
          {{ props.title }}
        </h3>

        <p class="ml-2 text-gray-600">
          <slot />
        </p>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
import PIcone from '../ui/PIcone.vue'

/**
 * TimelineEventProps interface defines the structure of each event in the timeline.
 * It includes the date, title, content, and an optional icon component.
 * @interface TimelineEventProps
 * @property {string} date - The date of the event.
 * @property {string} title - The title of the event.
 * @property {string} content - The content or description of the event.
 * @property {Component} [icon] - An optional Vue component to be used as an icon for the event.
 */
export type TimelineEventProps = {
  date: string
  title: string
  type?: 'default' | 'end' | 'start'
  icon?: string
}

const props: TimelineEventProps = defineProps({
  date: {
    type: String,
    required: true,
  },
  title: {
    type: String,
    required: true,
  },
  type: {
    type: String as () => 'default' | 'end' | 'start',
    /**
     * @param value - The type of the timeline event.
     * Valid values are 'default', 'end', or 'start'.
     * This property determines the styling of the event.
     * @returns {boolean} - Returns true if the value is valid, otherwise false.
     * @example
     * // Valid usage
     * <PTimeline type="start" />
     * <PTimeline type="end" />
     * <PTimeline type="default" />
     */
    validator: (value: string) => ['default', 'end', 'start'].includes(value),
    required: false,
    default: 'default',
  },
  icon: {
    type: String,
    required: false,
  },
})
</script>
