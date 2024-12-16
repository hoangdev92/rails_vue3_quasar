<template>
  <div v-for="category in lists" :key="category.id + 2" class="pa-4">
    <div>{{ $t('home.title') }}</div>
    <v-card :text="category.name" :color="black" />
  </div>
</template>

<script>
import { usePage } from '@inertiajs/vue3'
export default {
  props: {
    lists: {
      type: Array,
      required: true
    },
  },
  setup(props) {
    // console.log(props)
    return {
      // lists: lists
    }
  }
}
</script>
