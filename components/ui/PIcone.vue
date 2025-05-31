<template>
  <div class="felx-row flex items-center gap-2">
    <Icon
      :name="props.name"
      :width="props.width"
      :height="props.height"
      :viewBox="props.viewBox"
      :color="props.color"
      class="inline-block"
    />
    <!-- <p>test</p> -->
    <slot />
  </div>
</template>

<script lang="ts" setup>
import type { PropType } from 'vue'

/**
 * PIconProps interface defines the properties for the PIcon component.
 * It includes the icon name, dimensions, viewBox, and color.
 * @interface PIconProps
 *  @property {string} name - The name of the icon to be displayed.
 * @property {number | string} [width=24] - The width of the icon, default is 24.
 * @property {number | string} [height=24] - The height of the icon, default is 24.
 * @property {string} [viewBox='0 0 24 24'] - The viewBox attribute for the SVG, default is '0 0 24 24'.
 * @property {string} [color='currentColor'] - The color of the icon, default is 'currentColor'.
 */
type PIconProps = {
  name: string
  width?: number | string
  height?: number | string
  viewBox?: string
  color?: string
}

/**
 * Props definition with strict typing.
 * @constant {FlapiIconProps}
 */
const props: PIconProps = defineProps({
  name: {
    type: String as PropType<string>,
    required: true,
  },
  width: {
    type: [Number, String] as PropType<number | string>,
    default: 24,
  },
  height: {
    type: [Number, String] as PropType<number | string>,
    default: 24,
  },
  viewBox: {
    type: String as PropType<string>,
    default: '0 0 24 24',
  },
  color: {
    type: String as PropType<string>,
    default: 'currentColor',
  },
})
</script>
