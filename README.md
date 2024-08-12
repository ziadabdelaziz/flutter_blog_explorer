# Flutter Blog Explorer

## Architecture

### Requirements
1. **Blog List View:** each blog has title and image
2. **Blog Details Screen**
3. **Navigation**
4. **Favorite**
5. **Utilize Bloc**
6. **Error Handling:** handle API unavailable or return error by displaying a friendly error message to the user.
7. **UI/UX Design**
8. **Offline Mode:** storing blogs on the device with SQLite.

### Models
**Blog:**
1. id
2. title
3. image_url
4. isFavorite

### Data Provider
1. BlogsAPI
* fetchBlogs

2. BlogsCache
* getAllBlogs
* getFavoriteBlogs
* saveBlogs
* toggleFavorite
* isFavorite
* hasBlogs

### Repository
1. BlogsRepository
* getBlogs
* toggleFavorite

### Business Logic
1. BlogsBloc

**States:**
* BlogsLoadingState
* BlogsReadyState
* BlogsErrorState

**Events:**
* LoadBlogs
* ToggleFavoriteBlog

### Screens
1. Blogs List
2. Blog Details
3. Favorite Blogs
