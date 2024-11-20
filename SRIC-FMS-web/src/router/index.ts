import { createRouter, createWebHistory, RouteRecordRaw } from 'vue-router'

const routes: Array<RouteRecordRaw> = [
  {
    path: '/',
    name: 'main',
    redirect: '/home',
  },
  {
    path: '/home',
    name: 'home',
    component: () => import('@/views/HomePage.vue'),
  },
  {
    path: '/Hfiles',
    name: 'Hfiles',
    redirect: '/HfilesVideo',
    component: () => import('@/views/H-files/H-files-index.vue'),
    children:
    [
      {
        path: '/HfilesVideo',
        name: 'HfilesVideo',
        component: () => import('@/views/H-files/HfilesVideo.vue'),
      },
      {
        path: '/HfilesComic',
        name: 'HfilesComic',
        component: () => import('@/views/H-files/HfilesComic.vue'),
      },
      {
        path: '/HfilesPicture',
        name: 'HfilesPicture',
        component: () => import('@/views/H-files/HfilesPicture.vue'),
      },
    ]
  },
  {
    path: '/HfilesVideoPlayer',
    name: 'HfilesVideoPlayer',
    component: () => import('@/views/H-files/HfilesVideoPlayer.vue'),
  },
  {
    path: '/HfilesComicReader',
    name: 'HfilesComicReader',
    component: () => import('@/views/H-files/HfilesComicReader.vue'),
  },
  {
    path: '/SignIn',
    name: 'SignIn',
    component: () => import('@/views/user/SignIn.vue'),
  },
  {
    path: '/SignUp',
    name: 'SignUp',
    component: () => import('@/views/user/SignUp.vue'),
  },
  {
    path: '/UserProfile',
    name: 'UserProfile',
    component: () => import('@/views/user/UserProfile.vue'),
  },
  {
    path: '/Manage',
    name: 'Manage',
    redirect: '/Usermanage',
    component: () => import('@/views/manage/ManageIndex.vue'),
    children:
    [
      {
        path: '/UserManage',
        name: 'UserManage',
        component: () => import('@/views/manage/UserManage.vue'),
      },
      {
        path: '/PermissionRequestManage',
        name: 'PermissionRequestManage',
        component: () => import('@/views/manage/PermissionRequestManage.vue'),
      },
      {
        path: '/PermissionMainMenuManage',
        name: 'PermissionMainMenuManage',
        component: () => import('@/views/manage/PermissionMainMenuManage.vue')
      },
    ]
  },
]

const router = createRouter({
  history: createWebHistory(process.env.BASE_URL),
  routes
})

export default router
