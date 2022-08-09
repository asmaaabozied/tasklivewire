import "bootstrap/dist/css/bootstrap.css"
import { createApp} from 'vue'
import App from './App.vue'

import "bootstrap/dist/js/bootstrap.js"
/* import Aos from "aos"
 */import "aos/dist/aos.css"

import router from "./router/routes"

/* import the fontawesome core */
import { library } from '@fortawesome/fontawesome-svg-core'
/* import font awesome icon component */
import { FontAwesomeIcon } from '@fortawesome/vue-fontawesome'

/* import specific icons */
import { faInfoCircle,faAngleDoubleRight,faSignOutAlt,faUser, faLock,faAt,faDownload,faTicketAlt,faTachometerAlt,faUserFriends,faStore,faMapMarkerAlt,faLink,faPhone,faShoppingCart } from '@fortawesome/free-solid-svg-icons'

import i18n from './i18n'
/* add icons to the library */
library.add(
    faInfoCircle,
    faUser,
    faLock,
    faAt,
    faUserFriends,
    faMapMarkerAlt,
    faDownload,
    faTicketAlt,
    faTachometerAlt,
    faStore,
    faLink,
    faPhone,
    faShoppingCart,
    faSignOutAlt,
    faAngleDoubleRight
);


createApp(App).use(i18n).use(router).component('font-awesome-icon', FontAwesomeIcon).mount("#app");