# WarnMe
### A Social Disaster Relief App

* This app is divided into PWA offline demo and Rails online demo

### [Live](https://warnme.sora.asia/)

### Installation for PWA demo

#### `Step 1` - clone the repo
  
#### `Step 2` - cd in the repo

```bash
$ cd warnme
```

#### `Step 3` - install dependencies

```bash
$ npm install
```

#### `Step 4` - run application

```bash
$ npm run start
```

In browser, open [http://localhost:3000](http://localhost:3000)


------

## Main Features

- [x] - App Shell Architecture

- [x] - Service Worker + [Navigation Preload](https://mattto.github.io/sw/demo/navigation-preload/) ([Origin Trial](https://docs.google.com/forms/d/e/1FAIpQLSfO0_ptFl8r8G0UFhT0xhV17eabG-erUWBDiKSRDTqEZ_9ULQ/viewform?fbzx=-8349956695398695000))

- [x] - Add to Home Screen, Splash Screen, Browser Mode, Notify user if site is updated etc,

- [x] - Offline Support

- [x] - Online/Offline Events

- [x] - Fetch API

- [x] - Push Notifications

- [x] - Background Sync



### References

- [Google Developer Site](https://developers.google.com/web/progressive-web-apps)

- [Web Share API](https://developers.google.com/web/updates/2016/10/navigator-share)

- [Navigation Preload](https://developers.google.com/web/updates/2017/02/navigation-preload)

- [Awesome Meta and Manifest](https://github.com/gokulkrishh/awesome-meta-and-manifest)




# Info

- It should help people understand the different kinds of preparedness for each disaster. What are the main threats for each? 
- For example, in an impending storm, people tend to think about the wind, but it’s often the storm surge or flooding that hold the potential for greatest harm; when a volcano erupts, it’s not just the lava. It’s the ash that falls, and the noxious gases in the air, too.

- Help people know whether they are likely to need a go-bag for evacuating, or a kit and plan for sheltering in place, and what should go in each. 
- Help them figure out what order to do things in. Illustrate and explain each disaster type with one or more NASA images, videos, or data visualizations, so that people genuinely understand what they are preparing for. 
- It still can be used when the internet goes down. 
- You might have it prompt people to think about their own special-need items and things they might be forgetting – and have it warn them if their virtual go-bag gets too heavy to carry!


# Gems Added

- Devise + Authtrail? rails generate devise:views rails g devise User devise.rb via get
- Simple Form  rails generate simple_form:install --bootstrap
- Active storage rails active_storage:install + direct_upload.js copy
- Font Awesome
- Bootstrap 4.1.3
- Toaster
- Slim Rails
- Authtrail?
- geocoder
- gmaps4rails
- login activities


# Localization
- add into application.rb and application_controller.rb and scope in routes

# Incident types
- shelter
- battle
- typhoon
- flooding
- volcano
- tsunami
- tornado 
- heatwave
- earthquake
- supplies
- landslide
- forest_fire
- 


#### License

MIT © [Gokulakrishnan](https://github.com/gokulkrishh)

<div align="center">
  <sub>If you found a bug or some improvments, feel free to raise an issue and send a PR!</sub>
</div>
