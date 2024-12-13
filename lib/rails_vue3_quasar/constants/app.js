import { createApp, h } from "vue";
import { createInertiaApp, Head, Link } from "@inertiajs/vue3";
import { vuetifyPlugin } from "./vuetify";
import { resolvePage } from "./pages";
// Pinia
import { createPinia } from 'pinia'
// mitt
import mitt from 'mitt'
import jQuery from "jquery";

import { Quasar, Notify, LocalStorage } from 'quasar';
import '@quasar/extras/material-icons/material-icons.css'
// Import Quasar css
import 'quasar/src/css/index.sass'
import { i18n } from "./i18n";

export default function () {
  createInertiaApp({
    resolve: resolvePage,
    progress: {
      // The delay after which the progress bar will appear, in milliseconds...
      delay: 50,

      // The color of the progress bar...
        color: "#c62828",

      // Whether to include the default NProgress styles...
      includeCSS: true,

      // Whether the NProgress spinner will be shown...
      showSpinner: true,
    },
    setup({ el, App, props, plugin }) {
      // Create emitter

      window.emitter = mitt()
      const app = createApp({ render: () => h(App, props) });
      app.use(plugin);
      app.use(vuetifyPlugin);
      app.use(Quasar, {
        plugins: [
          Notify,
          LocalStorage,
        ],
      });
      app.use(jQuery);
      app.use(i18n);
     
      const pinia = createPinia()

      app.component("iHead", Head);
      app.component("iLink", Link);

      app.use(pinia).mount(el);
    },
  });
}
