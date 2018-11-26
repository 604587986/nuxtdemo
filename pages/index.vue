<template>
  <section class="container">
    <div>
      <logo/>
      <h1 class="title">
      </h1>
      <h2 class="subtitle">
        我的第一个nuxt项目,测试一下1
      </h2>
        <ul>
          <li v-for="item in list" :key="item.ID" @click="alert(item.NAME)">{{item.NAME}}</li>
        </ul>

    </div>
  </section>
</template>

<script>
import Logo from '~/components/Logo.vue'
import axios from 'axios'
export default {
  async asyncData({params}){
    let {data} = await axios.get('http://210.33.125.36/szcp/authentication/getSchoolList?pindex=1&size=1000');
    return {
      list:data.data.list
    }

  },
  methods:{
    alert(a){
      alert(a)
    }
  },
  components: {
    Logo
  }
}
</script>

<style>

.container {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.title {
  font-family: 'Quicksand', 'Source Sans Pro', -apple-system, BlinkMacSystemFont,
    'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  display: block;
  font-weight: 300;
  font-size: 100px;
  color: #35495e;
  letter-spacing: 1px;
}

.subtitle {
  font-weight: 300;
  font-size: 42px;
  color: #526488;
  word-spacing: 5px;
  padding-bottom: 15px;
}

.links {
  padding-top: 15px;
}
</style>
